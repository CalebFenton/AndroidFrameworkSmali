.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$DumpData;,
        Landroid/graphics/Bitmap$CompressFormat;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DENSITY_NONE:I = 0x0

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Bitmap"

.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static blacklist dumpData:Landroid/graphics/Bitmap$DumpData;

.field private static final blacklist sAllBitmaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sDefaultDensity:I


# instance fields
.field private greylist-max-o mColorSpace:Landroid/graphics/ColorSpace;

.field greylist-max-o mDensity:I

.field private blacklist mGainmap:Landroid/graphics/Gainmap;

.field private blacklist mHardwareBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mHeight:I

.field private blacklist mId:J

.field private final greylist mNativePtr:J

.field private greylist-max-p mNinePatchChunk:[B

.field private greylist-max-r mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private greylist-max-o mRecycled:Z

.field private greylist-max-o mRequestPremultiplied:Z

.field private greylist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .registers 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 135
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    .line 1579
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    .line 2351
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-p <init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .registers 21
    .param p1, "nativeBitmap"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "density"    # I
    .param p6, "requestPremultiplied"    # Z
    .param p7, "ninePatchChunk"    # [B
    .param p8, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;

    .line 162
    const-wide/16 v1, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Landroid/graphics/Bitmap;-><init>(JJIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V

    .line 164
    return-void
.end method

.method constructor blacklist <init>(JJIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V
    .registers 16
    .param p1, "id"    # J
    .param p3, "nativeBitmap"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "density"    # I
    .param p8, "requestPremultiplied"    # Z
    .param p9, "ninePatchChunk"    # [B
    .param p10, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;
    .param p11, "fromMalloc"    # Z

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 170
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_3d

    .line 174
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mId:J

    .line 175
    iput p5, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 176
    iput p6, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 177
    iput-boolean p8, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 178
    iput-object p9, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 179
    iput-object p10, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 180
    if-ltz p7, :cond_1f

    .line 181
    iput p7, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 184
    :cond_1f
    iput-wide p3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 186
    .local v0, "allocationByteCount":I
    int-to-long v1, v0

    invoke-static {p11, v1, v2}, Landroid/graphics/Bitmap;->getRegistry(ZJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v1

    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 188
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 189
    :try_start_32
    sget-object v2, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v2

    .line 171
    .end local v0    # "allocationByteCount":I
    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkHardware(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_9

    .line 446
    return-void

    .line 444
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelAccess(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2241
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 2245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_10

    .line 2248
    return-void

    .line 2246
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2243
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelsAccess(IIIIII[I)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    .line 2264
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 2265
    if-ltz p3, :cond_58

    .line 2268
    if-ltz p4, :cond_4f

    .line 2271
    add-int v0, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_46

    .line 2275
    add-int v0, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 2279
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p3, :cond_35

    .line 2282
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p6

    add-int/2addr v0, p5

    .line 2283
    .local v0, "lastScanline":I
    array-length v1, p7

    .line 2284
    .local v1, "length":I
    if-ltz p5, :cond_2f

    add-int v2, p5, p3

    if-gt v2, v1, :cond_2f

    if-ltz v0, :cond_2f

    add-int v2, v0, p3

    if-gt v2, v1, :cond_2f

    .line 2289
    return-void

    .line 2287
    :cond_2f
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2280
    .end local v0    # "lastScanline":I
    .end local v1    # "length":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2276
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y + height must be <= bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2272
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x + width must be <= bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2269
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2266
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkWidthHeight(II)V
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 470
    if-lez p0, :cond_e

    .line 473
    if-lez p1, :cond_5

    .line 476
    return-void

    .line 474
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkXYSign(II)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 455
    if-ltz p0, :cond_e

    .line 458
    if-ltz p1, :cond_5

    .line 461
    return-void

    .line 459
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist clamp(FLandroid/graphics/ColorSpace;I)F
    .registers 5
    .param p0, "value"    # F
    .param p1, "cs"    # Landroid/graphics/ColorSpace;
    .param p2, "index"    # I

    .line 2156
    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1112
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .line 1153
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1181
    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "width":I
    .end local p1    # "height":I
    .end local p2    # "config":Landroid/graphics/Bitmap$Config;
    .end local p3    # "hasAlpha":Z
    .end local p4    # "colorSpace":Landroid/graphics/ColorSpace;
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "config":Landroid/graphics/Bitmap$Config;
    .local v4, "hasAlpha":Z
    .local v5, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 883
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 904
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "source":Landroid/graphics/Bitmap;
    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v0, "source":Landroid/graphics/Bitmap;
    .local v1, "x":I
    .local v2, "y":I
    .local v3, "width":I
    .local v4, "height":I
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .registers 35
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .line 942
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 943
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 944
    add-int v5, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v5, v7, :cond_185

    .line 947
    add-int v5, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gt v5, v7, :cond_17c

    .line 950
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_174

    .line 955
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    if-nez v5, :cond_47

    if-nez v1, :cond_47

    if-nez v2, :cond_47

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_47

    .line 956
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_47

    if-eqz v6, :cond_46

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 957
    :cond_46
    return-object v0

    .line 960
    :cond_47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    if-ne v5, v7, :cond_52

    move v5, v8

    goto :goto_53

    :cond_52
    const/4 v5, 0x0

    :goto_53
    move v14, v5

    .line 961
    .local v14, "isHardware":Z
    if-eqz v14, :cond_61

    .line 962
    invoke-direct {v0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 963
    iget-wide v9, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v9, v10}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .end local p0    # "source":Landroid/graphics/Bitmap;
    .local v0, "source":Landroid/graphics/Bitmap;
    goto :goto_62

    .line 961
    .end local v0    # "source":Landroid/graphics/Bitmap;
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_61
    move-object v5, v0

    .line 966
    .end local p0    # "source":Landroid/graphics/Bitmap;
    .local v5, "source":Landroid/graphics/Bitmap;
    :goto_62
    move/from16 v16, p3

    .line 967
    .local v16, "neww":I
    move/from16 v17, p4

    .line 971
    .local v17, "newh":I
    new-instance v10, Landroid/graphics/Rect;

    add-int v0, v1, v3

    add-int v7, v2, v4

    invoke-direct {v10, v1, v2, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 972
    .local v10, "srcR":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/RectF;

    int-to-float v0, v3

    int-to-float v7, v4

    const/4 v9, 0x0

    invoke-direct {v11, v9, v9, v0, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 973
    .local v11, "dstR":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 975
    .local v12, "deviceR":Landroid/graphics/RectF;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 976
    .local v0, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v21

    .line 978
    .local v21, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v21, :cond_9f

    .line 979
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_18e

    .line 993
    :pswitch_8b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v0

    goto :goto_a1

    .line 987
    :pswitch_90
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 988
    move-object/from16 v18, v0

    goto :goto_a1

    .line 981
    :pswitch_95
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 982
    move-object/from16 v18, v0

    goto :goto_a1

    .line 984
    :pswitch_9a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 985
    move-object/from16 v18, v0

    goto :goto_a1

    .line 978
    :cond_9f
    move-object/from16 v18, v0

    .line 998
    .end local v0    # "newConfig":Landroid/graphics/Bitmap$Config;
    .local v18, "newConfig":Landroid/graphics/Bitmap$Config;
    :goto_a1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v20

    .line 1000
    .local v20, "cs":Landroid/graphics/ColorSpace;
    if-eqz v6, :cond_118

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_b1

    move/from16 v15, p6

    goto/16 :goto_11a

    .line 1004
    :cond_b1
    invoke-virtual {v6}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v0

    xor-int/2addr v0, v8

    .line 1006
    .local v0, "transformed":Z
    invoke-virtual {v6, v12, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1008
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 1009
    .end local v16    # "neww":I
    .local v23, "neww":I
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 1011
    .end local v17    # "newh":I
    .local v24, "newh":I
    move-object/from16 v7, v18

    .line 1012
    .local v7, "transformedConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v0, :cond_e9

    .line 1013
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v7, v9, :cond_e9

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v7, v9, :cond_e9

    .line 1014
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1015
    if-nez v20, :cond_e4

    .line 1016
    sget-object v9, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v9}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v20

    move-object/from16 v25, v7

    move-object/from16 v27, v20

    goto :goto_ed

    .line 1015
    :cond_e4
    move-object/from16 v25, v7

    move-object/from16 v27, v20

    goto :goto_ed

    .line 1021
    :cond_e9
    move-object/from16 v25, v7

    move-object/from16 v27, v20

    .end local v7    # "transformedConfig":Landroid/graphics/Bitmap$Config;
    .end local v20    # "cs":Landroid/graphics/ColorSpace;
    .local v25, "transformedConfig":Landroid/graphics/Bitmap$Config;
    .local v27, "cs":Landroid/graphics/ColorSpace;
    :goto_ed
    if-nez v0, :cond_f9

    .line 1022
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    if-eqz v7, :cond_f6

    goto :goto_f9

    :cond_f6
    const/16 v26, 0x0

    goto :goto_fb

    :cond_f9
    :goto_f9
    move/from16 v26, v8

    .line 1021
    :goto_fb
    const/16 v22, 0x0

    invoke-static/range {v22 .. v27}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1024
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1025
    .local v9, "paint":Landroid/graphics/Paint;
    move/from16 v15, p6

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1026
    if-eqz v0, :cond_110

    .line 1027
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1033
    .end local v0    # "transformed":Z
    .end local v25    # "transformedConfig":Landroid/graphics/Bitmap$Config;
    :cond_110
    move-object v0, v7

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v20, v27

    goto :goto_129

    .line 1000
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v23    # "neww":I
    .end local v24    # "newh":I
    .end local v27    # "cs":Landroid/graphics/ColorSpace;
    .restart local v16    # "neww":I
    .restart local v17    # "newh":I
    .restart local v20    # "cs":Landroid/graphics/ColorSpace;
    :cond_118
    move/from16 v15, p6

    .line 1001
    :goto_11a
    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v19

    invoke-static/range {v15 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1002
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    move-object v0, v7

    move/from16 v7, v16

    move/from16 v8, v17

    .line 1033
    .end local v16    # "neww":I
    .end local v17    # "newh":I
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v7, "neww":I
    .local v8, "newh":I
    .restart local v9    # "paint":Landroid/graphics/Paint;
    :goto_129
    iget v15, v5, Landroid/graphics/Bitmap;->mDensity:I

    iput v15, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1034
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v15

    invoke-virtual {v0, v15}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1035
    iget-boolean v15, v5, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v15}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 1037
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1038
    .local v15, "canvas":Landroid/graphics/Canvas;
    iget v13, v12, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    iget v1, v12, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v15, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1039
    invoke-virtual {v15, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1040
    invoke-virtual {v15, v5, v10, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1041
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1045
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v1

    if-eqz v1, :cond_169

    .line 1046
    invoke-static/range {v5 .. v12}, Landroid/graphics/Bitmap;->transformGainmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;IILandroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1048
    .local v1, "newMapContents":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_169

    .line 1049
    new-instance v6, Landroid/graphics/Gainmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v13

    invoke-direct {v6, v13, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 1053
    .end local v1    # "newMapContents":Landroid/graphics/Bitmap;
    :cond_169
    if-eqz v14, :cond_173

    .line 1054
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1056
    :cond_173
    return-object v0

    .line 951
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "source":Landroid/graphics/Bitmap;
    .end local v7    # "neww":I
    .end local v8    # "newh":I
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "srcR":Landroid/graphics/Rect;
    .end local v11    # "dstR":Landroid/graphics/RectF;
    .end local v12    # "deviceR":Landroid/graphics/RectF;
    .end local v14    # "isHardware":Z
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v18    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v20    # "cs":Landroid/graphics/ColorSpace;
    .end local v21    # "config":Landroid/graphics/Bitmap$Config;
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot use a recycled source in createBitmap"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :cond_17c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "y + height must be <= bitmap.height()"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "x + width must be <= bitmap.width()"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_95
        :pswitch_8b
        :pswitch_8b
        :pswitch_90
    .end packed-switch
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "source"    # Landroid/graphics/Picture;

    .line 1399
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "source"    # Landroid/graphics/Picture;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1422
    if-lez p1, :cond_a0

    if-lez p2, :cond_a0

    .line 1425
    if-eqz p3, :cond_98

    .line 1428
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 1429
    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_18

    .line 1430
    const-string v0, "GPU readback"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1432
    :cond_18
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_54

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_54

    .line 1450
    :cond_24
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1451
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1452
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_39

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_4a

    .line 1453
    :cond_39
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    .line 1454
    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1453
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1456
    :cond_4a
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1457
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1458
    invoke-direct {v0}, Landroid/graphics/Bitmap;->setImmutable()V

    .line 1459
    return-object v0

    .line 1433
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_54
    :goto_54
    const-string v0, "BitmapTemporary"

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 1434
    .local v0, "node":Landroid/graphics/RenderNode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1435
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 1436
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 1437
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 1438
    .local v2, "canvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_74

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_85

    .line 1439
    :cond_74
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    .line 1440
    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1439
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RecordingCanvas;->scale(FF)V

    .line 1442
    :cond_85
    invoke-virtual {v2, p0}, Landroid/graphics/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1443
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1444
    invoke-static {v0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1445
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v4, :cond_97

    .line 1446
    invoke-virtual {v3, p3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1448
    :cond_97
    return-object v3

    .line 1426
    .end local v0    # "node":Landroid/graphics/RenderNode;
    .end local v2    # "canvas":Landroid/graphics/RecordingCanvas;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width & height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1132
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z

    .line 1205
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1206
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 1205
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p0    # "display":Landroid/util/DisplayMetrics;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "config":Landroid/graphics/Bitmap$Config;
    .end local p4    # "hasAlpha":Z
    .local v1, "display":Landroid/util/DisplayMetrics;
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    .local v5, "hasAlpha":Z
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1238
    move-object/from16 v0, p3

    move/from16 v1, p4

    if-lez p1, :cond_54

    if-lez p2, :cond_54

    .line 1241
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_4c

    .line 1244
    if-nez p5, :cond_1b

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_13

    goto :goto_1b

    .line 1245
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can\'t create bitmap without a color space"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1248
    :cond_1b
    :goto_1b
    iget v9, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1249
    if-nez p5, :cond_22

    const-wide/16 v2, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v2

    :goto_26
    move-wide v11, v2

    .line 1248
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    move v7, p1

    move v6, p1

    move v8, p2

    invoke-static/range {v4 .. v12}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1251
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_37

    .line 1252
    iget v3, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 1254
    :cond_37
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1255
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v3, :cond_42

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_4b

    :cond_42
    if-nez v1, :cond_4b

    .line 1256
    iget-wide v3, v2, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 v5, -0x1000000

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 1261
    :cond_4b
    return-object v2

    .line 1242
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1239
    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width and height must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 20
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1316
    move/from16 v3, p4

    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 1317
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v3, :cond_55

    .line 1320
    add-int/lit8 v0, p5, -0x1

    mul-int v0, v0, p3

    add-int v9, p2, v0

    .line 1321
    .local v9, "lastScanline":I
    array-length v10, p1

    .line 1322
    .local v10, "length":I
    if-ltz p2, :cond_4d

    add-int v0, p2, v3

    if-gt v0, v10, :cond_4d

    if-ltz v9, :cond_4d

    add-int v0, v9, v3

    if-gt v0, v10, :cond_4d

    .line 1326
    if-lez v3, :cond_42

    if-lez p5, :cond_42

    .line 1329
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v11

    .line 1330
    .local v11, "sRGB":Landroid/graphics/ColorSpace;
    move-object/from16 v12, p6

    iget v5, v12, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1331
    invoke-virtual {v11}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v7

    .line 1330
    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move/from16 v2, p3

    move/from16 v4, p5

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1332
    .local v5, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_41

    .line 1333
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v5, Landroid/graphics/Bitmap;->mDensity:I

    .line 1335
    :cond_41
    return-object v5

    .line 1326
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v11    # "sRGB":Landroid/graphics/ColorSpace;
    :cond_42
    move-object/from16 v12, p6

    .line 1327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :cond_4d
    move-object/from16 v12, p6

    .line 1324
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1318
    .end local v9    # "lastScanline":I
    .end local v10    # "length":I
    :cond_55
    move-object/from16 v12, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1382
    const/4 v2, 0x0

    move v4, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .end local p0    # "display":Landroid/util/DisplayMetrics;
    .end local p1    # "colors":[I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "config":Landroid/graphics/Bitmap$Config;
    .local v0, "display":Landroid/util/DisplayMetrics;
    .local v1, "colors":[I
    .local v3, "width":I
    .local v5, "height":I
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1286
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p0    # "colors":[I
    .end local p1    # "offset":I
    .end local p2    # "stride":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "config":Landroid/graphics/Bitmap$Config;
    .local v1, "colors":[I
    .local v2, "offset":I
    .local v3, "stride":I
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 1357
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v4, p1

    move-object v1, p0

    move v3, p1

    move v5, p2

    move-object v6, p3

    .end local p0    # "colors":[I
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "config":Landroid/graphics/Bitmap$Config;
    .local v1, "colors":[I
    .local v3, "width":I
    .local v5, "height":I
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .line 864
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v6, v0

    .line 866
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 867
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 868
    .local v5, "height":I
    if-ne v4, p1, :cond_12

    if-eq v5, p2, :cond_1b

    .line 869
    :cond_12
    int-to-float v0, p1

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 870
    .local v0, "sx":F
    int-to-float v1, p2

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 871
    .local v1, "sy":F
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 873
    .end local v0    # "sx":F
    .end local v1    # "sy":F
    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v7, p3

    .end local p0    # "src":Landroid/graphics/Bitmap;
    .end local p3    # "filter":Z
    .local v1, "src":Landroid/graphics/Bitmap;
    .local v7, "filter":Z
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist dumpAll(Ljava/lang/String;)V
    .registers 10
    .param p0, "format"    # Ljava/lang/String;

    .line 1590
    if-nez p0, :cond_6

    .line 1592
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    .line 1593
    return-void

    .line 1596
    :cond_6
    const-string/jumbo v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4a

    .line 1598
    :cond_19
    const-string/jumbo v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1599
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .local v0, "fmt":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_4c

    .line 1600
    .end local v0    # "fmt":Landroid/graphics/Bitmap$CompressFormat;
    :cond_25
    const-string/jumbo v0, "webp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1601
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "fmt":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_4c

    .line 1603
    .end local v0    # "fmt":Landroid/graphics/Bitmap$CompressFormat;
    :cond_31
    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No bitmaps dumped: unrecognized format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void

    .line 1597
    :cond_4a
    :goto_4a
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1608
    .restart local v0    # "fmt":Landroid/graphics/Bitmap$CompressFormat;
    :goto_4c
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 1609
    :try_start_4f
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1610
    .local v2, "allBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    sget-object v3, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1611
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 1612
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7b
    goto :goto_64

    .line 1615
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_4f .. :try_end_7d} :catchall_e0

    .line 1617
    new-instance v1, Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v0, v3}, Landroid/graphics/Bitmap$DumpData;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v1, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    .line 1618
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1619
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1620
    .local v4, "bas":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x5a

    invoke-virtual {v3, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1621
    sget-object v5, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Bitmap$DumpData;->add(J[B)V

    .line 1623
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bas":Ljava/io/ByteArrayOutputStream;
    :cond_b2
    goto :goto_8c

    .line 1624
    :cond_b3
    const-string v1, "Bitmap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$DumpData;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmaps dumped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return-void

    .line 1615
    .end local v2    # "allBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :catchall_e0
    move-exception v2

    :try_start_e1
    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    throw v2
.end method

.method static greylist getDefaultDensity()I
    .registers 1

    .line 125
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_7

    .line 126
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    .line 128
    :cond_7
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 129
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static blacklist getRegistry(ZJ)Llibcore/util/NativeAllocationRegistry;
    .registers 7
    .param p0, "malloc"    # Z
    .param p1, "size"    # J

    .line 141
    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v0

    .line 142
    .local v0, "free":J
    invoke-static {}, Lcom/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 143
    const-class v2, Landroid/graphics/Bitmap;

    .line 144
    .local v2, "cls":Ljava/lang/Class;
    if-eqz p0, :cond_13

    invoke-static {v2, v0, v1, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v3

    goto :goto_17

    .line 145
    :cond_13
    invoke-static {v2, v0, v1, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/Class;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v3

    .line 144
    :goto_17
    return-object v3

    .line 147
    .end local v2    # "cls":Ljava/lang/Class;
    :cond_18
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 148
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-eqz p0, :cond_25

    invoke-static {v2, v0, v1, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v3

    goto :goto_29

    .line 149
    :cond_25
    invoke-static {v2, v0, v1, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v3

    .line 148
    :goto_29
    return-object v3
.end method

.method private static native greylist-max-o nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native greylist-max-o nativeConfig(J)I
.end method

.method private static native greylist-max-o nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native greylist-max-o nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native greylist-max-o nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeErase(JI)V
.end method

.method private static native blacklist nativeErase(JJJ)V
.end method

.method private static native greylist-max-o nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeExtractGainmap(J)Landroid/graphics/Gainmap;
.end method

.method private static native greylist-max-o nativeGenerationId(J)I
.end method

.method private static native greylist-max-o nativeGetAllocationByteCount(J)I
.end method

.method private static native blacklist nativeGetAshmemFD(J)I
.end method

.method private static native blacklist nativeGetColor(JII)J
.end method

.method private static native blacklist nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;
.end method

.method private static native greylist-max-o nativeGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nativeGetPixel(JII)I
.end method

.method private static native greylist-max-o nativeGetPixels(J[IIIIIII)V
.end method

.method private static native greylist-max-o nativeHasAlpha(J)Z
.end method

.method private static native blacklist nativeHasGainmap(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeHasMipMap(J)Z
.end method

.method private static native blacklist nativeIsBackedByAshmem(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeIsImmutable(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeIsPremultiplied(J)Z
.end method

.method private static native greylist-max-o nativeIsSRGB(J)Z
.end method

.method private static native greylist-max-o nativeIsSRGBLinear(J)Z
.end method

.method private static native greylist-max-o nativePrepareToDraw(J)V
.end method

.method private static native greylist nativeReconfigure(JIIIZ)V
.end method

.method private static native blacklist nativeRecycle(J)V
.end method

.method private static native greylist-max-o nativeRowBytes(J)I
.end method

.method private static native greylist-max-o nativeSameAs(JJ)Z
.end method

.method private static native blacklist nativeSetColorSpace(JJ)V
.end method

.method private static native blacklist nativeSetGainmap(JJ)V
.end method

.method private static native greylist-max-o nativeSetHasAlpha(JZZ)V
.end method

.method private static native greylist-max-o nativeSetHasMipMap(JZ)V
.end method

.method private static native blacklist nativeSetImmutable(J)V
.end method

.method private static native greylist-max-o nativeSetPixel(JIII)V
.end method

.method private static native greylist-max-o nativeSetPixels(J[IIIIIII)V
.end method

.method private static native greylist-max-o nativeSetPremultiplied(JZ)V
.end method

.method private static native blacklist nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeWriteToParcel(JILandroid/os/Parcel;)Z
.end method

.method private greylist-max-o noteHardwareBitmapSlowCall()V
    .registers 3

    .line 707
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_d

    .line 708
    const-string v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 711
    :cond_d
    return-void
.end method

.method public static greylist scaleFromDensity(III)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .line 1830
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    if-ne p1, p2, :cond_7

    goto :goto_e

    .line 1835
    :cond_7
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0

    .line 1831
    :cond_e
    :goto_e
    return p0
.end method

.method public static greylist setDefaultDensity(I)V
    .registers 1
    .param p0, "density"    # I

    .line 119
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 120
    return-void
.end method

.method private blacklist setImmutable()V
    .registers 3

    .line 1682
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1683
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSetImmutable(J)V

    .line 1685
    :cond_b
    return-void
.end method

.method private greylist setNinePatchChunk([B)V
    .registers 2
    .param p1, "chunk"    # [B

    .line 380
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 381
    return-void
.end method

.method private static blacklist transformGainmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;IILandroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .registers 26
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "neww"    # I
    .param p3, "newh"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "srcR"    # Landroid/graphics/Rect;
    .param p6, "dstR"    # Landroid/graphics/RectF;
    .param p7, "deviceR"    # Landroid/graphics/RectF;

    .line 1062
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1065
    .local v2, "sourceGainmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1066
    .local v3, "scaleX":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1067
    .local v4, "scaleY":F
    move/from16 v5, p2

    int-to-float v6, v5

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1068
    .local v9, "mapw":I
    move/from16 v6, p3

    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1070
    .local v11, "maph":I
    const/4 v7, 0x0

    if-eqz v9, :cond_98

    if-nez v11, :cond_3f

    move-object/from16 v10, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object v5, v7

    goto :goto_9f

    .line 1077
    :cond_3f
    new-instance v8, Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v10, v10

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v12, v12

    iget v13, v0, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-int v13, v13

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    mul-float/2addr v14, v4

    float-to-int v14, v14

    invoke-direct {v8, v10, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1084
    .local v8, "gSrcR":Landroid/graphics/Rect;
    nop

    .line 1085
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    iget v12, v10, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 1084
    move-object v10, v7

    const/4 v7, 0x0

    move-object v13, v8

    .end local v8    # "gSrcR":Landroid/graphics/Rect;
    .local v13, "gSrcR":Landroid/graphics/Rect;
    const/4 v8, 0x0

    move-object v14, v13

    .end local v13    # "gSrcR":Landroid/graphics/Rect;
    .local v14, "gSrcR":Landroid/graphics/Rect;
    const/4 v13, 0x1

    move-object/from16 v16, v14

    .end local v14    # "gSrcR":Landroid/graphics/Rect;
    .local v16, "gSrcR":Landroid/graphics/Rect;
    const-wide/16 v14, 0x0

    move-object/from16 v17, v10

    move v10, v9

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    .end local v16    # "gSrcR":Landroid/graphics/Rect;
    .local v0, "gSrcR":Landroid/graphics/Rect;
    invoke-static/range {v7 .. v15}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1086
    .local v7, "newMapContents":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1087
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1089
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1090
    iget v10, v1, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    iget v12, v1, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    invoke-virtual {v8, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1091
    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1092
    move-object/from16 v12, p4

    move-object/from16 v13, p6

    invoke-virtual {v8, v2, v0, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1093
    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1096
    return-object v7

    .line 1070
    .end local v0    # "gSrcR":Landroid/graphics/Rect;
    .end local v7    # "newMapContents":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_98
    move-object/from16 v10, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object v5, v7

    .line 1072
    :goto_9f
    return-object v5
.end method

.method public static whitelist wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 824
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    .line 825
    .local v0, "usage":J
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    .line 828
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2f

    .line 831
    if-nez p1, :cond_1c

    .line 832
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 834
    :cond_1c
    nop

    .line 835
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v2

    .line 834
    invoke-static {p0, v2, v3}, Landroid/graphics/Bitmap;->nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 836
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2e

    .line 837
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 839
    :cond_2e
    return-object v2

    .line 829
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bitmap is not compatible with protected buffers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "usage flags must contain USAGE_GPU_SAMPLED_IMAGE."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist asShared()Landroid/graphics/Bitmap;
    .registers 4

    .line 773
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 774
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->asShared()Landroid/graphics/Gainmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v1

    if-ne v0, v1, :cond_25

    .line 775
    :cond_24
    return-object p0

    .line 777
    :cond_25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    .local v0, "shared":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2c

    .line 781
    return-object v0

    .line 779
    :cond_2c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create shared Bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o checkRecycled(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 433
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_5

    .line 436
    return-void

    .line 434
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .registers 13
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .line 1651
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1653
    if-eqz p3, :cond_36

    .line 1656
    if-ltz p2, :cond_2b

    const/16 v0, 0x64

    if-gt p2, v0, :cond_2b

    .line 1659
    const-string v0, "Compression of a bitmap is slow"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1660
    const-string v0, "Bitmap.compress"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1661
    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v0, 0x1000

    new-array v8, v0, [B

    move v6, p2

    move-object v7, p3

    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .local v6, "quality":I
    .local v7, "stream":Ljava/io/OutputStream;
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result p2

    .line 1663
    .local p2, "result":Z
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1664
    return p2

    .line 1656
    .end local v6    # "quality":I
    .end local v7    # "stream":Ljava/io/OutputStream;
    .local p2, "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_2b
    move v6, p2

    move-object v7, p3

    .line 1657
    .end local p2    # "quality":I
    .end local p3    # "stream":Ljava/io/OutputStream;
    .restart local v6    # "quality":I
    .restart local v7    # "stream":Ljava/io/OutputStream;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "quality must be 0..100"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1654
    .end local v6    # "quality":I
    .end local v7    # "stream":Ljava/io/OutputStream;
    .restart local p2    # "quality":I
    .restart local p3    # "stream":Ljava/io/OutputStream;
    :cond_36
    move v6, p2

    .end local p2    # "quality":I
    .restart local v6    # "quality":I
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    throw p2
.end method

.method public whitelist copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    .line 730
    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 731
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_14

    if-nez p2, :cond_c

    goto :goto_14

    .line 732
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hardware bitmaps are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_14
    :goto_14
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 735
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2a

    .line 737
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 738
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 740
    :cond_2a
    return-object v0
.end method

.method public whitelist copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .registers 13
    .param p1, "src"    # Ljava/nio/Buffer;

    .line 676
    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 677
    const-string/jumbo v0, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 681
    .local v0, "elements":I
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_15

    .line 682
    const/4 v1, 0x0

    .local v1, "shift":I
    goto :goto_20

    .line 683
    .end local v1    # "shift":I
    :cond_15
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1b

    .line 684
    const/4 v1, 0x1

    .restart local v1    # "shift":I
    goto :goto_20

    .line 685
    .end local v1    # "shift":I
    :cond_1b
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_45

    .line 686
    const/4 v1, 0x2

    .line 691
    .restart local v1    # "shift":I
    :goto_20
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 692
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    .line 694
    .local v4, "bitmapBytes":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_3d

    .line 698
    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    .line 701
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 702
    .local v6, "position":I
    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    .line 703
    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 704
    return-void

    .line 695
    .end local v6    # "position":I
    :cond_3d
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 688
    .end local v1    # "shift":I
    .end local v2    # "bufferBytes":J
    .end local v4    # "bitmapBytes":J
    :cond_45
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .registers 13
    .param p1, "dst"    # Ljava/nio/Buffer;

    .line 634
    const-string/jumbo v0, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 638
    .local v0, "elements":I
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_10

    .line 639
    const/4 v1, 0x0

    .local v1, "shift":I
    goto :goto_1b

    .line 640
    .end local v1    # "shift":I
    :cond_10
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_16

    .line 641
    const/4 v1, 0x1

    .restart local v1    # "shift":I
    goto :goto_1b

    .line 642
    .end local v1    # "shift":I
    :cond_16
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_40

    .line 643
    const/4 v1, 0x2

    .line 648
    .restart local v1    # "shift":I
    :goto_1b
    int-to-long v2, v0

    shl-long/2addr v2, v1

    .line 649
    .local v2, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    .line 651
    .local v4, "pixelSize":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_38

    .line 655
    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    .line 658
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 659
    .local v6, "position":I
    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    .line 660
    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 661
    return-void

    .line 652
    .end local v6    # "position":I
    :cond_38
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 645
    .end local v1    # "shift":I
    .end local v2    # "bufferSize":J
    .end local v4    # "pixelSize":J
    :cond_40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r createAshmemBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 752
    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 754
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 755
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2a

    .line 756
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 757
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 758
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 759
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Gainmap;->asShared()Landroid/graphics/Gainmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 762
    :cond_2a
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2378
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist eraseColor(I)V
    .registers 4
    .param p1, "c"    # I

    .line 2108
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2112
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 2113
    return-void

    .line 2110
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist eraseColor(J)V
    .registers 10
    .param p1, "color"    # J

    .line 2125
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2130
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 2131
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    .end local p1    # "color":J
    .local v5, "color":J
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeErase(JJJ)V

    .line 2132
    return-void

    .line 2127
    .end local v0    # "cs":Landroid/graphics/ColorSpace;
    .end local v5    # "color":J
    .restart local p1    # "color":J
    :cond_1a
    move-wide v5, p1

    .end local p1    # "color":J
    .restart local v5    # "color":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot erase immutable bitmaps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist extractAlpha()Landroid/graphics/Bitmap;
    .registers 2

    .line 2414
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    .line 2445
    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2446
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    .line 2447
    .local v0, "nativePaint":J
    :goto_e
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2448
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2449
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1e

    .line 2452
    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 2453
    return-object v2

    .line 2450
    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final whitelist getAllocationByteCount()I
    .registers 3

    .line 1889
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_d

    .line 1890
    const-string v0, "Bitmap"

    const-string v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const/4 v0, 0x0

    return v0

    .line 1894
    :cond_d
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getByteCount()I
    .registers 3

    .line 1865
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_d

    .line 1866
    const-string v0, "Bitmap"

    const-string v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const/4 v0, 0x0

    return v0

    .line 1871
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor(II)Landroid/graphics/Color;
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2173
    const-string v0, "Can\'t call getColor() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2174
    const-string/jumbo v0, "unable to getColor(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2176
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2178
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 2179
    .local v0, "cs":Landroid/graphics/ColorSpace;
    if-eqz v0, :cond_68

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_68

    .line 2184
    :cond_21
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetColor(JII)J

    move-result-wide v1

    .line 2185
    .local v1, "rgba":J
    const/4 v3, 0x0

    shr-long v4, v1, v3

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v4}, Landroid/util/Half;->toFloat(S)F

    move-result v4

    .line 2186
    .local v4, "r":F
    const/16 v5, 0x10

    shr-long v8, v1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-short v5, v5

    invoke-static {v5}, Landroid/util/Half;->toFloat(S)F

    move-result v5

    .line 2187
    .local v5, "g":F
    const/16 v8, 0x20

    shr-long v8, v1, v8

    and-long/2addr v8, v6

    long-to-int v8, v8

    int-to-short v8, v8

    invoke-static {v8}, Landroid/util/Half;->toFloat(S)F

    move-result v8

    .line 2188
    .local v8, "b":F
    const/16 v9, 0x30

    shr-long v9, v1, v9

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-static {v6}, Landroid/util/Half;->toFloat(S)F

    move-result v6

    .line 2192
    .local v6, "a":F
    invoke-static {v4, v0, v3}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v3

    const/4 v7, 0x1

    invoke-static {v5, v0, v7}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v7

    const/4 v9, 0x2

    invoke-static {v8, v0, v9}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v9

    invoke-static {v3, v7, v9, v6, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v3

    return-object v3

    .line 2180
    .end local v1    # "rgba":J
    .end local v4    # "r":F
    .end local v5    # "g":F
    .end local v6    # "a":F
    .end local v8    # "b":F
    :cond_68
    :goto_68
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 1994
    const-string v0, "getColorSpace called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_11

    .line 1996
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 1998
    :cond_11
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final whitelist getConfig()Landroid/graphics/Bitmap$Config;
    .registers 3

    .line 1903
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1904
    const-string v0, "Bitmap"

    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDensity()I
    .registers 3

    .line 238
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 239
    const-string v0, "Bitmap"

    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public whitelist getGainmap()Landroid/graphics/Gainmap;
    .registers 3

    .line 2086
    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2087
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    if-nez v0, :cond_11

    .line 2088
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeExtractGainmap(J)Landroid/graphics/Gainmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    .line 2090
    :cond_11
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    return-object v0
.end method

.method public whitelist getGenerationId()I
    .registers 3

    .line 421
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 422
    const-string v0, "Bitmap"

    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 4

    .line 2513
    const-string v0, "Can\'t getHardwareBuffer from a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2514
    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 2515
    .local v0, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    :goto_13
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2516
    :cond_1b
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 2517
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 2519
    :cond_28
    return-object v0
.end method

.method public final whitelist getHeight()I
    .registers 3

    .line 1757
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1758
    const-string v0, "Bitmap"

    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public greylist-max-o getNativeInstance()J
    .registers 3

    .line 201
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getNinePatchChunk()[B
    .registers 2

    .line 1469
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public greylist-max-o getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .registers 2

    .line 1495
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public greylist-max-o getOpticalInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    .line 1482
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_8

    .line 1483
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_f

    .line 1485
    :cond_8
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1487
    :goto_f
    return-void
.end method

.method public whitelist getPixel(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2148
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2149
    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2152
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public whitelist getPixels([IIIIIII)V
    .registers 18
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 2222
    const-string v1, "Can\'t call getPixels() on a recycled bitmap"

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2223
    const-string/jumbo v1, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    .line 2225
    if-eqz p6, :cond_2c

    if-nez p7, :cond_10

    goto :goto_2c

    .line 2228
    :cond_10
    move-object v0, p0

    move-object v7, p1

    move v5, p2

    move v6, p3

    move v1, p4

    move v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 2229
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    .line 2231
    return-void

    .line 2226
    :cond_2c
    :goto_2c
    return-void
.end method

.method public final whitelist getRowBytes()I
    .registers 3

    .line 1851
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1852
    const-string v0, "Bitmap"

    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(I)I
    .registers 4
    .param p1, "targetDensity"    # I

    .line 1820
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(Landroid/graphics/Canvas;)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1776
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(Landroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1792
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(I)I
    .registers 4
    .param p1, "targetDensity"    # I

    .line 1806
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(Landroid/graphics/Canvas;)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1768
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(Landroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1784
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public blacklist getSharedMemory()Landroid/os/SharedMemory;
    .registers 4

    .line 792
    const-string v0, "Cannot access shared memory of a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 793
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 795
    :try_start_d
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAshmemFD(J)I

    move-result v0

    .line 796
    .local v0, "fd":I
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_1c

    return-object v1

    .line 797
    .end local v0    # "fd":I
    :catch_1c
    move-exception v0

    .line 798
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Bitmap"

    const-string v2, "Unable to create dup\'d file descriptor for shared bitmap memory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v0    # "e":Ljava/io/IOException;
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getWidth()I
    .registers 3

    .line 1749
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1750
    const-string v0, "Bitmap"

    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_b
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final whitelist hasAlpha()Z
    .registers 3

    .line 1918
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1919
    const-string v0, "Bitmap"

    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasGainmap()Z
    .registers 3

    .line 2078
    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2079
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasGainmap(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMipMap()Z
    .registers 3

    .line 1957
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1958
    const-string v0, "Bitmap"

    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isMutable()Z
    .registers 3

    .line 1671
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist isPremultiplied()Z
    .registers 3

    .line 1715
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_b

    .line 1716
    const-string v0, "Bitmap"

    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isRecycled()Z
    .registers 2

    .line 410
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public whitelist prepareToDraw()V
    .registers 3

    .line 2492
    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2495
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    .line 2496
    return-void
.end method

.method public whitelist reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 311
    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 312
    if-lez p1, :cond_2d

    if-lez p2, :cond_2d

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 319
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v3, p1

    move v4, p2

    .end local p1    # "width":I
    .end local p2    # "height":I
    .local v3, "width":I
    .local v4, "height":I
    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    .line 320
    iput v3, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 321
    iput v4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 322
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 323
    return-void

    .line 316
    .end local v3    # "width":I
    .end local v4    # "height":I
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :cond_22
    move v3, p1

    move v4, p2

    .end local p1    # "width":I
    .end local p2    # "height":I
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "only mutable bitmaps may be reconfigured"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    .end local v3    # "width":I
    .end local v4    # "height":I
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :cond_2d
    move v3, p1

    move v4, p2

    .line 313
    .end local p1    # "width":I
    .end local p2    # "height":I
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist recycle()V
    .registers 3

    .line 395
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_11

    .line 396
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 398
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 399
    iput-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    .line 401
    :cond_11
    return-void
.end method

.method greylist-max-r reinit(IIZ)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "requestPremultiplied"    # Z

    .line 211
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 212
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 213
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 215
    return-void
.end method

.method public whitelist sameAs(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Bitmap;

    .line 2463
    const-string/jumbo v0, "sameAs compares pixel data, not expected to be fast"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 2464
    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2465
    if-ne p0, p1, :cond_f

    const/4 v0, 0x1

    return v0

    .line 2466
    :cond_f
    if-nez p1, :cond_13

    const/4 v0, 0x0

    return v0

    .line 2467
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2470
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    return v0

    .line 2468
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)V
    .registers 9
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 2027
    const-string/jumbo v0, "setColorSpace called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2028
    if-eqz p1, :cond_81

    .line 2032
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_79

    .line 2038
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 2039
    .local v0, "oldColorSpace":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    .line 2043
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 2044
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 2047
    .local v1, "newColorSpace":Landroid/graphics/ColorSpace;
    :try_start_24
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 2051
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 2052
    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_58

    .line 2058
    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_50

    .line 2051
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 2059
    :cond_50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The new ColorSpace cannot decrease the maximum value for any of the components compared to the current ColorSpace/ To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local p0    # "this":Landroid/graphics/Bitmap;
    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v3

    .line 2053
    .restart local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .restart local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "this":Landroid/graphics/Bitmap;
    .restart local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The new ColorSpace cannot increase the minimum value for any of the components compared to the current ColorSpace. To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local p0    # "this":Landroid/graphics/Bitmap;
    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v3

    .line 2071
    .end local v2    # "i":I
    .restart local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .restart local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "this":Landroid/graphics/Bitmap;
    .restart local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_60
    nop

    .line 2072
    return-void

    .line 2048
    :cond_62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The new ColorSpace must have the same component count as the current ColorSpace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local p0    # "this":Landroid/graphics/Bitmap;
    .end local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    throw v2
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_6a} :catch_6a

    .line 2066
    .restart local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .restart local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .restart local p0    # "this":Landroid/graphics/Bitmap;
    .restart local p1    # "colorSpace":Landroid/graphics/ColorSpace;
    :catch_6a
    move-exception v2

    .line 2068
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 2069
    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-object v5, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    .line 2070
    throw v2

    .line 2033
    .end local v0    # "oldColorSpace":Landroid/graphics/ColorSpace;
    .end local v1    # "newColorSpace":Landroid/graphics/ColorSpace;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a ColorSpace on ALPHA_8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2029
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The colorSpace cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 371
    return-void
.end method

.method public whitelist setDensity(I)V
    .registers 2
    .param p1, "density"    # I

    .line 258
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 259
    return-void
.end method

.method public whitelist setGainmap(Landroid/graphics/Gainmap;)V
    .registers 6
    .param p1, "gainmap"    # Landroid/graphics/Gainmap;

    .line 2097
    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2098
    iput-object p1, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    .line 2099
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    if-nez p1, :cond_e

    const-wide/16 v2, 0x0

    goto :goto_10

    :cond_e
    iget-wide v2, p1, Landroid/graphics/Gainmap;->mNativePtr:J

    :goto_10
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSetGainmap(JJ)V

    .line 2100
    return-void
.end method

.method public whitelist setHasAlpha(Z)V
    .registers 5
    .param p1, "hasAlpha"    # Z

    .line 1935
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1936
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    .line 1937
    return-void
.end method

.method public final whitelist setHasMipMap(Z)V
    .registers 4
    .param p1, "hasMipMap"    # Z

    .line 1984
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1985
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    .line 1986
    return-void
.end method

.method public whitelist setHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .line 354
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 355
    return-void
.end method

.method public whitelist setPixel(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .line 2306
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2310
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 2311
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    .line 2312
    return-void

    .line 2308
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist setPixels([IIIIIII)V
    .registers 18
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 2339
    const-string v1, "Can\'t call setPixels() on a recycled bitmap"

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2340
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2343
    if-eqz p6, :cond_2c

    if-nez p7, :cond_10

    goto :goto_2c

    .line 2346
    :cond_10
    move-object v0, p0

    move-object v7, p1

    move v5, p2

    move v6, p3

    move v1, p4

    move v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 2347
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    .line 2349
    return-void

    .line 2344
    :cond_2c
    :goto_2c
    return-void

    .line 2341
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public final whitelist setPremultiplied(Z)V
    .registers 4
    .param p1, "premultiplied"    # Z

    .line 1742
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1743
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 1744
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    .line 1745
    return-void
.end method

.method public whitelist setWidth(I)V
    .registers 4
    .param p1, "width"    # I

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 339
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2391
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 2392
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    .line 2393
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JILandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2396
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2397
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2398
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_26

    .line 2400
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2402
    :goto_26
    return-void

    .line 2394
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
