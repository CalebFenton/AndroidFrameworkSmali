.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-r mNativeMovie:J


# direct methods
.method private constructor greylist-max-p <init>(J)V
    .registers 5
    .param p1, "nativeMovie"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 40
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    .line 41
    return-void

    .line 38
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static whitelist decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .registers 3
    .param p0, "pathName"    # Ljava/lang/String;

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_b

    .line 87
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 88
    invoke-static {v0}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    return-object v1

    .line 85
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    instance-of v0, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_14

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 67
    .local v0, "asset":J
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    .line 70
    .end local v0    # "asset":J
    :cond_14
    invoke-static {p0}, Landroid/graphics/Movie;->nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "moov":Landroid/graphics/Movie;
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    move-object v0, v1

    .line 105
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_a

    .line 112
    goto :goto_b

    .line 107
    :catch_a
    move-exception v1

    .line 113
    :goto_b
    return-object v0
.end method

.method private native greylist-max-o nDraw(JFFJ)V
.end method

.method private static native greylist-max-o nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native greylist-max-o nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;FF)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v3, "x":F
    .local v4, "y":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 59
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v1

    .line 54
    if-eqz p4, :cond_b

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_d

    :cond_b
    const-wide/16 v3, 0x0

    :goto_d
    move-wide v5, v3

    .line 53
    move-object v0, p0

    move v3, p2

    move v4, p3

    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v3, "x":F
    .local v4, "y":F
    invoke-direct/range {v0 .. v6}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 55
    return-void
.end method

.method public native whitelist duration()I
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    nop

    .line 99
    return-void

    .line 97
    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    throw v0
.end method

.method public native whitelist height()I
.end method

.method public native whitelist isOpaque()Z
.end method

.method public native whitelist setTime(I)Z
.end method

.method public native whitelist width()I
.end method
