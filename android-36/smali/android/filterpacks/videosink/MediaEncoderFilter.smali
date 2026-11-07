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
.field private static final blacklist NO_AUDIO_SOURCE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MediaEncoderFilter"


# instance fields
.field private blacklist mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private blacklist mCaptureTimeLapse:Z

.field private blacklist mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private blacklist mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private blacklist mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private blacklist mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private blacklist mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private blacklist mLastTimeLapseFrameRealTimestampNs:J

.field private blacklist mLogVerbose:Z

.field private blacklist mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private blacklist mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private blacklist mMediaRecorder:Landroid/media/MediaRecorder;

.field private blacklist mNumFramesEncoded:I

.field private blacklist mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private blacklist mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private blacklist mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private blacklist mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private blacklist mRecordingActive:Z

.field private blacklist mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private blacklist mScreen:Landroid/filterfw/core/GLFrame;

.field private blacklist mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private blacklist mSurfaceId:I

.field private blacklist mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private blacklist mTimestampNs:J

.field private blacklist mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private blacklist mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    .line 55
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    .line 72
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 79
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 85
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    .line 99
    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 104
    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 109
    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 114
    const/16 v0, 0x1e

    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    .line 126
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    .line 140
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    .line 146
    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    .line 152
    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 163
    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 164
    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 165
    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 166
    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 169
    iput-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 185
    new-instance v1, Landroid/filterfw/geometry/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 186
    .local v1, "bl":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 187
    .local v3, "br":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v2, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 188
    .local v5, "tl":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v4, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 189
    .local v2, "tr":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v1, v3, v5, v2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 190
    const-string v4, "MediaEncoderFilter"

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 191
    return-void
.end method

.method private blacklist startRecording(Landroid/filterfw/core/FilterContext;)V
    .registers 13
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 289
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    const-string v1, "MediaEncoderFilter"

    if-eqz v0, :cond_b

    const-string v0, "Starting recording"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_b
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 294
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 297
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_22

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    if-lez v2, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    .line 300
    .local v2, "widthHeightSpecified":Z
    :goto_23
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_32

    if-nez v2, :cond_32

    .line 301
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 302
    .local v5, "width":I
    iget-object v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .local v6, "height":I
    goto :goto_36

    .line 304
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_32
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 305
    .restart local v5    # "width":I
    iget v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 307
    .restart local v6    # "height":I
    :goto_36
    invoke-virtual {v0, v5, v6}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 308
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    const/16 v8, 0x65

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v7

    check-cast v7, Landroid/filterfw/core/GLFrame;

    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 313
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 314
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateMediaRecorderParams()V

    .line 317
    :try_start_53
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_58} :catch_8a
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_81
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_78

    .line 326
    nop

    .line 330
    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V

    .line 331
    iget-boolean v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v7, :cond_67

    const-string v7, "Open: registering surface from Mediarecorder"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_67
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    iget-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 333
    invoke-virtual {v1, v7}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v1

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    .line 334
    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 335
    iput-boolean v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 336
    return-void

    .line 323
    :catch_78
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_81
    move-exception v1

    .line 321
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 318
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8a
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1
.end method

.method private blacklist stopRecording(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 415
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    const-string v1, "MediaEncoderFilter"

    if-eqz v0, :cond_b

    const-string v0, "Stopping recording"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 418
    iput v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 419
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 425
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v2, :cond_2b

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unregistering surface %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_2b
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 428
    :try_start_30
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_35} :catch_4f

    .line 431
    nop

    .line 432
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 435
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 436
    iput-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 441
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    if-eqz v1, :cond_4e

    .line 442
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    invoke-interface {v1}, Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;->onRecordingDone()V

    .line 444
    :cond_4e
    return-void

    .line 429
    :catch_4f
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v3, "MediaRecorder.stop() failed!"

    invoke-direct {v2, v3, v1}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist updateMediaRecorderParams()V
    .registers 5

    .line 230
    iget-wide v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 231
    const/4 v0, 0x2

    .line 232
    .local v0, "GRALLOC_BUFFER":I
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 233
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-nez v1, :cond_24

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 234
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 236
    :cond_24
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_47

    .line 237
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 238
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 241
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    if-lez v1, :cond_65

    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    if-lez v1, :cond_65

    .line 242
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_65

    .line 245
    :cond_47
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 246
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 247
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 248
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 250
    :cond_65
    :goto_65
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 251
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 252
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 253
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_86

    .line 254
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_8d

    .line 256
    :cond_86
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 259
    :goto_8d
    :try_start_8d
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_94} :catch_95

    .line 268
    goto :goto_b2

    .line 260
    :catch_95
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    const-string v3, "MediaEncoderFilter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b2
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 270
    return-void
.end method

.method private blacklist updateSourceRegion()V
    .registers 3

    .line 218
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 219
    .local v0, "flippedRegion":Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 220
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 221
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 222
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 223
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 224
    return-void
.end method


# virtual methods
.method public blacklist close(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 448
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_b
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 450
    :cond_12
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 202
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaEncoderFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_22
    const-string/jumbo v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 204
    :cond_2c
    const-string/jumbo v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 205
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    .line 206
    :cond_3e
    return-void

    .line 210
    :cond_3f
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v0, :cond_4a

    goto :goto_52

    .line 211
    :cond_4a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_52
    :goto_52
    return-void
.end method

.method public blacklist open(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 283
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_b
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    .line 285
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 286
    :cond_15
    return-void
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 274
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_b
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 279
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 378
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 380
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string/jumbo v1, "videoframe"

    invoke-virtual {p0, v1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 383
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-eqz v2, :cond_16

    .line 384
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 387
    :cond_16
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-nez v2, :cond_21

    .line 388
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 391
    :cond_21
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_26

    return-void

    .line 393
    :cond_26
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_35

    .line 394
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosink/MediaEncoderFilter;->skipFrameAndModifyTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 395
    return-void

    .line 398
    :cond_35
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 402
    :cond_3b
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 405
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 408
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 410
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 411
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 412
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 196
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "videoframe"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 198
    return-void
.end method

.method public blacklist skipFrameAndModifyTimestamp(J)Z
    .registers 12
    .param p1, "timestampNs"    # J

    .line 340
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    const/4 v1, 0x0

    const-string v2, "MediaEncoderFilter"

    if-nez v0, :cond_35

    .line 341
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 342
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 343
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", setting t = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_34
    return v1

    .line 352
    :cond_35
    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_52

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v5, 0x3e8

    iget-wide v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v7, v5

    add-long/2addr v3, v7

    cmp-long v0, p1, v3

    if-gez v0, :cond_52

    .line 357
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_50

    const-string/jumbo v0, "timelapse: skipping intermediate frame"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_50
    const/4 v0, 0x1

    return v0

    .line 364
    :cond_52
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", last real t= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", interval = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_85
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 368
    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    iget v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    int-to-long v5, v0

    const-wide/32 v7, 0x3b9aca00

    div-long v5, v7, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 369
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", delta t = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    int-to-long v3, v3

    div-long/2addr v7, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", fps = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_cb
    return v1
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 456
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_9

    .line 457
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 459
    :cond_9
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_12

    .line 460
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 463
    :cond_12
    return-void
.end method
