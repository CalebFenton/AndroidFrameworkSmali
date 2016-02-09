.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@7
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@e
    .line 90
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@10
    .line 92
    iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@12
    .line 94
    const/4 v0, 0x1

    #@13
    iput v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@15
    .line 97
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@17
    .line 96
    return-void
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 569
    const/4 v5, 0x1

    #@2
    if-eq p2, v5, :cond_0

    #@4
    .line 570
    return-object p1

    #@5
    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@8
    move-result v5

    #@9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@c
    move-result v6

    #@d
    .line 574
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@f
    .line 573
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@12
    move-result-object v3

    #@13
    .line 575
    .local v3, "grayscale":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@15
    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@18
    .line 576
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    #@1a
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@1d
    .line 577
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    #@1f
    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    #@22
    .line 578
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    #@25
    .line 579
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    #@27
    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #@2a
    .line 580
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@2d
    .line 581
    invoke-virtual {v0, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@30
    .line 582
    const/4 v5, 0x0

    #@31
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@34
    .line 584
    return-object v3
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    #@0
    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    #@2
    .line 283
    new-instance v0, Landroid/graphics/Matrix;

    #@4
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@7
    .line 286
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    #@a
    move-result v4

    #@b
    int-to-float v5, p1

    #@c
    div-float v1, v4, v5

    #@e
    .line 287
    .local v1, "scale":F
    const/4 v4, 0x2

    #@f
    if-ne p4, v4, :cond_0

    #@11
    .line 288
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@14
    move-result v4

    #@15
    int-to-float v5, p2

    #@16
    div-float/2addr v4, v5

    #@17
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    #@1a
    move-result v1

    #@1b
    .line 292
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@1e
    .line 295
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    #@21
    move-result v4

    #@22
    .line 296
    int-to-float v5, p1

    #@23
    mul-float/2addr v5, v1

    #@24
    .line 295
    sub-float/2addr v4, v5

    #@25
    div-float v2, v4, v6

    #@27
    .line 297
    .local v2, "translateX":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@2a
    move-result v4

    #@2b
    .line 298
    int-to-float v5, p2

    #@2c
    mul-float/2addr v5, v1

    #@2d
    .line 297
    sub-float/2addr v4, v5

    #@2e
    div-float v3, v4, v6

    #@30
    .line 299
    .local v3, "translateY":F
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@33
    .line 300
    return-object v0

    #@34
    .line 290
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    #@37
    move-result v4

    #@38
    int-to-float v5, p2

    #@39
    div-float/2addr v4, v5

    #@3a
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    #@3d
    move-result v1

    #@3e
    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    if-eqz p1, :cond_0

    #@2
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@4
    if-nez v2, :cond_1

    #@6
    .line 551
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "bad argument to loadBitmap"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 553
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 555
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@19
    move-result-object v0

    #@1a
    .line 556
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    #@1b
    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 558
    if-eqz v0, :cond_2

    #@21
    .line 560
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@24
    .line 556
    :cond_2
    :goto_0
    return-object v2

    #@25
    .line 561
    :catch_0
    move-exception v1

    #@26
    .line 562
    .local v1, "t":Ljava/io/IOException;
    const-string/jumbo v3, "PrintHelperKitkat"

    #@29
    const-string/jumbo v4, "close fail "

    #@2c
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0

    #@30
    .line 557
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "t":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@31
    .line 558
    if-eqz v0, :cond_3

    #@33
    .line 560
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@36
    .line 557
    :cond_3
    :goto_1
    throw v2

    #@37
    .line 561
    :catch_1
    move-exception v1

    #@38
    .line 562
    .restart local v1    # "t":Ljava/io/IOException;
    const-string/jumbo v3, "PrintHelperKitkat"

    #@3b
    const-string/jumbo v4, "close fail "

    #@3e
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_1
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 500
    if-lez p2, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 501
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v7, "bad argument to getScaledBitmap"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 500
    :cond_1
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 504
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #@15
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@18
    .line 505
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@1a
    .line 506
    invoke-direct {p0, p1, v3}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1d
    .line 508
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@1f
    .line 509
    .local v5, "w":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@21
    .line 512
    .local v1, "h":I
    if-lez v5, :cond_2

    #@23
    if-gtz v1, :cond_3

    #@25
    .line 513
    :cond_2
    return-object v7

    #@26
    .line 517
    :cond_3
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v2

    #@2a
    .line 519
    .local v2, "imageSide":I
    const/4 v4, 0x1

    #@2b
    .line 520
    .local v4, "sampleSize":I
    :goto_0
    if-le v2, p2, :cond_4

    #@2d
    .line 521
    ushr-int/lit8 v2, v2, 0x1

    #@2f
    .line 522
    shl-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 526
    :cond_4
    if-lez v4, :cond_5

    #@34
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    #@37
    move-result v6

    #@38
    div-int/2addr v6, v4

    #@39
    if-gtz v6, :cond_6

    #@3b
    .line 527
    :cond_5
    return-object v7

    #@3c
    .line 529
    :cond_6
    const/4 v0, 0x0

    #@3d
    .line 530
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@3f
    monitor-enter v7

    #@40
    .line 531
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    #@42
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@45
    iput-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@47
    .line 532
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@49
    const/4 v8, 0x1

    #@4a
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    #@4c
    .line 533
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@4e
    iput v4, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@50
    .line 534
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v7

    #@53
    .line 537
    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@56
    move-result-object v6

    #@57
    .line 539
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@59
    monitor-enter v7

    #@5a
    .line 540
    const/4 v8, 0x0

    #@5b
    :try_start_2
    iput-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5d
    monitor-exit v7

    #@5e
    .line 537
    return-object v6

    #@5f
    .line 530
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v6

    #@60
    monitor-exit v7

    #@61
    throw v6

    #@62
    .line 539
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    #@63
    monitor-exit v7

    #@64
    throw v6

    #@65
    .line 538
    :catchall_2
    move-exception v6

    #@66
    .line 539
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    #@68
    monitor-enter v7

    #@69
    .line 540
    const/4 v8, 0x0

    #@6a
    :try_start_3
    iput-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@6c
    monitor-exit v7

    #@6d
    .line 538
    throw v6

    #@6e
    .line 539
    :catchall_3
    move-exception v6

    #@6f
    monitor-exit v7

    #@70
    throw v6
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@2
    return v0
.end method

.method public getOrientation()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@2
    return v0
.end method

.method public getScaleMode()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@2
    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@0
    .prologue
    .line 175
    if-nez p2, :cond_0

    #@2
    .line 176
    return-void

    #@3
    .line 178
    :cond_0
    iget v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@5
    .line 179
    .local v4, "fittingMode":I
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v1, "print"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v8

    #@e
    check-cast v8, Landroid/print/PrintManager;

    #@10
    .line 180
    .local v8, "printManager":Landroid/print/PrintManager;
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    #@12
    .line 181
    .local v7, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@15
    move-result v0

    #@16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@19
    move-result v1

    #@1a
    if-le v0, v1, :cond_1

    #@1c
    .line 182
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    #@1e
    .line 184
    :cond_1
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    #@20
    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@23
    invoke-virtual {v0, v7}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@26
    move-result-object v0

    #@27
    .line 186
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@29
    .line 184
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@30
    move-result-object v6

    #@31
    .line 190
    .local v6, "attr":Landroid/print/PrintAttributes;
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$1;

    #@33
    move-object v1, p0

    #@34
    move-object v2, p1

    #@35
    move-object v3, p2

    #@36
    move-object v5, p3

    #@37
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    #@3a
    .line 189
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    #@3d
    .line 174
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 9
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    iget v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@2
    .line 316
    .local v4, "fittingMode":I
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p3

    #@7
    move-object v5, p2

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;ILandroid/net/Uri;)V

    #@b
    .line 477
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@d
    const-string/jumbo v2, "print"

    #@10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v8

    #@14
    check-cast v8, Landroid/print/PrintManager;

    #@16
    .line 478
    .local v8, "printManager":Landroid/print/PrintManager;
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    #@18
    invoke-direct {v7}, Landroid/print/PrintAttributes$Builder;-><init>()V

    #@1b
    .line 479
    .local v7, "builder":Landroid/print/PrintAttributes$Builder;
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@1d
    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    #@20
    .line 481
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@22
    const/4 v2, 0x1

    #@23
    if-ne v1, v2, :cond_1

    #@25
    .line 482
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    #@27
    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@2a
    .line 486
    :cond_0
    :goto_0
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    #@2d
    move-result-object v6

    #@2e
    .line 488
    .local v6, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    #@31
    .line 313
    return-void

    #@32
    .line 483
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    :cond_1
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@34
    const/4 v2, 0x2

    #@35
    if-ne v1, v2, :cond_0

    #@37
    .line 484
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    #@39
    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    #@3c
    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    #@0
    .prologue
    .line 133
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    #@2
    .line 132
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    #@0
    .prologue
    .line 143
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    #@2
    .line 142
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0
    .param p1, "scaleMode"    # I

    #@0
    .prologue
    .line 111
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    #@2
    .line 110
    return-void
.end method
