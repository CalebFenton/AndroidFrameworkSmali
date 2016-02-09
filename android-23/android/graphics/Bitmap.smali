.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$1;
    }
.end annotation


# static fields
.field private static synthetic -android_graphics_Bitmap$ConfigSwitchesValues:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid_graphics_Bitmap$ConfigSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/graphics/Bitmap;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/graphics/Bitmap;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@10
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@19
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@22
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/graphics/Bitmap;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0
    .param p0, "nativeBitmap"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->nativeDestructor(J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, -0x1

    #@1
    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@3
    .line 1508
    new-instance v0, Landroid/graphics/Bitmap$1;

    #@5
    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    #@8
    .line 1507
    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    .line 36
    return-void
.end method

.method constructor <init>(J[BIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 5
    .param p1, "nativeBitmap"    # J
    .param p3, "buffer"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "density"    # I
    .param p7, "isMutable"    # Z
    .param p8, "requestPremultiplied"    # Z
    .param p9, "ninePatchChunk"    # [B
    .param p10, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@9
    .line 111
    const-wide/16 v2, 0x0

    #@b
    cmp-long v1, p1, v2

    #@d
    if-nez v1, :cond_0

    #@f
    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v2, "internal error: native bitmap is 0"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 115
    :cond_0
    iput p4, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@1a
    .line 116
    iput p5, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@1c
    .line 117
    iput-boolean p7, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    #@1e
    .line 118
    iput-boolean p8, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@20
    .line 119
    iput-object p3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@22
    .line 121
    iput-object p9, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@24
    .line 122
    iput-object p10, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@26
    .line 123
    if-ltz p6, :cond_1

    #@28
    .line 124
    iput p6, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@2a
    .line 127
    :cond_1
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@2c
    .line 128
    new-instance v1, Landroid/graphics/Bitmap$BitmapFinalizer;

    #@2e
    invoke-direct {v1, p1, p2}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(J)V

    #@31
    iput-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@33
    .line 129
    if-nez p3, :cond_2

    #@35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@38
    move-result v0

    #@39
    .line 130
    .local v0, "nativeAllocationByteCount":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@3b
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    #@3e
    .line 110
    return-void

    #@3f
    .line 129
    .end local v0    # "nativeAllocationByteCount":I
    :cond_2
    const/4 v0, 0x0

    #@40
    .restart local v0    # "nativeAllocationByteCount":I
    goto :goto_0
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1398
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    #@3
    .line 1399
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@6
    move-result v0

    #@7
    if-lt p1, v0, :cond_0

    #@9
    .line 1400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "x must be < bitmap.width()"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1402
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@15
    move-result v0

    #@16
    if-lt p2, v0, :cond_1

    #@18
    .line 1403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "y must be < bitmap.height()"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1397
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    #@0
    .prologue
    .line 1421
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    #@3
    .line 1422
    if-gez p3, :cond_0

    #@5
    .line 1423
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "width must be >= 0"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 1425
    :cond_0
    if-gez p4, :cond_1

    #@10
    .line 1426
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v3, "height must be >= 0"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 1428
    :cond_1
    add-int v2, p1, p3

    #@1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@1e
    move-result v3

    #@1f
    if-le v2, v3, :cond_2

    #@21
    .line 1429
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@23
    .line 1430
    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    #@26
    .line 1429
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1432
    :cond_2
    add-int v2, p2, p4

    #@2c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@2f
    move-result v3

    #@30
    if-le v2, v3, :cond_3

    #@32
    .line 1433
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@34
    .line 1434
    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    #@37
    .line 1433
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 1436
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    #@3e
    move-result v2

    #@3f
    if-ge v2, p3, :cond_4

    #@41
    .line 1437
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v3, "abs(stride) must be >= width"

    #@46
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2

    #@4a
    .line 1439
    :cond_4
    add-int/lit8 v2, p4, -0x1

    #@4c
    mul-int/2addr v2, p6

    #@4d
    add-int v0, p5, v2

    #@4f
    .line 1440
    .local v0, "lastScanline":I
    array-length v1, p7

    #@50
    .line 1441
    .local v1, "length":I
    if-ltz p5, :cond_5

    #@52
    add-int v2, p5, p3

    #@54
    if-le v2, v1, :cond_6

    #@56
    .line 1444
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@58
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@5b
    throw v2

    #@5c
    .line 1442
    :cond_6
    if-ltz v0, :cond_5

    #@5e
    .line 1443
    add-int v2, v0, p3

    #@60
    if-gt v2, v1, :cond_5

    #@62
    .line 1420
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    .line 349
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    #@0
    .prologue
    .line 377
    if-gtz p0, :cond_0

    #@2
    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "width must be > 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 380
    :cond_0
    if-gtz p1, :cond_1

    #@d
    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "height must be > 0"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 376
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 362
    if-gez p0, :cond_0

    #@2
    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "x must be >= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 365
    :cond_0
    if-gez p1, :cond_1

    #@d
    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "y must be >= 0"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 361
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 775
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    #@0
    .prologue
    .line 808
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 633
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@8
    move-result v1

    #@9
    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 653
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    #@0
    .prologue
    .line 683
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    #@3
    .line 684
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    #@6
    .line 685
    add-int v13, p1, p3

    #@8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@b
    move-result v14

    #@c
    if-le v13, v14, :cond_0

    #@e
    .line 686
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    #@13
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v13

    #@17
    .line 688
    :cond_0
    add-int v13, p2, p4

    #@19
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c
    move-result v14

    #@1d
    if-le v13, v14, :cond_1

    #@1f
    .line 689
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    #@24
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v13

    #@28
    .line 693
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@2b
    move-result v13

    #@2c
    if-nez v13, :cond_3

    #@2e
    if-nez p1, :cond_3

    #@30
    if-nez p2, :cond_3

    #@32
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@35
    move-result v13

    #@36
    move/from16 v0, p3

    #@38
    if-ne v0, v13, :cond_3

    #@3a
    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@3d
    move-result v13

    #@3e
    move/from16 v0, p4

    #@40
    if-ne v0, v13, :cond_3

    #@42
    if-eqz p5, :cond_2

    #@44
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    #@47
    move-result v13

    #@48
    .line 693
    if-eqz v13, :cond_3

    #@4a
    .line 695
    :cond_2
    return-object p0

    #@4b
    .line 698
    :cond_3
    move/from16 v9, p3

    #@4d
    .line 699
    .local v9, "neww":I
    move/from16 v8, p4

    #@4f
    .line 700
    .local v8, "newh":I
    new-instance v3, Landroid/graphics/Canvas;

    #@51
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    #@54
    .line 704
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    #@56
    add-int v13, p1, p3

    #@58
    add-int v14, p2, p4

    #@5a
    move/from16 v0, p1

    #@5c
    move/from16 v1, p2

    #@5e
    invoke-direct {v11, v0, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    #@61
    .line 705
    .local v11, "srcR":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    #@63
    const/4 v13, 0x0

    #@64
    const/4 v14, 0x0

    #@65
    move/from16 v0, p3

    #@67
    int-to-float v15, v0

    #@68
    move/from16 v0, p4

    #@6a
    int-to-float v0, v0

    #@6b
    move/from16 v16, v0

    #@6d
    move/from16 v0, v16

    #@6f
    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@72
    .line 707
    .local v6, "dstR":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@74
    .line 708
    .local v7, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@77
    move-result-object v4

    #@78
    .line 710
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    #@7a
    .line 711
    invoke-static {}, Landroid/graphics/Bitmap;->-getandroid_graphics_Bitmap$ConfigSwitchesValues()[I

    #@7d
    move-result-object v13

    #@7e
    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@81
    move-result v14

    #@82
    aget v13, v13, v14

    #@84
    packed-switch v13, :pswitch_data_0

    #@87
    .line 722
    :pswitch_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@89
    .line 727
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    #@8b
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    #@8e
    move-result v13

    #@8f
    if-eqz v13, :cond_7

    #@91
    .line 728
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@94
    move-result v13

    #@95
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@98
    move-result-object v2

    #@99
    .line 729
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    #@9a
    .line 754
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    #@9c
    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@9e
    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    #@a0
    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@a3
    move-result v13

    #@a4
    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    #@a7
    .line 756
    move-object/from16 v0, p0

    #@a9
    iget-boolean v13, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@ab
    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@ae
    .line 758
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@b1
    .line 759
    move-object/from16 v0, p0

    #@b3
    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@b6
    .line 760
    const/4 v13, 0x0

    #@b7
    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@ba
    .line 762
    return-object v2

    #@bb
    .line 713
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@bd
    goto :goto_0

    #@be
    .line 716
    :pswitch_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@c0
    goto :goto_0

    #@c1
    .line 731
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    #@c4
    move-result v13

    #@c5
    if-eqz v13, :cond_9

    #@c7
    const/4 v12, 0x0

    #@c8
    .line 733
    .local v12, "transformed":Z
    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    #@ca
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@cd
    .line 734
    .local v5, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    #@cf
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@d2
    .line 736
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    #@d5
    move-result v13

    #@d6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@d9
    move-result v9

    #@da
    .line 737
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    #@dd
    move-result v13

    #@de
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@e1
    move-result v8

    #@e2
    .line 739
    if-eqz v12, :cond_8

    #@e4
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@e6
    .line 740
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v12, :cond_a

    #@e8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@eb
    move-result v13

    #@ec
    .line 739
    :goto_3
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@ef
    move-result-object v2

    #@f0
    .line 742
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    #@f2
    neg-float v13, v13

    #@f3
    iget v14, v5, Landroid/graphics/RectF;->top:F

    #@f5
    neg-float v14, v14

    #@f6
    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    #@f9
    .line 743
    move-object/from16 v0, p5

    #@fb
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@fe
    .line 745
    new-instance v10, Landroid/graphics/Paint;

    #@100
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    #@103
    .line 746
    .local v10, "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    #@105
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@108
    .line 747
    if-eqz v12, :cond_6

    #@10a
    .line 748
    const/4 v13, 0x1

    #@10b
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@10e
    goto :goto_1

    #@10f
    .line 731
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "deviceR":Landroid/graphics/RectF;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "transformed":Z
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_9
    const/4 v12, 0x1

    #@110
    .restart local v12    # "transformed":Z
    goto :goto_2

    #@111
    .line 740
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "deviceR":Landroid/graphics/RectF;
    :cond_a
    const/4 v13, 0x1

    #@112
    goto :goto_3

    #@113
    .line 711
    nop

    #@114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 791
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 828
    if-lez p1, :cond_0

    #@4
    if-gtz p2, :cond_1

    #@6
    .line 829
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "width and height must be > 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 831
    :cond_1
    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@11
    const/4 v6, 0x1

    #@12
    move v2, p1

    #@13
    move v3, p1

    #@14
    move v4, p2

    #@15
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    #@18
    move-result-object v7

    #@19
    .line 832
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    #@1b
    .line 833
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1d
    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    #@1f
    .line 835
    :cond_2
    invoke-virtual {v7, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    #@22
    .line 836
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@24
    if-ne p3, v0, :cond_3

    #@26
    if-eqz p4, :cond_4

    #@28
    .line 842
    :cond_3
    :goto_0
    return-object v7

    #@29
    .line 837
    :cond_4
    iget-object v0, v7, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@2b
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@2e
    move-result-wide v0

    #@2f
    const/high16 v2, -0x1000000

    #@31
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    #@34
    goto :goto_0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 891
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    #@3
    .line 892
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@6
    move-result v1

    #@7
    if-ge v1, p4, :cond_0

    #@9
    .line 893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "abs(stride) must be >= width"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 895
    :cond_0
    add-int/lit8 v1, p5, -0x1

    #@14
    mul-int/2addr v1, p3

    #@15
    add-int v9, p2, v1

    #@17
    .line 896
    .local v9, "lastScanline":I
    array-length v10, p1

    #@18
    .line 897
    .local v10, "length":I
    if-ltz p2, :cond_1

    #@1a
    add-int v1, p2, p4

    #@1c
    if-le v1, v10, :cond_2

    #@1e
    .line 899
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@20
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@23
    throw v1

    #@24
    .line 897
    :cond_2
    if-ltz v9, :cond_1

    #@26
    .line 898
    add-int v1, v9, p4

    #@28
    if-gt v1, v10, :cond_1

    #@2a
    .line 901
    if-lez p4, :cond_3

    #@2c
    if-gtz p5, :cond_4

    #@2e
    .line 902
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v2, "width and height must be > 0"

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 905
    :cond_4
    move-object/from16 v0, p6

    #@39
    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@3b
    const/4 v7, 0x0

    #@3c
    move-object v1, p1

    #@3d
    move v2, p2

    #@3e
    move v3, p3

    #@3f
    move v4, p4

    #@40
    move/from16 v5, p5

    #@42
    .line 904
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    #@45
    move-result-object v8

    #@46
    .line 906
    .local v8, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    #@48
    .line 907
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@4a
    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    #@4c
    .line 909
    :cond_5
    return-object v8
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 950
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, p2

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move-object v6, p4

    #@7
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 865
    const/4 v0, 0x0

    #@1
    move-object v1, p0

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move-object v6, p5

    #@7
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 928
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    move-object v1, p0

    #@3
    move v3, p1

    #@4
    move v4, p1

    #@5
    move v5, p2

    #@6
    move-object v6, p3

    #@7
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 600
    const-class v2, Landroid/graphics/Bitmap;

    #@3
    monitor-enter v2

    #@4
    .line 602
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    #@6
    .line 603
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    #@7
    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    .line 606
    if-nez v5, :cond_0

    #@c
    .line 607
    new-instance v5, Landroid/graphics/Matrix;

    #@e
    .end local v5    # "m":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@11
    .line 610
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@14
    move-result v3

    #@15
    .line 611
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@18
    move-result v4

    #@19
    .line 612
    .local v4, "height":I
    int-to-float v0, p1

    #@1a
    int-to-float v2, v3

    #@1b
    div-float v8, v0, v2

    #@1d
    .line 613
    .local v8, "sx":F
    int-to-float v0, p2

    #@1e
    int-to-float v2, v4

    #@1f
    div-float v9, v0, v2

    #@21
    .line 614
    .local v9, "sy":F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    #@24
    move-object v0, p0

    #@25
    move v2, v1

    #@26
    move v6, p3

    #@27
    .line 615
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@2a
    move-result-object v7

    #@2b
    .line 617
    .local v7, "b":Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    #@2d
    monitor-enter v1

    #@2e
    .line 619
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    #@30
    if-nez v0, :cond_1

    #@32
    .line 620
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@34
    :cond_1
    monitor-exit v1

    #@35
    .line 624
    return-object v7

    #@36
    .line 600
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v2

    #@38
    throw v0

    #@39
    .line 617
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    :catchall_1
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0
.end method

.method static getDefaultDensity()I
    .locals 1

    #@0
    .prologue
    .line 96
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 97
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@6
    return v0

    #@7
    .line 99
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@9
    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@b
    .line 100
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@d
    return v0
.end method

.method private static native nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(J)I
.end method

.method private static native nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetPixels(J[IIIIIII)V
.end method

.method private static native nativeHasAlpha(J)Z
.end method

.method private static native nativeHasMipMap(J)Z
.end method

.method private static native nativeIsPremultiplied(J)Z
.end method

.method private static native nativeReconfigure(JIIIIZ)V
.end method

.method private static native nativeRecycle(J)Z
.end method

.method private static native nativeRefPixelRef(J)J
.end method

.method private static native nativeRowBytes(J)I
.end method

.method private static native nativeSameAs(JJ)Z
.end method

.method private static native nativeSetHasAlpha(JZZ)V
.end method

.method private static native nativeSetHasMipMap(JZ)V
.end method

.method private static native nativeSetPixel(JIII)V
.end method

.method private static native nativeSetPixels(J[IIIIIII)V
.end method

.method private static native nativeSetPremultiplied(JZ)V
.end method

.method private static native nativeWriteToParcel(JZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    #@0
    .prologue
    .line 1174
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1175
    :cond_0
    return p0

    #@5
    .line 1174
    :cond_1
    if-eq p1, p2, :cond_0

    #@7
    .line 1179
    mul-int v0, p0, p2

    #@9
    shr-int/lit8 v1, p1, 0x1

    #@b
    add-int/2addr v0, v1

    #@c
    div-int/2addr v0, p1

    #@d
    return v0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .param p0, "density"    # I

    #@0
    .prologue
    .line 91
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@2
    .line 90
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    const-wide/16 v8, 0x2000

    #@2
    .line 1018
    const-string/jumbo v0, "Can\'t compress a recycled bitmap"

    #@5
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@8
    .line 1020
    if-nez p3, :cond_0

    #@a
    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1023
    :cond_0
    if-ltz p2, :cond_1

    #@12
    const/16 v0, 0x64

    #@14
    if-le p2, v0, :cond_2

    #@16
    .line 1024
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "quality must be 0..100"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1026
    :cond_2
    const-string/jumbo v0, "Bitmap.compress"

    #@22
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@25
    .line 1027
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@27
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@2a
    move-result-wide v0

    #@2b
    iget v2, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    #@2d
    .line 1028
    const/16 v3, 0x1000

    #@2f
    new-array v5, v3, [B

    #@31
    move v3, p2

    #@32
    move-object v4, p3

    #@33
    .line 1027
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    #@36
    move-result v6

    #@37
    .line 1029
    .local v6, "result":Z
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@3a
    .line 1030
    return v6
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    #@0
    .prologue
    .line 559
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 560
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@8
    invoke-static {v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@b
    move-result-wide v2

    #@c
    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@e
    invoke-static {v2, v3, v1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    #@11
    move-result-object v0

    #@12
    .line 561
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@14
    .line 562
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@16
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@19
    .line 563
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@1b
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@1d
    .line 565
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "src"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 517
    const-string/jumbo v7, "copyPixelsFromBuffer called on recycled bitmap"

    #@3
    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 519
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@9
    move-result v4

    #@a
    .line 521
    .local v4, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    #@c
    if-eqz v7, :cond_0

    #@e
    .line 522
    const/4 v6, 0x0

    #@f
    .line 531
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v4

    #@10
    shl-long v2, v8, v6

    #@12
    .line 532
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@15
    move-result v7

    #@16
    int-to-long v0, v7

    #@17
    .line 534
    .local v0, "bitmapBytes":J
    cmp-long v7, v2, v0

    #@19
    if-gez v7, :cond_3

    #@1b
    .line 535
    new-instance v7, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v8, "Buffer not large enough for pixels"

    #@20
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v7

    #@24
    .line 523
    .end local v0    # "bitmapBytes":J
    .end local v2    # "bufferBytes":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    #@26
    if-eqz v7, :cond_1

    #@28
    .line 524
    const/4 v6, 0x1

    #@29
    .restart local v6    # "shift":I
    goto :goto_0

    #@2a
    .line 525
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 526
    const/4 v6, 0x2

    #@2f
    .restart local v6    # "shift":I
    goto :goto_0

    #@30
    .line 528
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    #@32
    const-string/jumbo v8, "unsupported Buffer subclass"

    #@35
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v7

    #@39
    .line 538
    .restart local v0    # "bitmapBytes":J
    .restart local v2    # "bufferBytes":J
    .restart local v6    # "shift":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@3b
    invoke-static {v7}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@3e
    move-result-wide v8

    #@3f
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    #@42
    .line 541
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@45
    move-result v5

    #@46
    .line 542
    .local v5, "position":I
    int-to-long v8, v5

    #@47
    shr-long v10, v0, v6

    #@49
    add-long/2addr v8, v10

    #@4a
    long-to-int v5, v8

    #@4b
    .line 543
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@4e
    .line 516
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "dst"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@3
    move-result v2

    #@4
    .line 481
    .local v2, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 482
    const/4 v6, 0x0

    #@9
    .line 491
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v2

    #@a
    shl-long v0, v8, v6

    #@c
    .line 492
    .local v0, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@f
    move-result v7

    #@10
    int-to-long v4, v7

    #@11
    .line 494
    .local v4, "pixelSize":J
    cmp-long v7, v0, v4

    #@13
    if-gez v7, :cond_3

    #@15
    .line 495
    new-instance v7, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v8, "Buffer not large enough for pixels"

    #@1a
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v7

    #@1e
    .line 483
    .end local v0    # "bufferSize":J
    .end local v4    # "pixelSize":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    #@20
    if-eqz v7, :cond_1

    #@22
    .line 484
    const/4 v6, 0x1

    #@23
    .restart local v6    # "shift":I
    goto :goto_0

    #@24
    .line 485
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 486
    const/4 v6, 0x2

    #@29
    .restart local v6    # "shift":I
    goto :goto_0

    #@2a
    .line 488
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    #@2c
    const-string/jumbo v8, "unsupported Buffer subclass"

    #@2f
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v7

    #@33
    .line 498
    .restart local v0    # "bufferSize":J
    .restart local v4    # "pixelSize":J
    .restart local v6    # "shift":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@35
    invoke-static {v7}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@38
    move-result-wide v8

    #@39
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    #@3c
    .line 501
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@3f
    move-result v3

    #@40
    .line 502
    .local v3, "position":I
    int-to-long v8, v3

    #@41
    shr-long v10, v4, v6

    #@43
    add-long/2addr v8, v10

    #@44
    long-to-int v3, v8

    #@45
    .line 503
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@48
    .line 478
    return-void
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 4

    #@0
    .prologue
    .line 575
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 576
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@8
    invoke-static {v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    .line 577
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@12
    .line 578
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@14
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@17
    .line 579
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@19
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@1b
    .line 581
    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1531
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1332
    const-string/jumbo v0, "Can\'t erase a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1333
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1334
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "cannot erase immutable bitmaps"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1336
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@17
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    #@1e
    .line 1331
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1555
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    #@0
    .prologue
    .line 1585
    const-string/jumbo v1, "Can\'t extractAlpha on a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1586
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@b
    move-result-wide v2

    #@c
    .line 1587
    .local v2, "nativePaint":J
    :goto_0
    iget-object v1, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@e
    invoke-static {v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@11
    move-result-wide v4

    #@12
    invoke-static {v4, v5, v2, v3, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    #@15
    move-result-object v0

    #@16
    .line 1588
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    #@18
    .line 1589
    new-instance v1, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v4, "Failed to extractAlpha on Bitmap"

    #@1d
    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1586
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "nativePaint":J
    :cond_0
    const-wide/16 v2, 0x0

    #@23
    .restart local v2    # "nativePaint":J
    goto :goto_0

    #@24
    .line 1591
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@26
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@28
    .line 1592
    return-object v0
.end method

.method public final getAllocationByteCount()I
    .locals 1

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1231
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1233
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@b
    array-length v0, v0

    #@c
    return v0
.end method

.method public final getByteCount()I
    .locals 2

    #@0
    .prologue
    .line 1210
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@7
    move-result v1

    #@8
    mul-int/2addr v0, v1

    #@9
    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    #@0
    .prologue
    .line 1241
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1242
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1244
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    #@16
    move-result v0

    #@17
    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getDensity()I
    .locals 2

    #@0
    .prologue
    .line 165
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 166
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 168
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@f
    return v0
.end method

.method public getGenerationId()I
    .locals 2

    #@0
    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 340
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 342
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public final getHeight()I
    .locals 2

    #@0
    .prologue
    .line 1110
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1111
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1113
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@f
    return v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    #@0
    .prologue
    .line 958
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@2
    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@2
    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 968
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 969
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@7
    .line 967
    :goto_0
    return-void

    #@8
    .line 971
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@a
    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f
    goto :goto_0
.end method

.method public getPixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1351
    const-string/jumbo v0, "Can\'t call getPixel() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1352
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    #@9
    .line 1353
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@b
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@e
    move-result-wide v0

    #@f
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    #@0
    .prologue
    .line 1381
    const-string/jumbo v0, "Can\'t call getPixels() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1382
    if-eqz p6, :cond_0

    #@8
    if-nez p7, :cond_1

    #@a
    .line 1383
    :cond_0
    return-void

    #@b
    :cond_1
    move-object v0, p0

    #@c
    move v1, p4

    #@d
    move v2, p5

    #@e
    move v3, p6

    #@f
    move/from16 v4, p7

    #@11
    move v5, p2

    #@12
    move v6, p3

    #@13
    move-object v7, p1

    #@14
    .line 1385
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    #@17
    .line 1386
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@19
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@1c
    move-result-wide v0

    #@1d
    move-object v2, p1

    #@1e
    move v3, p2

    #@1f
    move v4, p3

    #@20
    move v5, p4

    #@21
    move v6, p5

    #@22
    move v7, p6

    #@23
    move/from16 v8, p7

    #@25
    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    #@28
    .line 1380
    return-void
.end method

.method public final getRowBytes()I
    .locals 2

    #@0
    .prologue
    .line 1195
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1196
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1198
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    #@0
    .prologue
    .line 1167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@6
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@6
    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    #@8
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 1145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@6
    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@8
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    #@0
    .prologue
    .line 1156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@6
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@6
    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    #@8
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 1137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@6
    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@8
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getWidth()I
    .locals 2

    #@0
    .prologue
    .line 1102
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1103
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1105
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@f
    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    #@0
    .prologue
    .line 1256
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1257
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1259
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    #@0
    .prologue
    .line 1295
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1296
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1298
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public final isMutable()Z
    .locals 1

    #@0
    .prologue
    .line 1037
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    #@2
    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    #@0
    .prologue
    .line 1068
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1069
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1071
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    #@0
    .prologue
    .line 328
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    #@0
    .prologue
    .line 1625
    const-string/jumbo v0, "Can\'t prepareToDraw on a recycled bitmap!"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1621
    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 220
    const-string/jumbo v0, "Can\'t call reconfigure() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 221
    if-lez p1, :cond_0

    #@8
    if-gtz p2, :cond_1

    #@a
    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "width and height must be > 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 227
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@24
    if-nez v0, :cond_3

    #@26
    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v1, "native-backed bitmaps may not be reconfigured"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 231
    :cond_3
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@31
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@34
    move-result-wide v0

    #@35
    iget v4, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@37
    .line 232
    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@39
    array-length v5, v2

    #@3a
    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@3c
    move v2, p1

    #@3d
    move v3, p2

    #@3e
    .line 231
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIIZ)V

    #@41
    .line 233
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@43
    .line 234
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@45
    .line 219
    return-void
.end method

.method public recycle()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 308
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@7
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@a
    move-result-wide v0

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 309
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@13
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@16
    move-result-wide v0

    #@17
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 314
    iput-object v4, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@1f
    .line 315
    iput-object v4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@21
    .line 317
    :cond_0
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@24
    .line 307
    :cond_1
    return-void
.end method

.method public final refSkPixelRef()J
    .locals 2

    #@0
    .prologue
    .line 1634
    const-string/jumbo v0, "Can\'t refSkPixelRef on a recycled bitmap!"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1635
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRefPixelRef(J)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method reinit(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "requestPremultiplied"    # Z

    #@0
    .prologue
    .line 139
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@2
    .line 140
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@4
    .line 141
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@6
    .line 138
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1601
    const-string/jumbo v0, "Can\'t call sameAs on a recycled bitmap!"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1602
    if-ne p0, p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1603
    :cond_0
    if-nez p1, :cond_1

    #@c
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1604
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 1605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Can\'t compare to a recycled bitmap!"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1607
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@1f
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@22
    move-result-wide v0

    #@23
    iget-object v2, p1, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@25
    invoke-static {v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@28
    move-result-wide v2

    #@29
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    #@b
    .line 281
    return-void
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    #@0
    .prologue
    .line 185
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@2
    .line 184
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3
    .param p1, "hasAlpha"    # Z

    #@0
    .prologue
    .line 1273
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1274
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@8
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@b
    move-result-wide v0

    #@c
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@e
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    #@11
    .line 1272
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2
    .param p1, "hasMipMap"    # Z

    #@0
    .prologue
    .line 1322
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1323
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@8
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@b
    move-result-wide v0

    #@c
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    #@f
    .line 1321
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    #@0
    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    #@b
    .line 265
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .param p1, "chunk"    # [B

    #@0
    .prologue
    .line 293
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@2
    .line 292
    return-void
.end method

.method public setPixel(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    #@0
    .prologue
    .line 1462
    const-string/jumbo v0, "Can\'t call setPixel() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1463
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1464
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v0

    #@12
    .line 1466
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    #@15
    .line 1467
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@17
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    #@1e
    .line 1461
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    #@0
    .prologue
    .line 1495
    const-string/jumbo v0, "Can\'t call setPixels() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1496
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1497
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v0

    #@12
    .line 1499
    :cond_0
    if-eqz p6, :cond_1

    #@14
    if-nez p7, :cond_2

    #@16
    .line 1500
    :cond_1
    return-void

    #@17
    :cond_2
    move-object v0, p0

    #@18
    move v1, p4

    #@19
    move v2, p5

    #@1a
    move v3, p6

    #@1b
    move/from16 v4, p7

    #@1d
    move v5, p2

    #@1e
    move v6, p3

    #@1f
    move-object v7, p1

    #@20
    .line 1502
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    #@23
    .line 1503
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@25
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@28
    move-result-wide v0

    #@29
    move-object v2, p1

    #@2a
    move v3, p2

    #@2b
    move v4, p3

    #@2c
    move v5, p4

    #@2d
    move v6, p5

    #@2e
    move v7, p6

    #@2f
    move/from16 v8, p7

    #@31
    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    #@34
    .line 1494
    return-void
.end method

.method public final setPremultiplied(Z)V
    .locals 2
    .param p1, "premultiplied"    # Z

    #@0
    .prologue
    .line 1095
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1096
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@8
    .line 1097
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@a
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    #@11
    .line 1094
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    #@0
    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    #@b
    .line 249
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1540
    const-string/jumbo v0, "Can\'t parcel a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1541
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    #@8
    invoke-static {v0}, Landroid/graphics/Bitmap$BitmapFinalizer;->-get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J

    #@b
    move-result-wide v0

    #@c
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    #@e
    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@10
    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1542
    new-instance v0, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v1, "native writeToParcel failed"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1539
    :cond_0
    return-void
.end method
