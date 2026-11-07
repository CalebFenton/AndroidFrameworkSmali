.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$PictureCanvas;
    }
.end annotation


# static fields
.field private static final greylist-max-o WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private greylist-max-p mNativePicture:J

.field private greylist-max-o mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

.field private greylist-max-o mRequiresHwAcceleration:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 50
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    .line 51
    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "nativePicture"    # J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 67
    iput-wide p1, p0, Landroid/graphics/Picture;->mNativePicture:J

    .line 68
    return-void

    .line 65
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Picture;)V
    .registers 4
    .param p1, "src"    # Landroid/graphics/Picture;

    .line 59
    if-eqz p1, :cond_5

    iget-wide v0, p1, Landroid/graphics/Picture;->mNativePicture:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    .line 60
    return-void
.end method

.method public static greylist createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .registers 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Picture;-><init>(J)V

    return-object v0
.end method

.method private static native greylist-max-o nativeBeginRecording(JII)J
.end method

.method private static native greylist-max-o nativeConstructor(J)J
.end method

.method private static native greylist-max-o nativeCreateFromStream(Ljava/io/InputStream;[B)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeDraw(JJ)V
.end method

.method private static native greylist-max-o nativeEndRecording(J)V
.end method

.method private static native greylist-max-o nativeGetHeight(J)I
.end method

.method private static native greylist-max-o nativeGetWidth(J)I
.end method

.method private static native greylist-max-o nativeWriteToStream(JLjava/io/OutputStream;[B)Z
.end method

.method private blacklist verifyValid()V
    .registers 5

    .line 94
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 97
    return-void

    .line 95
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picture is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist beginRecording(II)Landroid/graphics/Canvas;
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 109
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 110
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-nez v0, :cond_1a

    .line 113
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(JII)J

    move-result-wide v0

    .line 114
    .local v0, "ni":J
    new-instance v2, Landroid/graphics/Picture$PictureCanvas;

    invoke-direct {v2, p0, v0, v1}, Landroid/graphics/Picture$PictureCanvas;-><init>(Landroid/graphics/Picture;J)V

    iput-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    .line 116
    iget-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    return-object v2

    .line 111
    .end local v0    # "ni":J
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picture already recording, must call #endRecording()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist close()V
    .registers 5

    .line 78
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 79
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDestructor(J)V

    .line 80
    iput-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    .line 82
    :cond_f
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 182
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 183
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-eqz v0, :cond_a

    .line 184
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 186
    :cond_a
    iget-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_23

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_23

    .line 188
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering not supported for Pictures that require hardware acceleration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Picture;->nativeDraw(JJ)V

    .line 192
    return-void
.end method

.method public whitelist endRecording()V
    .registers 3

    .line 126
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 127
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-eqz v0, :cond_15

    .line 128
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    iget-boolean v0, v0, Landroid/graphics/Picture$PictureCanvas;->mUsesHwFeature:Z

    iput-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    .line 130
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeEndRecording(J)V

    .line 132
    :cond_15
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Picture;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    throw v0
.end method

.method public whitelist getHeight()I
    .registers 3

    .line 148
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 149
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .registers 3

    .line 139
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 140
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist requiresHardwareAcceleration()Z
    .registers 2

    .line 164
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 165
    iget-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    return v0
.end method

.method public greylist writeToStream(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    .line 226
    if-eqz p1, :cond_18

    .line 229
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Picture;->nativeWriteToStream(JLjava/io/OutputStream;[B)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 232
    return-void

    .line 230
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 227
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
