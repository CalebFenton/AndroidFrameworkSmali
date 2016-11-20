.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$1;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

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

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mBuffer:[B

.field mDensity:I

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

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
    sput-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 86
    const/4 v0, -0x1

    #@1
    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@3
    .line 1556
    new-instance v0, Landroid/graphics/Bitmap$1;

    #@5
    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    #@8
    .line 1555
    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    .line 36
    return-void
.end method

.method constructor <init>(J[BIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 11
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
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    #@6
    move-result v3

    #@7
    iput v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@9
    .line 114
    const-wide/16 v4, 0x0

    #@b
    cmp-long v3, p1, v4

    #@d
    if-nez v3, :cond_0

    #@f
    .line 115
    new-instance v3, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v4, "internal error: native bitmap is 0"

    #@14
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 118
    :cond_0
    iput p4, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@1a
    .line 119
    move/from16 v0, p5

    #@1c
    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@1e
    .line 120
    move/from16 v0, p7

    #@20
    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    #@22
    .line 121
    move/from16 v0, p8

    #@24
    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@26
    .line 122
    iput-object p3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@28
    .line 124
    move-object/from16 v0, p9

    #@2a
    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@2c
    .line 125
    move-object/from16 v0, p10

    #@2e
    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@30
    .line 126
    if-ltz p6, :cond_1

    #@32
    .line 127
    move/from16 v0, p6

    #@34
    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@36
    .line 130
    :cond_1
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@38
    .line 131
    const-wide/16 v6, 0x20

    #@3a
    .line 132
    .local v6, "nativeSize":J
    if-nez p3, :cond_2

    #@3c
    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@3f
    move-result v3

    #@40
    int-to-long v4, v3

    #@41
    .line 131
    const-wide/16 v8, 0x20

    #@43
    .line 133
    add-long v6, v8, v4

    #@45
    .line 135
    :cond_2
    new-instance v2, Llibcore/util/NativeAllocationRegistry;

    #@47
    .line 136
    const-class v3, Landroid/graphics/Bitmap;

    #@49
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    #@50
    move-result-wide v4

    #@51
    .line 135
    invoke-direct/range {v2 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    #@54
    .line 137
    .local v2, "registry":Llibcore/util/NativeAllocationRegistry;
    invoke-virtual {v2, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@57
    .line 113
    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 1446
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    #@3
    .line 1447
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@6
    move-result v0

    #@7
    if-lt p1, v0, :cond_0

    #@9
    .line 1448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "x must be < bitmap.width()"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1450
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@15
    move-result v0

    #@16
    if-lt p2, v0, :cond_1

    #@18
    .line 1451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "y must be < bitmap.height()"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1445
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
    .line 1469
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    #@3
    .line 1470
    if-gez p3, :cond_0

    #@5
    .line 1471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "width must be >= 0"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 1473
    :cond_0
    if-gez p4, :cond_1

    #@10
    .line 1474
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v3, "height must be >= 0"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 1476
    :cond_1
    add-int v2, p1, p3

    #@1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@1e
    move-result v3

    #@1f
    if-le v2, v3, :cond_2

    #@21
    .line 1477
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@23
    .line 1478
    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    #@26
    .line 1477
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1480
    :cond_2
    add-int v2, p2, p4

    #@2c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@2f
    move-result v3

    #@30
    if-le v2, v3, :cond_3

    #@32
    .line 1481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@34
    .line 1482
    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    #@37
    .line 1481
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 1484
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    #@3e
    move-result v2

    #@3f
    if-ge v2, p3, :cond_4

    #@41
    .line 1485
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v3, "abs(stride) must be >= width"

    #@46
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2

    #@4a
    .line 1487
    :cond_4
    add-int/lit8 v2, p4, -0x1

    #@4c
    mul-int/2addr v2, p6

    #@4d
    add-int v0, p5, v2

    #@4f
    .line 1488
    .local v0, "lastScanline":I
    array-length v1, p7

    #@50
    .line 1489
    .local v1, "length":I
    if-ltz p5, :cond_5

    #@52
    add-int v2, p5, p3

    #@54
    if-le v2, v1, :cond_6

    #@56
    .line 1492
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@58
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@5b
    throw v2

    #@5c
    .line 1490
    :cond_6
    if-ltz v0, :cond_5

    #@5e
    .line 1491
    add-int v2, v0, p3

    #@60
    if-gt v2, v1, :cond_5

    #@62
    .line 1468
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    .line 381
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    #@0
    .prologue
    .line 409
    if-gtz p0, :cond_0

    #@2
    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "width must be > 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 412
    :cond_0
    if-gtz p1, :cond_1

    #@d
    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "height must be > 0"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 408
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 394
    if-gez p0, :cond_0

    #@2
    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "x must be >= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 397
    :cond_0
    if-gez p1, :cond_1

    #@d
    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "y must be >= 0"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 393
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
    .line 823
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
    .line 856
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
    .line 681
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
    .line 701
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
    .line 731
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    #@3
    .line 732
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    #@6
    .line 733
    add-int v13, p1, p3

    #@8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@b
    move-result v14

    #@c
    if-le v13, v14, :cond_0

    #@e
    .line 734
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    #@13
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v13

    #@17
    .line 736
    :cond_0
    add-int v13, p2, p4

    #@19
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c
    move-result v14

    #@1d
    if-le v13, v14, :cond_1

    #@1f
    .line 737
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    #@24
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v13

    #@28
    .line 741
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
    .line 742
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
    .line 741
    if-eqz v13, :cond_3

    #@4a
    .line 743
    :cond_2
    return-object p0

    #@4b
    .line 746
    :cond_3
    move/from16 v9, p3

    #@4d
    .line 747
    .local v9, "neww":I
    move/from16 v8, p4

    #@4f
    .line 748
    .local v8, "newh":I
    new-instance v3, Landroid/graphics/Canvas;

    #@51
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    #@54
    .line 752
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
    .line 753
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
    .line 755
    .local v6, "dstR":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@74
    .line 756
    .local v7, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@77
    move-result-object v4

    #@78
    .line 758
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    #@7a
    .line 759
    invoke-static {}, Landroid/graphics/Bitmap;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

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
    .line 770
    :pswitch_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@89
    .line 775
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
    .line 776
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@94
    move-result v13

    #@95
    move/from16 v0, p3

    #@97
    move/from16 v1, p4

    #@99
    invoke-static {v0, v1, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@9c
    move-result-object v2

    #@9d
    .line 777
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    #@9e
    .line 802
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    #@a0
    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@a2
    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    #@a4
    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@a7
    move-result v13

    #@a8
    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    #@ab
    .line 804
    move-object/from16 v0, p0

    #@ad
    iget-boolean v13, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@af
    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@b2
    .line 806
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@b5
    .line 807
    move-object/from16 v0, p0

    #@b7
    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@ba
    .line 808
    const/4 v13, 0x0

    #@bb
    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@be
    .line 810
    return-object v2

    #@bf
    .line 761
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@c1
    goto :goto_0

    #@c2
    .line 764
    :pswitch_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@c4
    goto :goto_0

    #@c5
    .line 779
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    #@c8
    move-result v13

    #@c9
    if-eqz v13, :cond_9

    #@cb
    const/4 v12, 0x0

    #@cc
    .line 781
    .local v12, "transformed":Z
    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    #@ce
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@d1
    .line 782
    .local v5, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    #@d3
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@d6
    .line 784
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    #@d9
    move-result v13

    #@da
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@dd
    move-result v9

    #@de
    .line 785
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    #@e1
    move-result v13

    #@e2
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@e5
    move-result v8

    #@e6
    .line 787
    if-eqz v12, :cond_8

    #@e8
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@ea
    .line 788
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v12, :cond_a

    #@ec
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@ef
    move-result v13

    #@f0
    .line 787
    :goto_3
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@f3
    move-result-object v2

    #@f4
    .line 790
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    #@f6
    neg-float v13, v13

    #@f7
    iget v14, v5, Landroid/graphics/RectF;->top:F

    #@f9
    neg-float v14, v14

    #@fa
    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    #@fd
    .line 791
    move-object/from16 v0, p5

    #@ff
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@102
    .line 793
    new-instance v10, Landroid/graphics/Paint;

    #@104
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    #@107
    .line 794
    .local v10, "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    #@109
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@10c
    .line 795
    if-eqz v12, :cond_6

    #@10e
    .line 796
    const/4 v13, 0x1

    #@10f
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@112
    goto :goto_1

    #@113
    .line 779
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "deviceR":Landroid/graphics/RectF;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "transformed":Z
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_9
    const/4 v12, 0x1

    #@114
    .restart local v12    # "transformed":Z
    goto :goto_2

    #@115
    .line 788
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "deviceR":Landroid/graphics/RectF;
    :cond_a
    const/4 v13, 0x1

    #@116
    goto :goto_3

    #@117
    .line 759
    nop

    #@118
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
    .line 839
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
    .line 876
    if-lez p1, :cond_0

    #@4
    if-gtz p2, :cond_1

    #@6
    .line 877
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "width and height must be > 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 879
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
    .line 880
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    #@1b
    .line 881
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1d
    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    #@1f
    .line 883
    :cond_2
    invoke-virtual {v7, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    #@22
    .line 884
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@24
    if-ne p3, v0, :cond_3

    #@26
    if-eqz p4, :cond_4

    #@28
    .line 890
    :cond_3
    :goto_0
    return-object v7

    #@29
    .line 885
    :cond_4
    iget-wide v0, v7, Landroid/graphics/Bitmap;->mNativePtr:J

    #@2b
    const/high16 v2, -0x1000000

    #@2d
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    #@30
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
    .line 939
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    #@3
    .line 940
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@6
    move-result v1

    #@7
    if-ge v1, p4, :cond_0

    #@9
    .line 941
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "abs(stride) must be >= width"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 943
    :cond_0
    add-int/lit8 v1, p5, -0x1

    #@14
    mul-int/2addr v1, p3

    #@15
    add-int v9, p2, v1

    #@17
    .line 944
    .local v9, "lastScanline":I
    array-length v10, p1

    #@18
    .line 945
    .local v10, "length":I
    if-ltz p2, :cond_1

    #@1a
    add-int v1, p2, p4

    #@1c
    if-le v1, v10, :cond_2

    #@1e
    .line 947
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@20
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@23
    throw v1

    #@24
    .line 945
    :cond_2
    if-ltz v9, :cond_1

    #@26
    .line 946
    add-int v1, v9, p4

    #@28
    if-gt v1, v10, :cond_1

    #@2a
    .line 949
    if-lez p4, :cond_3

    #@2c
    if-gtz p5, :cond_4

    #@2e
    .line 950
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v2, "width and height must be > 0"

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 953
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
    .line 952
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    #@45
    move-result-object v8

    #@46
    .line 954
    .local v8, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    #@48
    .line 955
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@4a
    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    #@4c
    .line 957
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
    .line 998
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
    .line 913
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
    .line 976
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
    .line 648
    const-class v2, Landroid/graphics/Bitmap;

    #@3
    monitor-enter v2

    #@4
    .line 650
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    #@6
    .line 651
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    #@7
    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    .line 654
    if-nez v5, :cond_0

    #@c
    .line 655
    new-instance v5, Landroid/graphics/Matrix;

    #@e
    .end local v5    # "m":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@11
    .line 658
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@14
    move-result v3

    #@15
    .line 659
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@18
    move-result v4

    #@19
    .line 660
    .local v4, "height":I
    int-to-float v0, p1

    #@1a
    int-to-float v2, v3

    #@1b
    div-float v8, v0, v2

    #@1d
    .line 661
    .local v8, "sx":F
    int-to-float v0, p2

    #@1e
    int-to-float v2, v4

    #@1f
    div-float v9, v0, v2

    #@21
    .line 662
    .local v9, "sy":F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    #@24
    move-object v0, p0

    #@25
    move v2, v1

    #@26
    move v6, p3

    #@27
    .line 663
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@2a
    move-result-object v7

    #@2b
    .line 665
    .local v7, "b":Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    #@2d
    monitor-enter v1

    #@2e
    .line 667
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    #@30
    if-nez v0, :cond_1

    #@32
    .line 668
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@34
    :cond_1
    monitor-exit v1

    #@35
    .line 672
    return-object v7

    #@36
    .line 648
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
    .line 665
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
    .line 99
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 100
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@6
    return v0

    #@7
    .line 102
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@9
    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@b
    .line 103
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

.method private static native nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetNativeFinalizer()J
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

.method private static native nativePrepareToDraw(J)V
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
    .line 1222
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1223
    :cond_0
    return p0

    #@5
    .line 1222
    :cond_1
    if-eq p1, p2, :cond_0

    #@7
    .line 1227
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
    .line 94
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    #@2
    .line 93
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
    .line 1066
    const-string/jumbo v0, "Can\'t compress a recycled bitmap"

    #@5
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@8
    .line 1068
    if-nez p3, :cond_0

    #@a
    .line 1069
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1071
    :cond_0
    if-ltz p2, :cond_1

    #@12
    const/16 v0, 0x64

    #@14
    if-le p2, v0, :cond_2

    #@16
    .line 1072
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "quality must be 0..100"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1074
    :cond_2
    const-string/jumbo v0, "Bitmap.compress"

    #@22
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@25
    .line 1075
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@27
    iget v2, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    #@29
    .line 1076
    const/16 v3, 0x1000

    #@2b
    new-array v5, v3, [B

    #@2d
    move v3, p2

    #@2e
    move-object v4, p3

    #@2f
    .line 1075
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    #@32
    move-result v6

    #@33
    .line 1077
    .local v6, "result":Z
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 1078
    return v6
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    #@0
    .prologue
    .line 591
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 592
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@a
    invoke-static {v2, v3, v1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    #@d
    move-result-object v0

    #@e
    .line 593
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@10
    .line 594
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@12
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@15
    .line 595
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@17
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@19
    .line 597
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "src"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 549
    const-string/jumbo v7, "copyPixelsFromBuffer called on recycled bitmap"

    #@3
    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 551
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@9
    move-result v4

    #@a
    .line 553
    .local v4, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    #@c
    if-eqz v7, :cond_0

    #@e
    .line 554
    const/4 v6, 0x0

    #@f
    .line 563
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v4

    #@10
    shl-long v2, v8, v6

    #@12
    .line 564
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@15
    move-result v7

    #@16
    int-to-long v0, v7

    #@17
    .line 566
    .local v0, "bitmapBytes":J
    cmp-long v7, v2, v0

    #@19
    if-gez v7, :cond_3

    #@1b
    .line 567
    new-instance v7, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v8, "Buffer not large enough for pixels"

    #@20
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v7

    #@24
    .line 555
    .end local v0    # "bitmapBytes":J
    .end local v2    # "bufferBytes":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    #@26
    if-eqz v7, :cond_1

    #@28
    .line 556
    const/4 v6, 0x1

    #@29
    .restart local v6    # "shift":I
    goto :goto_0

    #@2a
    .line 557
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 558
    const/4 v6, 0x2

    #@2f
    .restart local v6    # "shift":I
    goto :goto_0

    #@30
    .line 560
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
    .line 570
    .restart local v0    # "bitmapBytes":J
    .restart local v2    # "bufferBytes":J
    .restart local v6    # "shift":I
    :cond_3
    iget-wide v8, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@3b
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    #@3e
    .line 573
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@41
    move-result v5

    #@42
    .line 574
    .local v5, "position":I
    int-to-long v8, v5

    #@43
    shr-long v10, v0, v6

    #@45
    add-long/2addr v8, v10

    #@46
    long-to-int v5, v8

    #@47
    .line 575
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@4a
    .line 548
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "dst"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 511
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@3
    move-result v2

    #@4
    .line 513
    .local v2, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 514
    const/4 v6, 0x0

    #@9
    .line 523
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v2

    #@a
    shl-long v0, v8, v6

    #@c
    .line 524
    .local v0, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@f
    move-result v7

    #@10
    int-to-long v4, v7

    #@11
    .line 526
    .local v4, "pixelSize":J
    cmp-long v7, v0, v4

    #@13
    if-gez v7, :cond_3

    #@15
    .line 527
    new-instance v7, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v8, "Buffer not large enough for pixels"

    #@1a
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v7

    #@1e
    .line 515
    .end local v0    # "bufferSize":J
    .end local v4    # "pixelSize":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    #@20
    if-eqz v7, :cond_1

    #@22
    .line 516
    const/4 v6, 0x1

    #@23
    .restart local v6    # "shift":I
    goto :goto_0

    #@24
    .line 517
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 518
    const/4 v6, 0x2

    #@29
    .restart local v6    # "shift":I
    goto :goto_0

    #@2a
    .line 520
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
    .line 530
    .restart local v0    # "bufferSize":J
    .restart local v4    # "pixelSize":J
    .restart local v6    # "shift":I
    :cond_3
    iget-wide v8, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@35
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    #@38
    .line 533
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@3b
    move-result v3

    #@3c
    .line 534
    .local v3, "position":I
    int-to-long v8, v3

    #@3d
    shr-long v10, v4, v6

    #@3f
    add-long/2addr v8, v10

    #@40
    long-to-int v3, v8

    #@41
    .line 535
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@44
    .line 510
    return-void
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 4

    #@0
    .prologue
    .line 607
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 608
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    #@b
    move-result-object v0

    #@c
    .line 609
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@e
    .line 610
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@13
    .line 611
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@15
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@17
    .line 613
    :cond_0
    return-object v0
.end method

.method public createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 623
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 624
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@a
    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;

    #@d
    move-result-object v0

    #@e
    .line 625
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@10
    .line 626
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@12
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    #@15
    .line 627
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@17
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@19
    .line 629
    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1579
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1380
    const-string/jumbo v0, "Can\'t erase a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1381
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1382
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "cannot erase immutable bitmaps"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1384
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@17
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    #@1a
    .line 1379
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1603
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
    .line 1633
    const-string/jumbo v1, "Can\'t extractAlpha on a recycled bitmap"

    #@3
    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1634
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    #@b
    move-result-wide v2

    #@c
    .line 1635
    .local v2, "nativePaint":J
    :goto_0
    iget-wide v4, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@e
    invoke-static {v4, v5, v2, v3, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    #@11
    move-result-object v0

    #@12
    .line 1636
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    #@14
    .line 1637
    new-instance v1, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v4, "Failed to extractAlpha on Bitmap"

    #@19
    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 1634
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "nativePaint":J
    :cond_0
    const-wide/16 v2, 0x0

    #@1f
    .restart local v2    # "nativePaint":J
    goto :goto_0

    #@20
    .line 1639
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@22
    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@24
    .line 1640
    return-object v0
.end method

.method public final getAllocationByteCount()I
    .locals 1

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1279
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1281
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
    .line 1258
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
    .line 1289
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1290
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1292
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public getDensity()I
    .locals 2

    #@0
    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 180
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 182
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@f
    return v0
.end method

.method public getGenerationId()I
    .locals 2

    #@0
    .prologue
    .line 371
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 372
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 374
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final getHeight()I
    .locals 2

    #@0
    .prologue
    .line 1158
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1159
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1161
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@f
    return v0
.end method

.method getNativeInstance()J
    .locals 2

    #@0
    .prologue
    .line 144
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    #@0
    .prologue
    .line 1006
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@2
    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    #@0
    .prologue
    .line 1025
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@2
    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1017
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@7
    .line 1015
    :goto_0
    return-void

    #@8
    .line 1019
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
    .line 1399
    const-string/jumbo v0, "Can\'t call getPixel() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1400
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    #@9
    .line 1401
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    #@e
    move-result v0

    #@f
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
    .line 1429
    const-string/jumbo v0, "Can\'t call getPixels() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1430
    if-eqz p6, :cond_0

    #@8
    if-nez p7, :cond_1

    #@a
    .line 1431
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
    .line 1433
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    #@17
    .line 1434
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@19
    move-object v2, p1

    #@1a
    move v3, p2

    #@1b
    move v4, p3

    #@1c
    move v5, p4

    #@1d
    move v6, p5

    #@1e
    move v7, p6

    #@1f
    move/from16 v8, p7

    #@21
    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    #@24
    .line 1428
    return-void
.end method

.method public final getRowBytes()I
    .locals 2

    #@0
    .prologue
    .line 1243
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1244
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1246
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    #@0
    .prologue
    .line 1215
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
    .line 1177
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
    .line 1193
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
    .line 1204
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
    .line 1169
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
    .line 1185
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
    .line 1150
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1151
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1153
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@f
    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    #@0
    .prologue
    .line 1304
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1305
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1307
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    #@0
    .prologue
    .line 1343
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1344
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1346
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final isMutable()Z
    .locals 1

    #@0
    .prologue
    .line 1085
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    #@2
    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    #@0
    .prologue
    .line 1116
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1117
    const-string/jumbo v0, "Bitmap"

    #@7
    const-string/jumbo v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1119
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    #@0
    .prologue
    .line 360
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@2
    return v0
.end method

.method public prepareToDraw()V
    .locals 2

    #@0
    .prologue
    .line 1670
    const-string/jumbo v0, "Can\'t prepareToDraw on a recycled bitmap!"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1673
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    #@b
    .line 1669
    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 252
    const-string/jumbo v0, "Can\'t call reconfigure() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 253
    if-lez p1, :cond_0

    #@8
    if-gtz p2, :cond_1

    #@a
    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "width and height must be > 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 259
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@24
    if-nez v0, :cond_3

    #@26
    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v1, "native-backed bitmaps may not be reconfigured"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 263
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@31
    iget v4, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    #@33
    .line 264
    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@35
    array-length v5, v2

    #@36
    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@38
    move v2, p1

    #@39
    move v3, p2

    #@3a
    .line 263
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIIZ)V

    #@3d
    .line 265
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@3f
    .line 266
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@41
    .line 251
    return-void
.end method

.method public recycle()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 340
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 341
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@f
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 346
    iput-object v4, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    #@17
    .line 347
    iput-object v4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@19
    .line 349
    :cond_0
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    #@1c
    .line 339
    :cond_1
    return-void
.end method

.method public final refSkPixelRef()J
    .locals 2

    #@0
    .prologue
    .line 1682
    const-string/jumbo v0, "Can\'t refSkPixelRef on a recycled bitmap!"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1683
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
    .line 153
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    #@2
    .line 154
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    #@4
    .line 155
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@6
    .line 152
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1649
    const-string/jumbo v0, "Can\'t call sameAs on a recycled bitmap!"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1650
    if-ne p0, p1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1651
    :cond_0
    if-nez p1, :cond_1

    #@c
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1652
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 1653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Can\'t compare to a recycled bitmap!"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1655
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@1f
    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    #@21
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    #@0
    .prologue
    .line 314
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
    .line 313
    return-void
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    #@0
    .prologue
    .line 199
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@2
    .line 198
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3
    .param p1, "hasAlpha"    # Z

    #@0
    .prologue
    .line 1321
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1322
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@a
    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    #@d
    .line 1320
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2
    .param p1, "hasMipMap"    # Z

    #@0
    .prologue
    .line 1370
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1371
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    #@b
    .line 1369
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    #@0
    .prologue
    .line 298
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
    .line 297
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .param p1, "chunk"    # [B

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    #@2
    .line 324
    return-void
.end method

.method public setPixel(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    #@0
    .prologue
    .line 1510
    const-string/jumbo v0, "Can\'t call setPixel() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1511
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1512
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v0

    #@12
    .line 1514
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    #@15
    .line 1515
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@17
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    #@1a
    .line 1509
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
    .line 1543
    const-string/jumbo v0, "Can\'t call setPixels() on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1544
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1545
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v0

    #@12
    .line 1547
    :cond_0
    if-eqz p6, :cond_1

    #@14
    if-nez p7, :cond_2

    #@16
    .line 1548
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
    .line 1550
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    #@23
    .line 1551
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@25
    move-object v2, p1

    #@26
    move v3, p2

    #@27
    move v4, p3

    #@28
    move v5, p4

    #@29
    move v6, p5

    #@2a
    move v7, p6

    #@2b
    move/from16 v8, p7

    #@2d
    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    #@30
    .line 1542
    return-void
.end method

.method public final setPremultiplied(Z)V
    .locals 2
    .param p1, "premultiplied"    # Z

    #@0
    .prologue
    .line 1143
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1144
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    #@8
    .line 1145
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@a
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    #@d
    .line 1142
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    #@0
    .prologue
    .line 282
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
    .line 281
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1588
    const-string/jumbo v0, "Can\'t parcel a recycled bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 1589
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    #@8
    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    #@a
    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    #@c
    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 1590
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v1, "native writeToParcel failed"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1587
    :cond_0
    return-void
.end method
