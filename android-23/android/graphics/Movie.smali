.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private final mNativeMovie:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeMovie"    # J

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v1, "native movie creation failed"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 30
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    #@14
    .line 26
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 78
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    #@8
    move-result-object v2

    #@9
    return-object v2

    #@a
    .line 75
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@b
    .line 76
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    #@c
    return-object v2
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 52
    if-nez p0, :cond_0

    #@3
    .line 53
    return-object v2

    #@4
    .line 55
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 56
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    #@a
    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    #@d
    move-result-wide v0

    #@e
    .line 57
    .local v0, "asset":J
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 60
    .end local v0    # "asset":J
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {p0}, Landroid/graphics/Movie;->nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 91
    const/4 v1, 0x0

    #@1
    .line 93
    .local v1, "moov":Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    #@4
    move-result-object v1

    #@5
    .line 94
    .local v1, "moov":Landroid/graphics/Movie;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 102
    .end local v1    # "moov":Landroid/graphics/Movie;
    :goto_0
    return-object v1

    #@9
    .line 96
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private native nDraw(JFFJ)V
.end method

.method private static native nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v6, 0x0

    #@6
    move-object v1, p0

    #@7
    move v4, p2

    #@8
    move v5, p3

    #@9
    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    #@c
    .line 47
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@3
    move-result-wide v2

    #@4
    .line 44
    if-eqz p4, :cond_0

    #@6
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    #@9
    move-result-wide v6

    #@a
    :goto_0
    move-object v1, p0

    #@b
    move v4, p2

    #@c
    move v5, p3

    #@d
    .line 43
    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    #@10
    .line 42
    return-void

    #@11
    .line 44
    :cond_0
    const-wide/16 v6, 0x0

    #@13
    goto :goto_0
.end method

.method public native duration()I
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
    .line 84
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 82
    return-void

    #@9
    .line 85
    :catchall_0
    move-exception v0

    #@a
    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 85
    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
