.class public Landroid/filterpacks/videosink/MediaEncoderFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaEncoderFilter"


# instance fields
.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/high16 v9, 0x3f800000    # 1.0f

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v7, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    .line 184
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@a
    .line 52
    const/4 v4, 0x1

    #@b
    iput-boolean v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    #@d
    .line 56
    new-instance v4, Ljava/lang/String;

    #@f
    const-string/jumbo v5, "/sdcard/MediaEncoderOut.mp4"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@15
    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    #@17
    .line 60
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    #@19
    .line 66
    const/4 v4, -0x1

    #@1a
    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    #@1c
    .line 73
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    #@1e
    .line 80
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    #@20
    .line 86
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    #@22
    .line 93
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    #@24
    .line 100
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@26
    .line 105
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    #@28
    .line 110
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    #@2a
    .line 115
    const/16 v4, 0x1e

    #@2c
    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    #@2e
    .line 121
    const/4 v4, 0x2

    #@2f
    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    #@31
    .line 127
    const/4 v4, 0x2

    #@32
    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    #@34
    .line 141
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    #@36
    .line 147
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    #@38
    .line 153
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    #@3a
    .line 163
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@3c
    .line 164
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@3e
    .line 165
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    #@40
    .line 166
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@42
    .line 169
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    #@44
    .line 185
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@46
    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@49
    .line 186
    .local v0, "bl":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    #@4b
    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@4e
    .line 187
    .local v1, "br":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    #@50
    invoke-direct {v2, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@53
    .line 188
    .local v2, "tl":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@55
    invoke-direct {v3, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@58
    .line 189
    .local v3, "tr":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    #@5a
    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@5d
    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    #@5f
    .line 190
    const-string/jumbo v4, "MediaEncoderFilter"

    #@62
    const/4 v5, 0x2

    #@63
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@66
    move-result v4

    #@67
    iput-boolean v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@69
    .line 183
    return-void
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 289
    iget-boolean v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@3
    if-eqz v7, :cond_0

    #@5
    const-string/jumbo v7, "MediaEncoderFilter"

    #@8
    const-string/jumbo v8, "Starting recording"

    #@b
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 292
    :cond_0
    new-instance v4, Landroid/filterfw/core/MutableFrameFormat;

    #@10
    .line 293
    const/4 v7, 0x2

    #@11
    const/4 v8, 0x3

    #@12
    .line 292
    invoke-direct {v4, v7, v8}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@15
    .line 294
    .local v4, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v7, 0x4

    #@16
    invoke-virtual {v4, v7}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    #@19
    .line 297
    iget v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    #@1b
    if-lez v7, :cond_3

    #@1d
    iget v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    #@1f
    if-lez v7, :cond_3

    #@21
    const/4 v6, 0x1

    #@22
    .line 300
    .local v6, "widthHeightSpecified":Z
    :goto_0
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@24
    if-eqz v7, :cond_1

    #@26
    if-eqz v6, :cond_4

    #@28
    .line 304
    :cond_1
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    #@2a
    .line 305
    .local v5, "width":I
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    #@2c
    .line 307
    .local v3, "height":I
    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@2f
    .line 308
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@32
    move-result-object v7

    #@33
    .line 309
    const-wide/16 v8, 0x0

    #@35
    const/16 v10, 0x65

    #@37
    .line 308
    invoke-virtual {v7, v4, v10, v8, v9}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@3a
    move-result-object v7

    #@3b
    check-cast v7, Landroid/filterfw/core/GLFrame;

    #@3d
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@3f
    .line 313
    new-instance v7, Landroid/media/MediaRecorder;

    #@41
    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    #@44
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@46
    .line 314
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateMediaRecorderParams()V

    #@49
    .line 317
    :try_start_0
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@4b
    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 330
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@50
    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V

    #@53
    .line 331
    iget-boolean v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@55
    if-eqz v7, :cond_2

    #@57
    const-string/jumbo v7, "MediaEncoderFilter"

    #@5a
    const-string/jumbo v8, "Open: registering surface from Mediarecorder"

    #@5d
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 332
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@63
    move-result-object v7

    #@64
    .line 333
    iget-object v8, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@66
    .line 332
    invoke-virtual {v7, v8}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    #@69
    move-result v7

    #@6a
    iput v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    #@6c
    .line 334
    iput v11, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@6e
    .line 335
    const/4 v7, 0x1

    #@6f
    iput-boolean v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@71
    .line 288
    return-void

    #@72
    .line 297
    .end local v3    # "height":I
    .end local v5    # "width":I
    .end local v6    # "widthHeightSpecified":Z
    :cond_3
    const/4 v6, 0x0

    #@73
    .restart local v6    # "widthHeightSpecified":Z
    goto :goto_0

    #@74
    .line 301
    :cond_4
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@76
    iget v5, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    #@78
    .line 302
    .restart local v5    # "width":I
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@7a
    iget v3, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    #@7c
    .restart local v3    # "height":I
    goto :goto_1

    #@7d
    .line 323
    :catch_0
    move-exception v1

    #@7e
    .line 324
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    #@80
    const-string/jumbo v8, "Unknown Exception inMediaRecorder.prepare()!"

    #@83
    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@86
    throw v7

    #@87
    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@88
    .line 321
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@8a
    const-string/jumbo v8, "IOException inMediaRecorder.prepare()!"

    #@8d
    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@90
    throw v7

    #@91
    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@92
    .line 319
    .local v2, "e":Ljava/lang/IllegalStateException;
    throw v2
.end method

.method private stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 415
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v2, "MediaEncoderFilter"

    #@9
    const-string/jumbo v3, "Stopping recording"

    #@c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 417
    :cond_0
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@11
    .line 418
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@13
    .line 419
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@16
    move-result-object v1

    #@17
    .line 425
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    const-string/jumbo v2, "MediaEncoderFilter"

    #@1e
    const-string/jumbo v3, "Unregistering surface %d"

    #@21
    const/4 v4, 0x1

    #@22
    new-array v4, v4, [Ljava/lang/Object;

    #@24
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    #@26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v5

    #@2a
    aput-object v5, v4, v6

    #@2c
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 426
    :cond_1
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    #@35
    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    #@38
    .line 428
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@3a
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 432
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@3f
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    #@42
    .line 433
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@44
    .line 435
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@46
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@49
    .line 436
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@4b
    .line 441
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    #@4d
    if-eqz v2, :cond_2

    #@4f
    .line 442
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    #@51
    invoke-interface {v2}, Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;->onRecordingDone()V

    #@54
    .line 414
    :cond_2
    return-void

    #@55
    .line 429
    :catch_0
    move-exception v0

    #@56
    .line 430
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/filterpacks/videosink/MediaRecorderStopException;

    #@58
    const-string/jumbo v3, "MediaRecorder.stop() failed!"

    #@5b
    invoke-direct {v2, v3, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5e
    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 230
    iget-wide v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    #@3
    const-wide/16 v6, 0x0

    #@5
    cmp-long v3, v4, v6

    #@7
    if-lez v3, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    :cond_0
    iput-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    #@c
    .line 231
    const/4 v0, 0x2

    #@d
    .line 232
    .local v0, "GRALLOC_BUFFER":I
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@f
    const/4 v3, 0x2

    #@10
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    #@13
    .line 233
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    #@15
    if-nez v2, :cond_1

    #@17
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    #@19
    const/4 v3, -0x1

    #@1a
    if-eq v2, v3, :cond_1

    #@1c
    .line 234
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@1e
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    #@20
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    #@23
    .line 236
    :cond_1
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@25
    if-eqz v2, :cond_3

    #@27
    .line 237
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@29
    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@2b
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    #@2e
    .line 238
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    #@30
    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    #@32
    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    #@34
    .line 241
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    #@36
    if-lez v2, :cond_2

    #@38
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    #@3a
    if-lez v2, :cond_2

    #@3c
    .line 242
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@3e
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    #@40
    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    #@42
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    #@45
    .line 250
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@47
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    #@49
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    #@4c
    .line 251
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@4e
    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    #@50
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    #@53
    .line 252
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@55
    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    #@57
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    #@5a
    .line 253
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    #@5c
    if-eqz v2, :cond_4

    #@5e
    .line 254
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@60
    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    #@62
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    #@65
    .line 259
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@67
    iget-wide v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    #@69
    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 269
    :goto_2
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@6e
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    #@70
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    #@73
    .line 229
    return-void

    #@74
    .line 245
    :cond_3
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@76
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    #@78
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    #@7b
    .line 246
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@7d
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    #@7f
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    #@82
    .line 247
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@84
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    #@86
    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    #@88
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    #@8b
    .line 248
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@8d
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    #@8f
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    #@92
    goto :goto_0

    #@93
    .line 256
    :cond_4
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@95
    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    #@97
    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    #@9a
    goto :goto_1

    #@9b
    .line 260
    :catch_0
    move-exception v1

    #@9c
    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MediaEncoderFilter"

    #@9f
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v4, "Setting maxFileSize on MediaRecorder unsuccessful! "

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    .line 267
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    goto :goto_2
.end method

.method private updateSourceRegion()V
    .locals 2

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/filterfw/geometry/Quad;

    #@2
    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    #@5
    .line 219
    .local v0, "flippedRegion":Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    #@7
    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@9
    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@b
    .line 220
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    #@d
    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@f
    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@11
    .line 221
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    #@13
    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@15
    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@17
    .line 222
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    #@19
    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@1b
    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1d
    .line 223
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@1f
    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@22
    .line 216
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "MediaEncoderFilter"

    #@7
    const-string/jumbo v1, "Closing"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 449
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    #@14
    .line 447
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "MediaEncoderFilter"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Port "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " has been updated"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 203
    :cond_0
    const-string/jumbo v0, "recording"

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    return-void

    #@2f
    .line 204
    :cond_1
    const-string/jumbo v0, "inputRegion"

    #@32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 205
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_2

    #@3e
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    #@41
    .line 206
    :cond_2
    return-void

    #@42
    .line 210
    :cond_3
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_4

    #@48
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@4a
    if-eqz v0, :cond_4

    #@4c
    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    #@4e
    const-string/jumbo v1, "Cannot change recording parameters when the filter is recording!"

    #@51
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0

    #@55
    .line 201
    :cond_4
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "MediaEncoderFilter"

    #@7
    const-string/jumbo v1, "Opening"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 284
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    #@10
    .line 285
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    #@12
    if-eqz v0, :cond_1

    #@14
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    #@17
    .line 282
    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "MediaEncoderFilter"

    #@7
    const-string/jumbo v1, "Preparing"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 276
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@13
    .line 278
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@16
    .line 273
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@3
    move-result-object v0

    #@4
    .line 380
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string/jumbo v2, "videoframe"

    #@7
    invoke-virtual {p0, v2}, Landroid/filterpacks/videosink/MediaEncoderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v1

    #@b
    .line 383
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@d
    if-nez v2, :cond_0

    #@f
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 384
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    #@16
    .line 387
    :cond_0
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 391
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    #@20
    if-nez v2, :cond_3

    #@22
    return-void

    #@23
    .line 388
    :cond_2
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    #@26
    goto :goto_0

    #@27
    .line 393
    :cond_3
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    #@29
    if-eqz v2, :cond_4

    #@2b
    .line 394
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@2e
    move-result-wide v2

    #@2f
    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosink/MediaEncoderFilter;->skipFrameAndModifyTimestamp(J)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_5

    #@35
    .line 395
    return-void

    #@36
    .line 398
    :cond_4
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@39
    move-result-wide v2

    #@3a
    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@3c
    .line 402
    :cond_5
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    #@3e
    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    #@41
    .line 405
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    #@43
    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@45
    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@48
    .line 408
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@4a
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    #@4d
    .line 410
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    #@50
    .line 411
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@52
    add-int/lit8 v2, v2, 0x1

    #@54
    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@56
    .line 377
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 196
    const-string/jumbo v0, "videoframe"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 194
    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 11
    .param p1, "timestampNs"    # J

    #@0
    .prologue
    const-wide/32 v8, 0x3b9aca00

    #@3
    const/4 v6, 0x0

    #@4
    .line 340
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@6
    if-nez v0, :cond_1

    #@8
    .line 341
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    #@a
    .line 342
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@c
    .line 343
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    const-string/jumbo v0, "MediaEncoderFilter"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "timelapse: FIRST frame, last real t= "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 344
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    #@21
    .line 343
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 345
    const-string/jumbo v2, ", setting t = "

    #@28
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 345
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@2e
    .line 343
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 346
    :cond_0
    return v6

    #@3a
    .line 352
    :cond_1
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    #@3c
    const/4 v1, 0x2

    #@3d
    if-lt v0, v1, :cond_3

    #@3f
    .line 353
    iget-wide v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    #@41
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    #@43
    const-wide/16 v4, 0x3e8

    #@45
    mul-long/2addr v2, v4

    #@46
    add-long/2addr v0, v2

    #@47
    .line 352
    cmp-long v0, p1, v0

    #@49
    if-gez v0, :cond_3

    #@4b
    .line 357
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@4d
    if-eqz v0, :cond_2

    #@4f
    const-string/jumbo v0, "MediaEncoderFilter"

    #@52
    const-string/jumbo v1, "timelapse: skipping intermediate frame"

    #@55
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 358
    :cond_2
    const/4 v0, 0x1

    #@59
    return v0

    #@5a
    .line 364
    :cond_3
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@5c
    if-eqz v0, :cond_4

    #@5e
    const-string/jumbo v0, "MediaEncoderFilter"

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v2, "timelapse: encoding frame, Timestamp t = "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    .line 365
    const-string/jumbo v2, ", last real t= "

    #@74
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 365
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    #@7a
    .line 364
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 366
    const-string/jumbo v2, ", interval = "

    #@81
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    .line 366
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    #@87
    .line 364
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 367
    :cond_4
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    #@94
    .line 368
    iget-wide v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@96
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    #@98
    int-to-long v2, v2

    #@99
    div-long v2, v8, v2

    #@9b
    add-long/2addr v0, v2

    #@9c
    iput-wide v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@9e
    .line 369
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    #@a0
    if-eqz v0, :cond_5

    #@a2
    const-string/jumbo v0, "MediaEncoderFilter"

    #@a5
    new-instance v1, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v2, "timelapse: encoding frame, setting t = "

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    .line 370
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    #@b3
    .line 369
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    .line 370
    const-string/jumbo v2, ", delta t = "

    #@ba
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    .line 370
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    #@c0
    int-to-long v2, v2

    #@c1
    div-long v2, v8, v2

    #@c3
    .line 369
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    .line 371
    const-string/jumbo v2, ", fps = "

    #@ca
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    .line 371
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    #@d0
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 372
    :cond_5
    return v6
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 457
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    #@6
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    #@9
    .line 459
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 460
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    #@f
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@12
    .line 453
    :cond_1
    return-void
.end method
