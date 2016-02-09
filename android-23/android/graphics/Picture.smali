.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private final mNativePicture:J

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    #@9
    .line 39
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativePicture"    # J

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    #@e
    throw v0

    #@f
    .line 56
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@11
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Picture;

    #@0
    .prologue
    .line 49
    if-eqz p1, :cond_0

    #@2
    iget-wide v0, p1, Landroid/graphics/Picture;->mNativePicture:J

    #@4
    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    #@7
    move-result-wide v0

    #@8
    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    #@b
    .line 48
    return-void

    #@c
    .line 49
    :cond_0
    const-wide/16 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 148
    new-instance v0, Landroid/graphics/Picture;

    #@2
    const/16 v1, 0x4000

    #@4
    new-array v1, v1, [B

    #@6
    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {v0, v2, v3}, Landroid/graphics/Picture;-><init>(J)V

    #@d
    return-object v0
.end method

.method private static native nativeBeginRecording(JII)J
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeDraw(JJ)V
.end method

.method private static native nativeEndRecording(J)V
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeWriteToStream(JLjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 77
    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(JII)J

    #@5
    move-result-wide v0

    #@6
    .line 78
    .local v0, "ni":J
    new-instance v2, Landroid/graphics/Picture$RecordingCanvas;

    #@8
    invoke-direct {v2, p0, v0, v1}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;J)V

    #@b
    iput-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    #@d
    .line 79
    iget-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    #@f
    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 126
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    #@7
    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@a
    move-result-wide v0

    #@b
    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@d
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Picture;->nativeDraw(JJ)V

    #@10
    .line 124
    return-void
.end method

.method public endRecording()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 89
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 90
    iput-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    #@7
    .line 91
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@9
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeEndRecording(J)V

    #@c
    .line 88
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDestructor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 60
    return-void

    #@9
    .line 63
    :catchall_0
    move-exception v0

    #@a
    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 63
    throw v0
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 108
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetHeight(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWidth()I
    .locals 2

    #@0
    .prologue
    .line 100
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetWidth(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 168
    if-nez p1, :cond_0

    #@2
    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 171
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    #@a
    .line 172
    const/16 v2, 0x4000

    #@c
    new-array v2, v2, [B

    #@e
    .line 171
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Picture;->nativeWriteToStream(JLjava/io/OutputStream;[B)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    #@16
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 166
    :cond_1
    return-void
.end method
