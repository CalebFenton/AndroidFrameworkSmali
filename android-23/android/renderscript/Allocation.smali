.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$MipmapControl;,
        Landroid/renderscript/Allocation$OnBufferAvailableListener;
    }
.end annotation


# static fields
.field private static synthetic -android_graphics_Bitmap$ConfigSwitchesValues:[I = null

.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field private mGetSurfaceSurface:Landroid/view/Surface;

.field mReadAllowed:Z

.field mSelectedArray:[I

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedX:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method private static synthetic -getandroid_graphics_Bitmap$ConfigSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/Allocation;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Allocation;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

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
    sput-object v0, Landroid/renderscript/Allocation;->-android_graphics_Bitmap$ConfigSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 76
    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@7
    .line 1863
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@9
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@c
    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@e
    .line 1865
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@10
    const/4 v1, 0x0

    #@11
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    #@13
    .line 55
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "t"    # Landroid/renderscript/Type;
    .param p5, "usage"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@6
    .line 62
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    #@8
    .line 63
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    #@a
    .line 64
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@c
    .line 70
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@e
    iput-object v1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@10
    .line 80
    iput-object v3, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@12
    .line 319
    and-int/lit16 v1, p5, -0x100

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 327
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@18
    const-string/jumbo v2, "Unknown usage specified."

    #@1b
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 330
    :cond_0
    and-int/lit8 v1, p5, 0x20

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 331
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    #@25
    .line 333
    and-int/lit8 v1, p5, -0x24

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 336
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@2b
    const-string/jumbo v2, "Invalid usage combination."

    #@2e
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 340
    :cond_1
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@34
    .line 341
    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@36
    .line 343
    if-eqz p4, :cond_2

    #@38
    .line 347
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@3a
    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    #@3d
    move-result v1

    #@3e
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@40
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    #@47
    move-result v2

    #@48
    mul-int/2addr v1, v2

    #@49
    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    #@4b
    .line 348
    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    #@4e
    .line 351
    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    #@50
    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    #@52
    const/4 v3, 0x1

    #@53
    new-array v3, v3, [Ljava/lang/Object;

    #@55
    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    #@57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v4

    #@5b
    const/4 v5, 0x0

    #@5c
    aput-object v4, v3, v5

    #@5e
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 317
    return-void

    #@62
    .line 352
    :catch_0
    move-exception v0

    #@63
    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RenderScript_jni"

    #@66
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 354
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@7f
    new-instance v2, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@96
    throw v1
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    #@0
    .prologue
    .line 922
    :try_start_0
    const-string/jumbo v2, "copy1DRangeFromUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 923
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@d
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@f
    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    #@12
    move-result v2

    #@13
    mul-int v6, v2, p2

    #@15
    .line 925
    .local v6, "dataSize":I
    const/4 v7, 0x0

    #@16
    .line 926
    .local v7, "usePadding":Z
    move-object/from16 v0, p0

    #@18
    iget-boolean v2, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@20
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    #@27
    move-result v2

    #@28
    const/4 v3, 0x3

    #@29
    if-ne v2, v3, :cond_0

    #@2b
    .line 927
    const/4 v7, 0x1

    #@2c
    .line 929
    :cond_0
    move-object/from16 v0, p4

    #@2e
    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@30
    mul-int v5, p5, v2

    #@32
    move-object/from16 v2, p0

    #@34
    move/from16 v3, p1

    #@36
    move/from16 v4, p2

    #@38
    invoke-direct/range {v2 .. v7}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    #@3b
    .line 930
    move-object/from16 v0, p0

    #@3d
    iget-object v9, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@42
    move-result-wide v10

    #@43
    move-object/from16 v0, p0

    #@45
    iget v13, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@47
    .line 931
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@4b
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4d
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@4f
    iget v0, v2, Landroid/renderscript/Element$DataType;->mSize:I

    #@51
    move/from16 v18, v0

    #@53
    move/from16 v12, p1

    #@55
    move/from16 v14, p2

    #@57
    move-object/from16 v15, p3

    #@59
    move/from16 v16, v6

    #@5b
    move-object/from16 v17, p4

    #@5d
    move/from16 v19, v7

    #@5f
    .line 930
    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 933
    const-wide/32 v2, 0x8000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 920
    return-void

    #@69
    .line 932
    .end local v6    # "dataSize":I
    .end local v7    # "usePadding":Z
    :catchall_0
    move-exception v2

    #@6a
    .line 933
    const-wide/32 v4, 0x8000

    #@6d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 932
    throw v2
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    #@0
    .prologue
    .line 1555
    :try_start_0
    const-string/jumbo v2, "copy1DRangeToUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1556
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@d
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@f
    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    #@12
    move-result v2

    #@13
    mul-int v6, v2, p2

    #@15
    .line 1558
    .local v6, "dataSize":I
    const/4 v7, 0x0

    #@16
    .line 1559
    .local v7, "usePadding":Z
    move-object/from16 v0, p0

    #@18
    iget-boolean v2, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@20
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    #@27
    move-result v2

    #@28
    const/4 v3, 0x3

    #@29
    if-ne v2, v3, :cond_0

    #@2b
    .line 1560
    const/4 v7, 0x1

    #@2c
    .line 1562
    :cond_0
    move-object/from16 v0, p4

    #@2e
    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@30
    mul-int v5, p5, v2

    #@32
    move-object/from16 v2, p0

    #@34
    move/from16 v3, p1

    #@36
    move/from16 v4, p2

    #@38
    invoke-direct/range {v2 .. v7}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    #@3b
    .line 1563
    move-object/from16 v0, p0

    #@3d
    iget-object v9, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@42
    move-result-wide v10

    #@43
    move-object/from16 v0, p0

    #@45
    iget v13, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@47
    .line 1564
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@4b
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4d
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@4f
    iget v0, v2, Landroid/renderscript/Element$DataType;->mSize:I

    #@51
    move/from16 v18, v0

    #@53
    move/from16 v12, p1

    #@55
    move/from16 v14, p2

    #@57
    move-object/from16 v15, p3

    #@59
    move/from16 v16, v6

    #@5b
    move-object/from16 v17, p4

    #@5d
    move/from16 v19, v7

    #@5f
    .line 1563
    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 1566
    const-wide/32 v2, 0x8000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 1553
    return-void

    #@69
    .line 1565
    .end local v6    # "dataSize":I
    .end local v7    # "usePadding":Z
    :catchall_0
    move-exception v2

    #@6a
    .line 1566
    const-wide/32 v4, 0x8000

    #@6d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 1565
    throw v2
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 18
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    #@0
    .prologue
    .line 1302
    :try_start_0
    const-string/jumbo v3, "copy3DRangeFromUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1303
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1304
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    #@13
    .line 1305
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@17
    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@19
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@1c
    move-result v3

    #@1d
    mul-int v3, v3, p4

    #@1f
    mul-int v3, v3, p5

    #@21
    mul-int v2, v3, p6

    #@23
    .line 1307
    .local v2, "dataSize":I
    const/16 v17, 0x0

    #@25
    .line 1308
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    #@27
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@29
    mul-int v14, p9, v3

    #@2b
    .line 1309
    .local v14, "sizeBytes":I
    move-object/from16 v0, p0

    #@2d
    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@2f
    if-eqz v3, :cond_2

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@35
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    #@3c
    move-result v3

    #@3d
    const/4 v4, 0x3

    #@3e
    if-ne v3, v4, :cond_2

    #@40
    .line 1310
    div-int/lit8 v3, v2, 0x4

    #@42
    mul-int/lit8 v3, v3, 0x3

    #@44
    if-le v3, v14, :cond_0

    #@46
    .line 1311
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@48
    const-string/jumbo v4, "Array too small for allocation type."

    #@4b
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 1323
    .end local v2    # "dataSize":I
    .end local v14    # "sizeBytes":I
    .end local v17    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@50
    .line 1324
    const-wide/32 v4, 0x8000

    #@53
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@56
    .line 1323
    throw v3

    #@57
    .line 1313
    .restart local v2    # "dataSize":I
    .restart local v14    # "sizeBytes":I
    .restart local v17    # "usePadding":Z
    :cond_0
    const/16 v17, 0x1

    #@59
    .line 1314
    move v14, v2

    #@5a
    .line 1320
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5e
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@61
    move-result-wide v4

    #@62
    move-object/from16 v0, p0

    #@64
    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@66
    .line 1322
    move-object/from16 v0, p0

    #@68
    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6a
    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@6c
    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6e
    iget v0, v6, Landroid/renderscript/Element$DataType;->mSize:I

    #@70
    move/from16 v16, v0

    #@72
    move/from16 v6, p1

    #@74
    move/from16 v7, p2

    #@76
    move/from16 v8, p3

    #@78
    move/from16 v10, p4

    #@7a
    move/from16 v11, p5

    #@7c
    move/from16 v12, p6

    #@7e
    move-object/from16 v13, p7

    #@80
    move-object/from16 v15, p8

    #@82
    .line 1320
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    .line 1324
    const-wide/32 v4, 0x8000

    #@88
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8b
    .line 1300
    return-void

    #@8c
    .line 1316
    :cond_2
    if-le v2, v14, :cond_1

    #@8e
    .line 1317
    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@90
    const-string/jumbo v4, "Array too small for allocation type."

    #@93
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@96
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 18
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    #@0
    .prologue
    .line 1819
    :try_start_0
    const-string/jumbo v3, "copy3DRangeToUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1820
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1821
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    #@13
    .line 1822
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@17
    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@19
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@1c
    move-result v3

    #@1d
    mul-int v3, v3, p4

    #@1f
    mul-int v3, v3, p5

    #@21
    mul-int v2, v3, p6

    #@23
    .line 1824
    .local v2, "dataSize":I
    const/16 v17, 0x0

    #@25
    .line 1825
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    #@27
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@29
    mul-int v14, p9, v3

    #@2b
    .line 1826
    .local v14, "sizeBytes":I
    move-object/from16 v0, p0

    #@2d
    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@2f
    if-eqz v3, :cond_2

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@35
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    #@3c
    move-result v3

    #@3d
    const/4 v4, 0x3

    #@3e
    if-ne v3, v4, :cond_2

    #@40
    .line 1827
    div-int/lit8 v3, v2, 0x4

    #@42
    mul-int/lit8 v3, v3, 0x3

    #@44
    if-le v3, v14, :cond_0

    #@46
    .line 1828
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@48
    const-string/jumbo v4, "Array too small for allocation type."

    #@4b
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 1839
    .end local v2    # "dataSize":I
    .end local v14    # "sizeBytes":I
    .end local v17    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@50
    .line 1840
    const-wide/32 v4, 0x8000

    #@53
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@56
    .line 1839
    throw v3

    #@57
    .line 1830
    .restart local v2    # "dataSize":I
    .restart local v14    # "sizeBytes":I
    .restart local v17    # "usePadding":Z
    :cond_0
    const/16 v17, 0x1

    #@59
    .line 1831
    move v14, v2

    #@5a
    .line 1837
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5e
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@61
    move-result-wide v4

    #@62
    move-object/from16 v0, p0

    #@64
    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@66
    .line 1838
    move-object/from16 v0, p0

    #@68
    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6a
    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@6c
    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6e
    iget v0, v6, Landroid/renderscript/Element$DataType;->mSize:I

    #@70
    move/from16 v16, v0

    #@72
    move/from16 v6, p1

    #@74
    move/from16 v7, p2

    #@76
    move/from16 v8, p3

    #@78
    move/from16 v10, p4

    #@7a
    move/from16 v11, p5

    #@7c
    move/from16 v12, p6

    #@7e
    move-object/from16 v13, p7

    #@80
    move-object/from16 v15, p8

    #@82
    .line 1837
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    .line 1840
    const-wide/32 v4, 0x8000

    #@88
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8b
    .line 1817
    return-void

    #@8c
    .line 1833
    :cond_2
    if-le v2, v14, :cond_1

    #@8e
    .line 1834
    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@90
    const-string/jumbo v4, "Array too small for allocation type."

    #@93
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@96
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 12
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    #@0
    .prologue
    const-wide/32 v10, 0x8000

    #@3
    .line 616
    :try_start_0
    const-string/jumbo v0, "copyFromUnchecked"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 617
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 618
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@13
    if-lez v0, :cond_0

    #@15
    .line 619
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@17
    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@19
    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x0

    #@1d
    const/4 v3, 0x0

    #@1e
    move-object v0, p0

    #@1f
    move-object v7, p1

    #@20
    move-object v8, p2

    #@21
    move v9, p3

    #@22
    invoke-direct/range {v0 .. v9}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 626
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@28
    .line 614
    return-void

    #@29
    .line 620
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@2b
    if-lez v0, :cond_1

    #@2d
    .line 621
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@2f
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@31
    const/4 v1, 0x0

    #@32
    const/4 v2, 0x0

    #@33
    move-object v0, p0

    #@34
    move-object v5, p1

    #@35
    move-object v6, p2

    #@36
    move v7, p3

    #@37
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 625
    :catchall_0
    move-exception v0

    #@3c
    .line 626
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@3f
    .line 625
    throw v0

    #@40
    .line 623
    :cond_1
    :try_start_2
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@42
    const/4 v1, 0x0

    #@43
    move-object v0, p0

    #@44
    move-object v3, p1

    #@45
    move-object v4, p2

    #@46
    move v5, p3

    #@47
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    goto :goto_0
.end method

.method private copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 10
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x8000

    #@3
    .line 1396
    :try_start_0
    const-string/jumbo v0, "copyTo"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1397
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1398
    const/4 v7, 0x0

    #@12
    .line 1399
    .local v7, "usePadding":Z
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@18
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    #@1f
    move-result v0

    #@20
    const/4 v1, 0x3

    #@21
    if-ne v0, v1, :cond_0

    #@23
    .line 1400
    const/4 v7, 0x1

    #@24
    .line 1402
    :cond_0
    if-eqz v7, :cond_1

    #@26
    .line 1403
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    #@28
    mul-int/2addr v0, p3

    #@29
    iget v1, p0, Landroid/renderscript/Allocation;->mSize:I

    #@2b
    div-int/lit8 v1, v1, 0x4

    #@2d
    mul-int/lit8 v1, v1, 0x3

    #@2f
    if-ge v0, v1, :cond_2

    #@31
    .line 1404
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@33
    .line 1405
    const-string/jumbo v1, "Size of output array cannot be smaller than size of allocation."

    #@36
    .line 1404
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1414
    .end local v7    # "usePadding":Z
    :catchall_0
    move-exception v0

    #@3b
    .line 1415
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@3e
    .line 1414
    throw v0

    #@3f
    .line 1408
    .restart local v7    # "usePadding":Z
    :cond_1
    :try_start_1
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    #@41
    mul-int/2addr v0, p3

    #@42
    iget v1, p0, Landroid/renderscript/Allocation;->mSize:I

    #@44
    if-ge v0, v1, :cond_2

    #@46
    .line 1409
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@48
    .line 1410
    const-string/jumbo v1, "Size of output array cannot be smaller than size of allocation."

    #@4b
    .line 1409
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 1413
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@51
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@53
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@56
    move-result-wide v2

    #@57
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@59
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@5b
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@5d
    iget v6, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@5f
    move-object v4, p1

    #@60
    move-object v5, p2

    #@61
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    .line 1415
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@67
    .line 1394
    return-void
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2174
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    .line 2175
    const/4 v1, 0x2

    #@3
    .line 2174
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2128
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 2130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@8
    move-result v7

    #@9
    .line 2131
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v11

    #@d
    .line 2133
    .local v11, "width":I
    rem-int/lit8 v5, v11, 0x6

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 2134
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@13
    const-string/jumbo v4, "Cubemap height must be multiple of 6"

    #@16
    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 2136
    :cond_0
    div-int/lit8 v5, v11, 0x6

    #@1c
    if-eq v5, v7, :cond_1

    #@1e
    .line 2137
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@20
    const-string/jumbo v4, "Only square cube map faces supported"

    #@23
    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 2139
    :cond_1
    add-int/lit8 v5, v7, -0x1

    #@29
    and-int/2addr v5, v7

    #@2a
    if-nez v5, :cond_2

    #@2c
    const/4 v8, 0x1

    #@2d
    .line 2140
    .local v8, "isPow2":Z
    :goto_0
    if-nez v8, :cond_3

    #@2f
    .line 2141
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@31
    const-string/jumbo v4, "Only power of 2 cube faces supported"

    #@34
    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 2139
    .end local v8    # "isPow2":Z
    :cond_2
    const/4 v8, 0x0

    #@39
    .restart local v8    # "isPow2":Z
    goto :goto_0

    #@3a
    .line 2144
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    #@3d
    move-result-object v0

    #@3e
    .line 2145
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v10, Landroid/renderscript/Type$Builder;

    #@40
    invoke-direct {v10, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@43
    .line 2146
    .local v10, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v10, v7}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@46
    .line 2147
    invoke-virtual {v10, v7}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@49
    .line 2148
    invoke-virtual {v10, v1}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    #@4c
    .line 2149
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@4e
    if-ne p2, v5, :cond_4

    #@50
    :goto_1
    invoke-virtual {v10, v1}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    #@53
    .line 2150
    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@56
    move-result-object v9

    #@57
    .line 2152
    .local v9, "t":Landroid/renderscript/Type;
    invoke-virtual {v9, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v2

    #@5b
    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@5d
    move-object v1, p0

    #@5e
    move-object v5, p1

    #@5f
    move v6, p3

    #@60
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    #@63
    move-result-wide v2

    #@64
    .line 2153
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@66
    cmp-long v1, v2, v4

    #@68
    if-nez v1, :cond_5

    #@6a
    .line 2154
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@6c
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v5, "Load failed for bitmap "

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    const-string/jumbo v5, " element "

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v1

    #@8f
    .end local v2    # "id":J
    .end local v9    # "t":Landroid/renderscript/Type;
    :cond_4
    move v1, v4

    #@90
    .line 2149
    goto :goto_1

    #@91
    .line 2156
    .restart local v2    # "id":J
    .restart local v9    # "t":Landroid/renderscript/Type;
    :cond_5
    new-instance v1, Landroid/renderscript/Allocation;

    #@93
    move-object v4, p0

    #@94
    move-object v5, v9

    #@95
    move v6, p3

    #@96
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    #@99
    return-object v1
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2270
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    .line 2271
    const/4 v8, 0x2

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move-object v5, p5

    #@9
    move-object v6, p6

    #@a
    .line 2269
    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    #@0
    .prologue
    .line 2205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v5

    #@4
    .line 2206
    .local v5, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v9

    #@8
    if-ne v9, v5, :cond_0

    #@a
    .line 2207
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@d
    move-result v9

    #@e
    if-eq v9, v5, :cond_1

    #@10
    .line 2212
    :cond_0
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    #@12
    const-string/jumbo v10, "Only square cube map faces supported"

    #@15
    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v9

    #@19
    .line 2207
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c
    move-result v9

    #@1d
    if-ne v9, v5, :cond_0

    #@1f
    .line 2208
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@22
    move-result v9

    #@23
    if-ne v9, v5, :cond_0

    #@25
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@28
    move-result v9

    #@29
    if-ne v9, v5, :cond_0

    #@2b
    .line 2209
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    #@2e
    move-result v9

    #@2f
    if-ne v9, v5, :cond_0

    #@31
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    #@34
    move-result v9

    #@35
    if-ne v9, v5, :cond_0

    #@37
    .line 2210
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    #@3a
    move-result v9

    #@3b
    if-ne v9, v5, :cond_0

    #@3d
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    #@40
    move-result v9

    #@41
    if-ne v9, v5, :cond_0

    #@43
    .line 2211
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    #@46
    move-result v9

    #@47
    if-ne v9, v5, :cond_0

    #@49
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    #@4c
    move-result v9

    #@4d
    if-ne v9, v5, :cond_0

    #@4f
    .line 2214
    add-int/lit8 v9, v5, -0x1

    #@51
    and-int/2addr v9, v5

    #@52
    if-nez v9, :cond_2

    #@54
    const/4 v6, 0x1

    #@55
    .line 2215
    .local v6, "isPow2":Z
    :goto_0
    if-nez v6, :cond_3

    #@57
    .line 2216
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    #@59
    const-string/jumbo v10, "Only power of 2 cube faces supported"

    #@5c
    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v9

    #@60
    .line 2214
    .end local v6    # "isPow2":Z
    :cond_2
    const/4 v6, 0x0

    #@61
    .restart local v6    # "isPow2":Z
    goto :goto_0

    #@62
    .line 2219
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    #@65
    move-result-object v4

    #@66
    .line 2220
    .local v4, "e":Landroid/renderscript/Element;
    new-instance v8, Landroid/renderscript/Type$Builder;

    #@68
    invoke-direct {v8, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@6b
    .line 2221
    .local v8, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@6e
    .line 2222
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@71
    .line 2223
    const/4 v9, 0x1

    #@72
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    #@75
    .line 2224
    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@77
    move-object/from16 v0, p7

    #@79
    if-ne v0, v9, :cond_4

    #@7b
    const/4 v9, 0x1

    #@7c
    :goto_1
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    #@7f
    .line 2225
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@82
    move-result-object v7

    #@83
    .line 2226
    .local v7, "t":Landroid/renderscript/Type;
    move-object/from16 v0, p7

    #@85
    move/from16 v1, p8

    #@87
    invoke-static {p0, v7, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@8a
    move-result-object v3

    #@8b
    .line 2228
    .local v3, "cubemap":Landroid/renderscript/Allocation;
    invoke-static {p0, v3}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    #@8e
    move-result-object v2

    #@8f
    .line 2229
    .local v2, "adapter":Landroid/renderscript/AllocationAdapter;
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@91
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@94
    .line 2230
    invoke-virtual {v2, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@97
    .line 2231
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@99
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@9c
    .line 2232
    invoke-virtual {v2, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@9f
    .line 2233
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@a1
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@a4
    .line 2234
    invoke-virtual {v2, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@a7
    .line 2235
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@a9
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@ac
    .line 2236
    invoke-virtual {v2, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@af
    .line 2237
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@b1
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@b4
    .line 2238
    move-object/from16 v0, p5

    #@b6
    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@b9
    .line 2239
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@bb
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@be
    .line 2240
    move-object/from16 v0, p6

    #@c0
    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@c3
    .line 2242
    return-object v3

    #@c4
    .line 2224
    .end local v2    # "adapter":Landroid/renderscript/AllocationAdapter;
    .end local v3    # "cubemap":Landroid/renderscript/Allocation;
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_4
    const/4 v9, 0x0

    #@c5
    goto :goto_1
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a
    const/16 v1, 0x12

    #@c
    if-lt v0, v1, :cond_0

    #@e
    .line 2103
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@10
    .line 2104
    const/16 v1, 0x83

    #@12
    .line 2103
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 2106
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@19
    .line 2107
    const/4 v1, 0x2

    #@1a
    .line 2106
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 15
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    #@0
    .prologue
    .line 2010
    :try_start_0
    const-string/jumbo v6, "createFromBitmap"

    #@3
    const-wide/32 v8, 0x8000

    #@6
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2011
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@c
    .line 2014
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@f
    move-result-object v6

    #@10
    if-nez v6, :cond_1

    #@12
    .line 2015
    move/from16 v0, p3

    #@14
    and-int/lit16 v6, v0, 0x80

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 2016
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    #@1a
    const-string/jumbo v7, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    #@1d
    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 2047
    :catchall_0
    move-exception v6

    #@22
    .line 2048
    const-wide/32 v8, 0x8000

    #@25
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@28
    .line 2047
    throw v6

    #@29
    .line 2018
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@2c
    move-result v6

    #@2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@30
    move-result v7

    #@31
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@33
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@36
    move-result-object v13

    #@37
    .line 2019
    .local v13, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    #@39
    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3c
    .line 2020
    .local v2, "c":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    #@3d
    const/4 v7, 0x0

    #@3e
    const/4 v8, 0x0

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@44
    .line 2021
    move-object/from16 v0, p2

    #@46
    move/from16 v1, p3

    #@48
    invoke-static {p0, v13, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    move-result-object v6

    #@4c
    .line 2048
    const-wide/32 v8, 0x8000

    #@4f
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@52
    .line 2021
    return-object v6

    #@53
    .line 2024
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v13    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    #@56
    move-result-object v14

    #@57
    .line 2027
    .local v14, "t":Landroid/renderscript/Type;
    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@59
    move-object/from16 v0, p2

    #@5b
    if-ne v0, v6, :cond_3

    #@5d
    .line 2028
    invoke-virtual {v14}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@60
    move-result-object v6

    #@61
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@68
    move-result v6

    #@69
    .line 2027
    if-eqz v6, :cond_3

    #@6b
    .line 2029
    const/16 v6, 0x83

    #@6d
    move/from16 v0, p3

    #@6f
    if-ne v0, v6, :cond_3

    #@71
    .line 2030
    invoke-virtual {v14, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@74
    move-result-wide v4

    #@75
    move-object/from16 v0, p2

    #@77
    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@79
    move-object v3, p0

    #@7a
    move-object/from16 v7, p1

    #@7c
    move/from16 v8, p3

    #@7e
    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    #@81
    move-result-wide v4

    #@82
    .line 2031
    .local v4, "id":J
    const-wide/16 v6, 0x0

    #@84
    cmp-long v6, v4, v6

    #@86
    if-nez v6, :cond_2

    #@88
    .line 2032
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@8a
    const-string/jumbo v7, "Load failed."

    #@8d
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@90
    throw v6

    #@91
    .line 2036
    :cond_2
    new-instance v3, Landroid/renderscript/Allocation;

    #@93
    move-object v6, p0

    #@94
    move-object v7, v14

    #@95
    move/from16 v8, p3

    #@97
    invoke-direct/range {v3 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    #@9a
    .line 2037
    .local v3, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p1

    #@9c
    invoke-direct {v3, v0}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9f
    .line 2048
    const-wide/32 v6, 0x8000

    #@a2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@a5
    .line 2038
    return-object v3

    #@a6
    .line 2042
    .end local v3    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "id":J
    :cond_3
    :try_start_3
    invoke-virtual {v14, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@a9
    move-result-wide v8

    #@aa
    move-object/from16 v0, p2

    #@ac
    iget v10, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@ae
    move-object v7, p0

    #@af
    move-object/from16 v11, p1

    #@b1
    move/from16 v12, p3

    #@b3
    invoke-virtual/range {v7 .. v12}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    #@b6
    move-result-wide v4

    #@b7
    .line 2043
    .restart local v4    # "id":J
    const-wide/16 v6, 0x0

    #@b9
    cmp-long v6, v4, v6

    #@bb
    if-nez v6, :cond_4

    #@bd
    .line 2044
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@bf
    const-string/jumbo v7, "Load failed."

    #@c2
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v6

    #@c6
    .line 2046
    :cond_4
    new-instance v7, Landroid/renderscript/Allocation;

    #@c8
    move-wide v8, v4

    #@c9
    move-object v10, p0

    #@ca
    move-object v11, v14

    #@cb
    move/from16 v12, p3

    #@cd
    invoke-direct/range {v7 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d0
    .line 2048
    const-wide/32 v8, 0x8000

    #@d3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@d6
    .line 2046
    return-object v7
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 2324
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a
    const/16 v1, 0x12

    #@c
    if-lt v0, v1, :cond_0

    #@e
    .line 2326
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@10
    .line 2327
    const/4 v1, 0x3

    #@11
    .line 2325
    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 2330
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@18
    .line 2331
    const/4 v1, 0x2

    #@19
    .line 2329
    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    #@0
    .prologue
    .line 2295
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 2296
    and-int/lit16 v2, p4, 0xe0

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 2297
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@9
    const-string/jumbo v3, "Unsupported usage specified."

    #@c
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 2299
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@13
    move-result-object v1

    #@14
    .line 2300
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@17
    move-result-object v0

    #@18
    .line 2301
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@1b
    .line 2302
    return-object v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    #@0
    .prologue
    .line 2346
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 2347
    const/4 v1, 0x0

    #@4
    .line 2349
    .local v1, "allocArray":[B
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    #@7
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@a
    move-result-object v1

    #@b
    .line 2350
    .local v1, "allocArray":[B
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@e
    move-result-object v3

    #@f
    array-length v4, v1

    #@10
    invoke-static {p0, v3, v4, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@13
    move-result-object v0

    #@14
    .line 2351
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2352
    return-object v0

    #@18
    .line 2354
    .end local v0    # "alloc":Landroid/renderscript/Allocation;
    .end local v1    # "allocArray":[B
    :catch_0
    move-exception v2

    #@19
    .line 2355
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@1b
    const-string/jumbo v4, "Could not convert string to utf-8."

    #@1e
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1963
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    #@0
    .prologue
    .line 1937
    :try_start_0
    const-string/jumbo v1, "createSized"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1938
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@c
    .line 1939
    new-instance v0, Landroid/renderscript/Type$Builder;

    #@e
    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@11
    .line 1940
    .local v0, "b":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@14
    .line 1941
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@17
    move-result-object v8

    #@18
    .line 1943
    .local v8, "t":Landroid/renderscript/Type;
    invoke-virtual {v8, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v2

    #@1c
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@1e
    iget v4, v1, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@20
    const-wide/16 v6, 0x0

    #@22
    move-object v1, p0

    #@23
    move v5, p3

    #@24
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    #@27
    move-result-wide v2

    #@28
    .line 1944
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@2a
    cmp-long v1, v2, v4

    #@2c
    if-nez v1, :cond_0

    #@2e
    .line 1945
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@30
    const-string/jumbo v4, "Allocation creation failed."

    #@33
    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 1948
    .end local v0    # "b":Landroid/renderscript/Type$Builder;
    .end local v2    # "id":J
    .end local v8    # "t":Landroid/renderscript/Type;
    :catchall_0
    move-exception v1

    #@38
    .line 1949
    const-wide/32 v4, 0x8000

    #@3b
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3e
    .line 1948
    throw v1

    #@3f
    .line 1947
    .restart local v0    # "b":Landroid/renderscript/Type$Builder;
    .restart local v2    # "id":J
    .restart local v8    # "t":Landroid/renderscript/Type;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/renderscript/Allocation;

    #@41
    move-object v4, p0

    #@42
    move-object v5, v8

    #@43
    move v6, p3

    #@44
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 1949
    const-wide/32 v4, 0x8000

    #@4a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4d
    .line 1947
    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;

    #@0
    .prologue
    .line 1920
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I

    #@0
    .prologue
    .line 1907
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    #@0
    .prologue
    const-wide/32 v10, 0x8000

    #@3
    const-wide/16 v8, 0x0

    #@5
    .line 1880
    :try_start_0
    const-string/jumbo v0, "createTyped"

    #@8
    const-wide/32 v4, 0x8000

    #@b
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@e
    .line 1881
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1882
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@14
    move-result-wide v0

    #@15
    cmp-long v0, v0, v8

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1883
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@1b
    const-string/jumbo v1, "Bad Type"

    #@1e
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1890
    :catchall_0
    move-exception v0

    #@23
    .line 1891
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 1890
    throw v0

    #@27
    .line 1885
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@2a
    move-result-wide v2

    #@2b
    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@2d
    const-wide/16 v6, 0x0

    #@2f
    move-object v1, p0

    #@30
    move v5, p3

    #@31
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    #@34
    move-result-wide v2

    #@35
    .line 1886
    .local v2, "id":J
    cmp-long v0, v2, v8

    #@37
    if-nez v0, :cond_1

    #@39
    .line 1887
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@3b
    const-string/jumbo v1, "Allocation creation failed."

    #@3e
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 1889
    :cond_1
    new-instance v1, Landroid/renderscript/Allocation;

    #@44
    move-object v4, p0

    #@45
    move-object v5, p1

    #@46
    move v6, p3

    #@47
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 1891
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@4d
    .line 1889
    return-object v1
.end method

.method private data1DChecks(IIIIZ)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I
    .param p5, "usePadding"    # Z

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 884
    if-gez p1, :cond_0

    #@7
    .line 885
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@9
    const-string/jumbo v1, "Offset must be >= 0."

    #@c
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 887
    :cond_0
    const/4 v0, 0x1

    #@11
    if-ge p2, v0, :cond_1

    #@13
    .line 888
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@15
    const-string/jumbo v1, "Count must be >= 1."

    #@18
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 890
    :cond_1
    add-int v0, p1, p2

    #@1e
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@20
    if-le v0, v1, :cond_2

    #@22
    .line 891
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "Overflow, Available count "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 892
    const-string/jumbo v2, ", got "

    #@39
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 892
    const-string/jumbo v2, " at offset "

    #@44
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 892
    const-string/jumbo v2, "."

    #@4f
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 894
    :cond_2
    if-eqz p5, :cond_3

    #@5d
    .line 895
    div-int/lit8 v0, p4, 0x4

    #@5f
    mul-int/lit8 v0, v0, 0x3

    #@61
    if-ge p3, v0, :cond_4

    #@63
    .line 896
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@65
    const-string/jumbo v1, "Array too small for allocation type."

    #@68
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 899
    :cond_3
    if-ge p3, p4, :cond_4

    #@6e
    .line 900
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@70
    const-string/jumbo v1, "Array too small for allocation type."

    #@73
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v0

    #@77
    .line 882
    :cond_4
    return-void
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1967
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v0

    #@4
    .line 1968
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1969
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1971
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 1972
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 1974
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 1975
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 1977
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@21
    if-ne v0, v1, :cond_3

    #@23
    .line 1978
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 1980
    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "Bad bitmap type: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1
.end method

.method private getIDSafe()J
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 249
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@6
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@8
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0

    #@d
    .line 251
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method static sendBufferNotification(J)V
    .locals 4
    .param p0, "id"    # J

    #@0
    .prologue
    .line 2383
    sget-object v2, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 2384
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@5
    new-instance v3, Ljava/lang/Long;

    #@7
    invoke-direct {v3, p0, p1}, Ljava/lang/Long;-><init>(J)V

    #@a
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/renderscript/Allocation;

    #@10
    .line 2386
    .local v0, "a":Landroid/renderscript/Allocation;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 2387
    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    #@18
    invoke-interface {v1, v0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 2382
    return-void

    #@1d
    .line 2383
    .end local v0    # "a":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    .line 313
    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/renderscript/Allocation$MipmapControl;

    #@0
    .prologue
    .line 1985
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    #@3
    move-result-object v0

    #@4
    .line 1986
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    #@6
    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@9
    .line 1987
    .local v1, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v2

    #@d
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@10
    .line 1988
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@17
    .line 1989
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@19
    if-ne p2, v2, :cond_0

    #@1b
    const/4 v2, 0x1

    #@1c
    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    #@1f
    .line 1990
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 1989
    :cond_0
    const/4 v2, 0x0

    #@25
    goto :goto_0
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 3
    .param p1, "t"    # Landroid/renderscript/Type;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 301
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@7
    .line 302
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@d
    .line 303
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@13
    .line 304
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@15
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@17
    .line 305
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@19
    if-le v0, v2, :cond_0

    #@1b
    .line 306
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@1d
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@1f
    mul-int/2addr v0, v1

    #@20
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@22
    .line 308
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@24
    if-le v0, v2, :cond_1

    #@26
    .line 309
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@28
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@2a
    mul-int/2addr v0, v1

    #@2b
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@2d
    .line 300
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1089
    :cond_0
    return-void

    #@5
    .line 1094
    :cond_1
    if-ltz p1, :cond_2

    #@7
    if-gez p2, :cond_3

    #@9
    .line 1095
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@b
    const-string/jumbo v1, "Offset cannot be negative."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1097
    :cond_3
    if-ltz p4, :cond_4

    #@14
    if-gez p3, :cond_5

    #@16
    .line 1098
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@18
    const-string/jumbo v1, "Height or width cannot be negative."

    #@1b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1100
    :cond_5
    add-int v0, p1, p3

    #@21
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@23
    if-gt v0, v1, :cond_6

    #@25
    add-int v0, p2, p4

    #@27
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@29
    if-le v0, v1, :cond_0

    #@2b
    .line 1101
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@2d
    const-string/jumbo v1, "Updated region larger than allocation."

    #@30
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1275
    :cond_0
    return-void

    #@5
    .line 1280
    :cond_1
    if-ltz p1, :cond_2

    #@7
    if-gez p2, :cond_3

    #@9
    .line 1281
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@b
    const-string/jumbo v1, "Offset cannot be negative."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1280
    :cond_3
    if-ltz p3, :cond_2

    #@14
    .line 1283
    if-ltz p5, :cond_4

    #@16
    if-gez p4, :cond_5

    #@18
    .line 1284
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Height or width cannot be negative."

    #@1d
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1283
    :cond_5
    if-ltz p6, :cond_4

    #@23
    .line 1286
    add-int v0, p1, p4

    #@25
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@27
    if-gt v0, v1, :cond_6

    #@29
    add-int v0, p2, p5

    #@2b
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@2d
    if-le v0, v1, :cond_7

    #@2f
    .line 1287
    :cond_6
    :goto_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@31
    const-string/jumbo v1, "Updated region larger than allocation."

    #@34
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 1286
    :cond_7
    add-int v0, p3, p6

    #@3a
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@3c
    if-le v0, v1, :cond_0

    #@3e
    goto :goto_0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 560
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@4
    move-result-object v0

    #@5
    .line 561
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    #@7
    .line 562
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@9
    const-string/jumbo v2, "Bitmap has an unsupported format for this operation"

    #@c
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 564
    :cond_0
    invoke-static {}, Landroid/renderscript/Allocation;->-getandroid_graphics_Bitmap$ConfigSwitchesValues()[I

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    #@17
    move-result v2

    #@18
    aget v1, v1, v2

    #@1a
    packed-switch v1, :pswitch_data_0

    #@1d
    .line 559
    :cond_1
    return-void

    #@1e
    .line 566
    :pswitch_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@20
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@23
    move-result-object v1

    #@24
    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@26
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    #@28
    if-eq v1, v2, :cond_1

    #@2a
    .line 567
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Allocation kind is "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 568
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@3a
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@3d
    move-result-object v3

    #@3e
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@40
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 568
    const-string/jumbo v3, ", type "

    #@47
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 569
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@4d
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@50
    move-result-object v3

    #@51
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@53
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 570
    const-string/jumbo v3, " of "

    #@5a
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 570
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@60
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@67
    move-result v3

    #@68
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    .line 571
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@6f
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v1

    #@7f
    .line 575
    :pswitch_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@81
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@84
    move-result-object v1

    #@85
    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@87
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@89
    if-ne v1, v2, :cond_2

    #@8b
    .line 576
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@8d
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@94
    move-result v1

    #@95
    const/4 v2, 0x4

    #@96
    if-eq v1, v2, :cond_1

    #@98
    .line 577
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@9a
    new-instance v2, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v3, "Allocation kind is "

    #@a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    .line 578
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@a8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@ab
    move-result-object v3

    #@ac
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@ae
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    .line 578
    const-string/jumbo v3, ", type "

    #@b5
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    .line 579
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@bb
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@be
    move-result-object v3

    #@bf
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@c1
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    .line 580
    const-string/jumbo v3, " of "

    #@c8
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    .line 580
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@ce
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@d1
    move-result-object v3

    #@d2
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@d5
    move-result v3

    #@d6
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    .line 581
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@dd
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v2

    #@e1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v2

    #@e5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v2

    #@e9
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ec
    throw v1

    #@ed
    .line 585
    :pswitch_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@ef
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@f2
    move-result-object v1

    #@f3
    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@f5
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    #@f7
    if-ne v1, v2, :cond_3

    #@f9
    .line 586
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@fb
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@fe
    move-result-object v1

    #@ff
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@102
    move-result v1

    #@103
    if-eq v1, v3, :cond_1

    #@105
    .line 587
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@107
    new-instance v2, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v3, "Allocation kind is "

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    .line 588
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@115
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@118
    move-result-object v3

    #@119
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@11b
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v2

    #@11f
    .line 588
    const-string/jumbo v3, ", type "

    #@122
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v2

    #@126
    .line 589
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@128
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@12b
    move-result-object v3

    #@12c
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@12e
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v2

    #@132
    .line 590
    const-string/jumbo v3, " of "

    #@135
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v2

    #@139
    .line 590
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@13b
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@13e
    move-result-object v3

    #@13f
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@142
    move-result v3

    #@143
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    .line 591
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@14a
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v2

    #@14e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v2

    #@152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v2

    #@156
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@159
    throw v1

    #@15a
    .line 595
    :pswitch_3
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@15c
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@15f
    move-result-object v1

    #@160
    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@162
    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    #@164
    if-ne v1, v2, :cond_4

    #@166
    .line 596
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@168
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@16b
    move-result-object v1

    #@16c
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@16f
    move-result v1

    #@170
    if-eq v1, v3, :cond_1

    #@172
    .line 597
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@174
    new-instance v2, Ljava/lang/StringBuilder;

    #@176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    const-string/jumbo v3, "Allocation kind is "

    #@17c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v2

    #@180
    .line 598
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@182
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@185
    move-result-object v3

    #@186
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@188
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v2

    #@18c
    .line 598
    const-string/jumbo v3, ", type "

    #@18f
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v2

    #@193
    .line 599
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@195
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@198
    move-result-object v3

    #@199
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@19b
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v2

    #@19f
    .line 600
    const-string/jumbo v3, " of "

    #@1a2
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v2

    #@1a6
    .line 600
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1a8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1ab
    move-result-object v3

    #@1ac
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@1af
    move-result v3

    #@1b0
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v2

    #@1b4
    .line 601
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@1b7
    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v2

    #@1bb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v2

    #@1bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v2

    #@1c3
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c6
    throw v1

    #@1c7
    .line 564
    nop

    #@1c8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 609
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@d
    move-result v1

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 610
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@12
    const-string/jumbo v1, "Cannot update allocation from bitmap, sizes mismatch"

    #@15
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 608
    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 401
    return-void

    #@b
    .line 403
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "32 bit float source does not match allocation type "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1b
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@1d
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 403
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 409
    return-void

    #@b
    .line 411
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "64 bit float source does not match allocation type "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1b
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@1d
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 411
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 383
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@c
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@e
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@10
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 384
    :cond_0
    return-void

    #@15
    .line 386
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "16 bit integer source does not match allocation type "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@25
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@27
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 386
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 374
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@c
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@e
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@10
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 375
    :cond_0
    return-void

    #@15
    .line 377
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "32 bit integer source does not match allocation type "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@25
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@27
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 377
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsInt64()V
    .locals 3

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 365
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@c
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@e
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@10
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 366
    :cond_0
    return-void

    #@15
    .line 368
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "64 bit integer source does not match allocation type "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@25
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@27
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 368
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 392
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@c
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@e
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@10
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 393
    :cond_0
    return-void

    #@15
    .line 395
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "8 bit integer source does not match allocation type "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@25
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@27
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 395
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 417
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@c
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@e
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@10
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 426
    :cond_0
    return-void

    #@15
    .line 418
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@17
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@19
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@1b
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    #@1d
    if-eq v0, v1, :cond_0

    #@1f
    .line 419
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@21
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@23
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@25
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    #@27
    if-eq v0, v1, :cond_0

    #@29
    .line 420
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2b
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@2d
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@2f
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    #@31
    if-eq v0, v1, :cond_0

    #@33
    .line 421
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@35
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@37
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@39
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    #@3b
    if-eq v0, v1, :cond_0

    #@3d
    .line 422
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@3f
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@41
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@43
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    #@45
    if-eq v0, v1, :cond_0

    #@47
    .line 423
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@49
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@4b
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@4d
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    #@4f
    if-eq v0, v1, :cond_0

    #@51
    .line 424
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@53
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@55
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@57
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    #@59
    if-eq v0, v1, :cond_0

    #@5b
    .line 425
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@5d
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@5f
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@61
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    #@63
    if-eq v0, v1, :cond_0

    #@65
    .line 428
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@67
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "Object source does not match allocation type "

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@75
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@77
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    .line 428
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 4
    .param p1, "d"    # Ljava/lang/Object;
    .param p2, "checkType"    # Z

    #@0
    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 84
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 85
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@c
    const-string/jumbo v3, "Object passed is not an array of primitives."

    #@f
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    .line 88
    .local v1, "cmp":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 89
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Object passed is not an Array of primitives."

    #@22
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 92
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@28
    if-ne v1, v2, :cond_3

    #@2a
    .line 93
    if-eqz p2, :cond_2

    #@2c
    .line 94
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    #@2f
    .line 95
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@31
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@33
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@35
    return-object v2

    #@36
    .line 97
    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@38
    return-object v2

    #@39
    .line 100
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3b
    if-ne v1, v2, :cond_5

    #@3d
    .line 101
    if-eqz p2, :cond_4

    #@3f
    .line 102
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@42
    .line 103
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@44
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@46
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@48
    return-object v2

    #@49
    .line 105
    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@4b
    return-object v2

    #@4c
    .line 108
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@4e
    if-ne v1, v2, :cond_7

    #@50
    .line 109
    if-eqz p2, :cond_6

    #@52
    .line 110
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@55
    .line 111
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@57
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@59
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@5b
    return-object v2

    #@5c
    .line 113
    :cond_6
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5e
    return-object v2

    #@5f
    .line 116
    :cond_7
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@61
    if-ne v1, v2, :cond_9

    #@63
    .line 117
    if-eqz p2, :cond_8

    #@65
    .line 118
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@68
    .line 119
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6a
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@6c
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6e
    return-object v2

    #@6f
    .line 121
    :cond_8
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@71
    return-object v2

    #@72
    .line 124
    :cond_9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@74
    if-ne v1, v2, :cond_b

    #@76
    .line 125
    if-eqz p2, :cond_a

    #@78
    .line 126
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@7b
    .line 128
    :cond_a
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@7d
    return-object v2

    #@7e
    .line 131
    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@80
    if-ne v1, v2, :cond_d

    #@82
    .line 132
    if-eqz p2, :cond_c

    #@84
    .line 133
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    #@87
    .line 135
    :cond_c
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@89
    return-object v2

    #@8a
    .line 137
    :cond_d
    const/4 v2, 0x0

    #@8b
    return-object v2
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 18
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/renderscript/Allocation;
    .param p4, "dataOff"    # I

    #@0
    .prologue
    .line 1081
    const-string/jumbo v2, "copy1DRangeFrom"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1082
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@10
    move-result-wide v4

    #@11
    .line 1083
    move-object/from16 v0, p0

    #@13
    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@19
    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@1b
    .line 1084
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@1f
    move-object/from16 v0, p3

    #@21
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@24
    move-result-wide v12

    #@25
    .line 1085
    move-object/from16 v0, p3

    #@27
    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@29
    move/from16 v16, v0

    #@2b
    move-object/from16 v0, p3

    #@2d
    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@2f
    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@31
    move/from16 v17, v0

    #@33
    .line 1082
    const/4 v7, 0x0

    #@34
    .line 1084
    const/4 v11, 0x1

    #@35
    const/4 v15, 0x0

    #@36
    move/from16 v6, p1

    #@38
    move/from16 v10, p2

    #@3a
    move/from16 v14, p4

    #@3c
    .line 1082
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    #@3f
    .line 1086
    const-wide/32 v2, 0x8000

    #@42
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@45
    .line 1080
    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1011
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 1012
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v5

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    .line 1010
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 1009
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 1053
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1054
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1052
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 1067
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1068
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1066
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 1025
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1026
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1024
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 1039
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@3
    .line 1040
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1038
    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 947
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 948
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v5

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    .line 946
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 945
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 984
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 983
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 996
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 995
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 960
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 959
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 972
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 971
    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1644
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 1645
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v5

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    .line 1643
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 1642
    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 1686
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1687
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1685
    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 1700
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1701
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1699
    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 1658
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1659
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1657
    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 1672
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@3
    .line 1673
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v5, p3

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move-object v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@d
    .line 1671
    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1580
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 1581
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v5

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move-object v3, p3

    #@d
    .line 1579
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 1578
    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 1617
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 1616
    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 1629
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 1628
    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 1593
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 1592
    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 1605
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@2
    array-length v5, p3

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@a
    .line 1604
    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 18
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    #@0
    .prologue
    .line 1235
    :try_start_0
    const-string/jumbo v2, "copy2DRangeFrom"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1236
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1237
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@13
    .line 1238
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@17
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@1a
    move-result-wide v4

    #@1b
    .line 1239
    move-object/from16 v0, p0

    #@1d
    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@23
    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@25
    .line 1240
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p5

    #@2b
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2e
    move-result-wide v12

    #@2f
    .line 1241
    move-object/from16 v0, p5

    #@31
    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@33
    move/from16 v16, v0

    #@35
    move-object/from16 v0, p5

    #@37
    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@39
    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@3b
    move/from16 v17, v0

    #@3d
    move/from16 v6, p1

    #@3f
    move/from16 v7, p2

    #@41
    move/from16 v10, p3

    #@43
    move/from16 v11, p4

    #@45
    move/from16 v14, p6

    #@47
    move/from16 v15, p7

    #@49
    .line 1238
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 1243
    const-wide/32 v2, 0x8000

    #@4f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@52
    .line 1233
    return-void

    #@53
    .line 1242
    :catchall_0
    move-exception v2

    #@54
    .line 1243
    const-wide/32 v4, 0x8000

    #@57
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@5a
    .line 1242
    throw v2
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/32 v8, 0x8000

    #@3
    .line 1147
    :try_start_0
    const-string/jumbo v0, "copy2DRangeFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1149
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@10
    move-result-object v6

    #@11
    .line 1150
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@14
    move-result v7

    #@15
    move-object v0, p0

    #@16
    move v1, p1

    #@17
    move v2, p2

    #@18
    move v3, p3

    #@19
    move v4, p4

    #@1a
    move-object v5, p5

    #@1b
    .line 1148
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1152
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@21
    .line 1145
    return-void

    #@22
    .line 1151
    :catchall_0
    move-exception v0

    #@23
    .line 1152
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 1151
    throw v0
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    #@0
    .prologue
    .line 1167
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1169
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1168
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1166
    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    #@0
    .prologue
    .line 1215
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1217
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1216
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1214
    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    #@0
    .prologue
    .line 1199
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1201
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1200
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1198
    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    #@0
    .prologue
    .line 1183
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@3
    .line 1185
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1184
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1182
    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const-wide/32 v10, 0x8000

    #@3
    .line 1258
    :try_start_0
    const-string/jumbo v1, "copy2DRangeFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1259
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1260
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1261
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@1e
    move-result v2

    #@1f
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@21
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@24
    move-result-object v9

    #@25
    .line 1262
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@27
    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2a
    .line 1263
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    #@2b
    const/4 v2, 0x0

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@30
    .line 1264
    invoke-virtual {p0, p1, p2, v9}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1271
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 1265
    return-void

    #@37
    .line 1267
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    #@3a
    .line 1268
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    #@3d
    move-result v1

    #@3e
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    #@41
    move-result v2

    #@42
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@45
    .line 1269
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@47
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@4a
    move-result-wide v2

    #@4b
    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@4d
    iget-object v4, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@4f
    iget v7, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@51
    move v4, p1

    #@52
    move v5, p2

    #@53
    move-object v8, p3

    #@54
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 1271
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@5a
    .line 1256
    return-void

    #@5b
    .line 1270
    :catchall_0
    move-exception v1

    #@5c
    .line 1271
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@5f
    .line 1270
    throw v1
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    #@0
    .prologue
    .line 1109
    :try_start_0
    const-string/jumbo v3, "copy2DRangeFromUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1110
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1111
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@13
    .line 1112
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@17
    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@19
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@1c
    move-result v3

    #@1d
    mul-int v3, v3, p3

    #@1f
    mul-int v2, v3, p4

    #@21
    .line 1114
    .local v2, "dataSize":I
    const/16 v16, 0x0

    #@23
    .line 1115
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    #@25
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@27
    mul-int v13, p7, v3

    #@29
    .line 1116
    .local v13, "sizeBytes":I
    move-object/from16 v0, p0

    #@2b
    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@2d
    if-eqz v3, :cond_2

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@33
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    #@3a
    move-result v3

    #@3b
    const/4 v4, 0x3

    #@3c
    if-ne v3, v4, :cond_2

    #@3e
    .line 1117
    div-int/lit8 v3, v2, 0x4

    #@40
    mul-int/lit8 v3, v3, 0x3

    #@42
    if-le v3, v13, :cond_0

    #@44
    .line 1118
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@46
    const-string/jumbo v4, "Array too small for allocation type."

    #@49
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 1130
    .end local v2    # "dataSize":I
    .end local v13    # "sizeBytes":I
    .end local v16    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@4e
    .line 1131
    const-wide/32 v4, 0x8000

    #@51
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@54
    .line 1130
    throw v3

    #@55
    .line 1120
    .restart local v2    # "dataSize":I
    .restart local v13    # "sizeBytes":I
    .restart local v16    # "usePadding":Z
    :cond_0
    const/16 v16, 0x1

    #@57
    .line 1121
    move v13, v2

    #@58
    .line 1127
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@5a
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5c
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@5f
    move-result-wide v4

    #@60
    move-object/from16 v0, p0

    #@62
    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v6, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@68
    iget v9, v6, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@6a
    .line 1129
    move-object/from16 v0, p0

    #@6c
    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6e
    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@70
    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@72
    iget v15, v6, Landroid/renderscript/Element$DataType;->mSize:I

    #@74
    move/from16 v6, p1

    #@76
    move/from16 v7, p2

    #@78
    move/from16 v10, p3

    #@7a
    move/from16 v11, p4

    #@7c
    move-object/from16 v12, p5

    #@7e
    move-object/from16 v14, p6

    #@80
    .line 1127
    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 1131
    const-wide/32 v4, 0x8000

    #@86
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@89
    .line 1107
    return-void

    #@8a
    .line 1123
    :cond_2
    if-le v2, v13, :cond_1

    #@8c
    .line 1124
    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@8e
    const-string/jumbo v4, "Array too small for allocation type."

    #@91
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1744
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v6

    #@5
    .line 1745
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v7

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move-object v5, p5

    #@f
    .line 1743
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@12
    .line 1742
    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    #@0
    .prologue
    .line 1758
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1760
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1759
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1757
    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    #@0
    .prologue
    .line 1803
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1805
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1804
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1802
    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    #@0
    .prologue
    .line 1788
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1790
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1789
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1787
    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    #@0
    .prologue
    .line 1773
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@3
    .line 1775
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v7, p5

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move-object v5, p5

    #@c
    .line 1774
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1772
    return-void
.end method

.method copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    #@0
    .prologue
    .line 1708
    :try_start_0
    const-string/jumbo v3, "copy2DRangeToUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1709
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1710
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@13
    .line 1711
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@17
    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@19
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    #@1c
    move-result v3

    #@1d
    mul-int v3, v3, p3

    #@1f
    mul-int v2, v3, p4

    #@21
    .line 1713
    .local v2, "dataSize":I
    const/16 v16, 0x0

    #@23
    .line 1714
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    #@25
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@27
    mul-int v13, p7, v3

    #@29
    .line 1715
    .local v13, "sizeBytes":I
    move-object/from16 v0, p0

    #@2b
    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@2d
    if-eqz v3, :cond_2

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@33
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    #@3a
    move-result v3

    #@3b
    const/4 v4, 0x3

    #@3c
    if-ne v3, v4, :cond_2

    #@3e
    .line 1716
    div-int/lit8 v3, v2, 0x4

    #@40
    mul-int/lit8 v3, v3, 0x3

    #@42
    if-le v3, v13, :cond_0

    #@44
    .line 1717
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@46
    const-string/jumbo v4, "Array too small for allocation type."

    #@49
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 1728
    .end local v2    # "dataSize":I
    .end local v13    # "sizeBytes":I
    .end local v16    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@4e
    .line 1729
    const-wide/32 v4, 0x8000

    #@51
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@54
    .line 1728
    throw v3

    #@55
    .line 1719
    .restart local v2    # "dataSize":I
    .restart local v13    # "sizeBytes":I
    .restart local v16    # "usePadding":Z
    :cond_0
    const/16 v16, 0x1

    #@57
    .line 1720
    move v13, v2

    #@58
    .line 1726
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@5a
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5c
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@5f
    move-result-wide v4

    #@60
    move-object/from16 v0, p0

    #@62
    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v6, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@68
    iget v9, v6, Landroid/renderscript/Type$CubemapFace;->mID:I

    #@6a
    .line 1727
    move-object/from16 v0, p0

    #@6c
    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6e
    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@70
    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@72
    iget v15, v6, Landroid/renderscript/Element$DataType;->mSize:I

    #@74
    move/from16 v6, p1

    #@76
    move/from16 v7, p2

    #@78
    move/from16 v10, p3

    #@7a
    move/from16 v11, p4

    #@7c
    move-object/from16 v12, p5

    #@7e
    move-object/from16 v14, p6

    #@80
    .line 1726
    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 1729
    const-wide/32 v4, 0x8000

    #@86
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@89
    .line 1706
    return-void

    #@8a
    .line 1722
    :cond_2
    if-le v2, v13, :cond_1

    #@8c
    .line 1723
    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@8e
    const-string/jumbo v4, "Array too small for allocation type."

    #@91
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    #@0
    .prologue
    .line 1368
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@7
    .line 1369
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    #@a
    .line 1370
    move-object/from16 v0, p0

    #@c
    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@11
    move-result-wide v2

    #@12
    move-object/from16 v0, p0

    #@14
    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@16
    .line 1371
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@1a
    move-object/from16 v0, p7

    #@1c
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@1f
    move-result-wide v11

    #@20
    .line 1372
    move-object/from16 v0, p7

    #@22
    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@24
    move/from16 v16, v0

    #@26
    move/from16 v4, p1

    #@28
    move/from16 v5, p2

    #@2a
    move/from16 v6, p3

    #@2c
    move/from16 v8, p4

    #@2e
    move/from16 v9, p5

    #@30
    move/from16 v10, p6

    #@32
    move/from16 v13, p8

    #@34
    move/from16 v14, p9

    #@36
    move/from16 v15, p10

    #@38
    .line 1370
    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    #@3b
    .line 1367
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1342
    :try_start_0
    const-string/jumbo v2, "copy3DRangeFrom"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1344
    const/4 v2, 0x1

    #@a
    move-object/from16 v0, p7

    #@c
    invoke-direct {p0, v0, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@f
    move-result-object v10

    #@10
    .line 1345
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@13
    move-result v11

    #@14
    move-object v2, p0

    #@15
    move v3, p1

    #@16
    move v4, p2

    #@17
    move v5, p3

    #@18
    move/from16 v6, p4

    #@1a
    move/from16 v7, p5

    #@1c
    move/from16 v8, p6

    #@1e
    move-object/from16 v9, p7

    #@20
    .line 1343
    invoke-direct/range {v2 .. v11}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1347
    const-wide/32 v2, 0x8000

    #@26
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@29
    .line 1340
    return-void

    #@2a
    .line 1346
    :catchall_0
    move-exception v2

    #@2b
    .line 1347
    const-wide/32 v4, 0x8000

    #@2e
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@31
    .line 1346
    throw v2
.end method

.method public copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .locals 11
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1857
    const/4 v1, 0x1

    #@1
    move-object/from16 v0, p7

    #@3
    invoke-direct {p0, v0, v1}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@6
    move-result-object v9

    #@7
    .line 1858
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@a
    move-result v10

    #@b
    move-object v1, p0

    #@c
    move v2, p1

    #@d
    move v3, p2

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    move/from16 v6, p5

    #@12
    move/from16 v7, p6

    #@14
    move-object/from16 v8, p7

    #@16
    .line 1856
    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@19
    .line 1855
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const-wide/32 v6, 0x8000

    #@3
    .line 773
    :try_start_0
    const-string/jumbo v2, "copyFrom"

    #@6
    const-wide/32 v4, 0x8000

    #@9
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 774
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 775
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@14
    move-result-object v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 776
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1e
    move-result v3

    #@1f
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@21
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@24
    move-result-object v1

    #@25
    .line 777
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@27
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2a
    .line 778
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@30
    .line 779
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 786
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 780
    return-void

    #@37
    .line 782
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    #@3a
    .line 783
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    #@3d
    .line 784
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@41
    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v4

    #@45
    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 786
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@4b
    .line 771
    return-void

    #@4c
    .line 785
    :catchall_0
    move-exception v2

    #@4d
    .line 786
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@50
    .line 785
    throw v2
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 10
    .param p1, "a"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const-wide/32 v8, 0x8000

    #@3
    .line 798
    :try_start_0
    const-string/jumbo v0, "copyFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 799
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 800
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@13
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 801
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@1f
    const-string/jumbo v1, "Types of allocations must match."

    #@22
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 804
    :catchall_0
    move-exception v0

    #@27
    .line 805
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@2a
    .line 804
    throw v0

    #@2b
    .line 803
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@2d
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@2f
    const/4 v1, 0x0

    #@30
    const/4 v2, 0x0

    #@31
    const/4 v6, 0x0

    #@32
    const/4 v7, 0x0

    #@33
    move-object v0, p0

    #@34
    move-object v5, p1

    #@35
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 805
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@3b
    .line 796
    return-void
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 702
    :try_start_0
    const-string/jumbo v0, "copyFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 703
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@10
    move-result-object v0

    #@11
    .line 704
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@14
    move-result v1

    #@15
    .line 703
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 706
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 700
    return-void

    #@1c
    .line 705
    :catchall_0
    move-exception v0

    #@1d
    .line 706
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@20
    .line 705
    throw v0
.end method

.method public copyFrom([B)V
    .locals 2
    .param p1, "d"    # [B

    #@0
    .prologue
    .line 742
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 743
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 741
    return-void
.end method

.method public copyFrom([F)V
    .locals 2
    .param p1, "d"    # [F

    #@0
    .prologue
    .line 754
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 755
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 753
    return-void
.end method

.method public copyFrom([I)V
    .locals 2
    .param p1, "d"    # [I

    #@0
    .prologue
    .line 718
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 719
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 717
    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 8
    .param p1, "d"    # [Landroid/renderscript/BaseObj;

    #@0
    .prologue
    const-wide/32 v6, 0x8000

    #@3
    .line 533
    :try_start_0
    const-string/jumbo v3, "copyFrom"

    #@6
    const-wide/32 v4, 0x8000

    #@9
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 534
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 535
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    #@14
    .line 536
    array-length v3, p1

    #@15
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 537
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Array size mismatch, allocation sizeX = "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 538
    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@29
    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 538
    const-string/jumbo v5, ", array length = "

    #@30
    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 538
    array-length v5, p1

    #@35
    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 554
    :catchall_0
    move-exception v3

    #@42
    .line 555
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@45
    .line 554
    throw v3

    #@46
    .line 541
    :cond_0
    :try_start_1
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@48
    const/16 v4, 0x8

    #@4a
    if-ne v3, v4, :cond_2

    #@4c
    .line 542
    array-length v3, p1

    #@4d
    mul-int/lit8 v3, v3, 0x4

    #@4f
    new-array v2, v3, [J

    #@51
    .line 543
    .local v2, "i":[J
    const/4 v0, 0x0

    #@52
    .local v0, "ct":I
    :goto_0
    array-length v3, p1

    #@53
    if-ge v0, v3, :cond_1

    #@55
    .line 544
    mul-int/lit8 v3, v0, 0x4

    #@57
    aget-object v4, p1, v0

    #@59
    iget-object v5, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5b
    invoke-virtual {v4, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@5e
    move-result-wide v4

    #@5f
    aput-wide v4, v2, v3

    #@61
    .line 543
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 546
    :cond_1
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@66
    const/4 v4, 0x0

    #@67
    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 555
    .end local v2    # "i":[J
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@6d
    .line 531
    return-void

    #@6e
    .line 548
    .end local v0    # "ct":I
    :cond_2
    :try_start_2
    array-length v3, p1

    #@6f
    new-array v1, v3, [I

    #@71
    .line 549
    .local v1, "i":[I
    const/4 v0, 0x0

    #@72
    .restart local v0    # "ct":I
    :goto_2
    array-length v3, p1

    #@73
    if-ge v0, v3, :cond_3

    #@75
    .line 550
    aget-object v3, p1, v0

    #@77
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@79
    invoke-virtual {v3, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@7c
    move-result-wide v4

    #@7d
    long-to-int v3, v4

    #@7e
    aput v3, v1, v0

    #@80
    .line 549
    add-int/lit8 v0, v0, 0x1

    #@82
    goto :goto_2

    #@83
    .line 552
    :cond_3
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@85
    const/4 v4, 0x0

    #@86
    invoke-virtual {p0, v4, v3, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    goto :goto_1
.end method

.method public copyFrom([S)V
    .locals 2
    .param p1, "d"    # [S

    #@0
    .prologue
    .line 730
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@3
    .line 731
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 729
    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 639
    :try_start_0
    const-string/jumbo v0, "copyFromUnchecked"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 640
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@10
    move-result-object v0

    #@11
    .line 641
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@14
    move-result v1

    #@15
    .line 640
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 643
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 637
    return-void

    #@1c
    .line 642
    :catchall_0
    move-exception v0

    #@1d
    .line 643
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@20
    .line 642
    throw v0
.end method

.method public copyFromUnchecked([B)V
    .locals 2
    .param p1, "d"    # [B

    #@0
    .prologue
    .line 677
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 676
    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2
    .param p1, "d"    # [F

    #@0
    .prologue
    .line 688
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 687
    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2
    .param p1, "d"    # [I

    #@0
    .prologue
    .line 655
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 654
    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2
    .param p1, "d"    # [S

    #@0
    .prologue
    .line 666
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 665
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 1384
    :try_start_0
    const-string/jumbo v0, "copyTo"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1385
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1386
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    #@14
    .line 1387
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    #@17
    .line 1388
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@19
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@1b
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@1e
    move-result-wide v2

    #@1f
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1390
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@25
    .line 1382
    return-void

    #@26
    .line 1389
    :catchall_0
    move-exception v0

    #@27
    .line 1390
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2a
    .line 1389
    throw v0
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1428
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v0

    #@5
    .line 1429
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    .line 1428
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@c
    .line 1427
    return-void
.end method

.method public copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    #@0
    .prologue
    .line 1440
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1441
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1439
    return-void
.end method

.method public copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    #@0
    .prologue
    .line 1476
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1477
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1475
    return-void
.end method

.method public copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    #@0
    .prologue
    .line 1464
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1465
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1463
    return-void
.end method

.method public copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    #@0
    .prologue
    .line 1452
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    #@3
    .line 1453
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1451
    return-void
.end method

.method public copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 11
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "component_number"    # I
    .param p5, "fp"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 1493
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 1494
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@7
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@9
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@b
    array-length v1, v1

    #@c
    if-lt p4, v1, :cond_0

    #@e
    .line 1495
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Component_number "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, " out of range."

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 1497
    :cond_0
    if-gez p1, :cond_1

    #@31
    .line 1498
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@33
    const-string/jumbo v2, "Offset x must be >= 0."

    #@36
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 1500
    :cond_1
    if-gez p2, :cond_2

    #@3c
    .line 1501
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@3e
    const-string/jumbo v2, "Offset y must be >= 0."

    #@41
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 1503
    :cond_2
    if-gez p3, :cond_3

    #@47
    .line 1504
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@49
    const-string/jumbo v2, "Offset z must be >= 0."

    #@4c
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 1507
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    #@53
    move-result-object v9

    #@54
    .line 1508
    .local v9, "data":[B
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    #@57
    move-result v10

    #@58
    .line 1509
    .local v10, "data_length":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@5a
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@5c
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@5e
    aget-object v1, v1, p4

    #@60
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@63
    move-result v0

    #@64
    .line 1510
    .local v0, "eSize":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@66
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@68
    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    #@6a
    aget v1, v1, p4

    #@6c
    mul-int/2addr v0, v1

    #@6d
    .line 1512
    if-eq v10, v0, :cond_4

    #@6f
    .line 1513
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v3, "Field packer sizelength "

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    .line 1514
    const-string/jumbo v3, " does not match component size "

    #@84
    .line 1513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 1514
    const-string/jumbo v3, "."

    #@8f
    .line 1513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v1

    #@9b
    .line 1517
    :cond_4
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@9d
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@a0
    move-result-wide v2

    #@a1
    iget v7, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@a3
    move v4, p1

    #@a4
    move v5, p2

    #@a5
    move v6, p3

    #@a6
    move v8, p4

    #@a7
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    #@aa
    .line 1492
    return-void
.end method

.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 2398
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@2
    and-int/lit8 v0, v0, 0x40

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2399
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    #@a
    .line 2401
    :cond_0
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    #@d
    .line 2397
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    #@2
    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    #@4
    const/4 v2, 0x1

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    iget v3, p0, Landroid/renderscript/Allocation;->mSize:I

    #@9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v3

    #@d
    const/4 v4, 0x0

    #@e
    aput-object v3, v2, v4

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 360
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    #@16
    .line 358
    return-void
.end method

.method public generateMipmaps()V
    .locals 4

    #@0
    .prologue
    .line 916
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    #@b
    .line 915
    return-void
.end method

.method public getBytesSize()I
    .locals 4

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 295
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@8
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@e
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@15
    move-result v1

    #@16
    mul-int/2addr v0, v1

    #@17
    int-to-double v0, v0

    #@18
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    #@1a
    mul-double/2addr v0, v2

    #@1b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v0

    #@1f
    double-to-int v0, v0

    #@20
    return v0

    #@21
    .line 297
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@23
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    #@26
    move-result v0

    #@27
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@29
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@30
    move-result v1

    #@31
    mul-int/2addr v0, v1

    #@32
    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 4

    #@0
    .prologue
    .line 2061
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2062
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@8
    const-string/jumbo v1, "Allocation is not a surface texture."

    #@b
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2065
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2066
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@15
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@17
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@1a
    move-result-wide v2

    #@1b
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@21
    .line 2069
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@23
    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    return-object v0
.end method

.method public getUsage()I
    .locals 1

    #@0
    .prologue
    .line 273
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@2
    return v0
.end method

.method public ioReceive()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 514
    :try_start_0
    const-string/jumbo v0, "ioReceive"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 515
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@e
    and-int/lit8 v0, v0, 0x20

    #@10
    if-nez v0, :cond_0

    #@12
    .line 516
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    .line 517
    const-string/jumbo v1, "Can only receive if IO_INPUT usage specified."

    #@17
    .line 516
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 521
    :catchall_0
    move-exception v0

    #@1c
    .line 522
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 521
    throw v0

    #@20
    .line 519
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@22
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@25
    .line 520
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@27
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@29
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 522
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@33
    .line 512
    return-void
.end method

.method public ioSend()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 495
    :try_start_0
    const-string/jumbo v0, "ioSend"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 496
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@e
    and-int/lit8 v0, v0, 0x40

    #@10
    if-nez v0, :cond_0

    #@12
    .line 497
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    .line 498
    const-string/jumbo v1, "Can only send buffer if IO_OUTPUT usage specified."

    #@17
    .line 497
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 502
    :catchall_0
    move-exception v0

    #@1c
    .line 503
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 502
    throw v0

    #@20
    .line 500
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@22
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@25
    .line 501
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@27
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@29
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 503
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@33
    .line 493
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .param p1, "dimX"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1537
    :try_start_0
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@3
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v2

    #@b
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@d
    const/16 v3, 0x15

    #@f
    if-lt v2, v3, :cond_0

    #@11
    .line 1538
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@13
    const-string/jumbo v3, "Resize is not allowed in API 21+."

    #@16
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit p0

    #@1c
    throw v2

    #@1d
    .line 1540
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1f
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@22
    move-result v2

    #@23
    if-gtz v2, :cond_1

    #@25
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@27
    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    #@2a
    move-result v2

    #@2b
    if-lez v2, :cond_2

    #@2d
    .line 1541
    :cond_1
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    #@2f
    const-string/jumbo v3, "Resize only support for 1D allocations at this time."

    #@32
    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 1540
    :cond_2
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@38
    invoke-virtual {v2}, Landroid/renderscript/Type;->hasFaces()Z

    #@3b
    move-result v2

    #@3c
    if-nez v2, :cond_1

    #@3e
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@40
    invoke-virtual {v2}, Landroid/renderscript/Type;->hasMipmaps()Z

    #@43
    move-result v2

    #@44
    if-nez v2, :cond_1

    #@46
    .line 1543
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@48
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@4a
    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4d
    move-result-wide v4

    #@4e
    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    #@51
    .line 1544
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@53
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    #@56
    .line 1546
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@58
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5a
    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5d
    move-result-wide v4

    #@5e
    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    #@61
    move-result-wide v0

    #@62
    .line 1547
    .local v0, "typeID":J
    new-instance v2, Landroid/renderscript/Type;

    #@64
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@66
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@69
    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6b
    .line 1548
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6d
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    #@70
    .line 1549
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@72
    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    monitor-exit p0

    #@76
    .line 1536
    return-void
.end method

.method public setAutoPadding(Z)V
    .locals 0
    .param p1, "useAutoPadding"    # Z

    #@0
    .prologue
    .line 284
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@2
    .line 283
    return-void
.end method

.method public setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 11
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "component_number"    # I
    .param p5, "fp"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 854
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 855
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@7
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@9
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@b
    array-length v1, v1

    #@c
    if-lt p4, v1, :cond_0

    #@e
    .line 856
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Component_number "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, " out of range."

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 858
    :cond_0
    if-gez p1, :cond_1

    #@31
    .line 859
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@33
    const-string/jumbo v2, "Offset x must be >= 0."

    #@36
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 861
    :cond_1
    if-gez p2, :cond_2

    #@3c
    .line 862
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@3e
    const-string/jumbo v2, "Offset y must be >= 0."

    #@41
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 864
    :cond_2
    if-gez p3, :cond_3

    #@47
    .line 865
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@49
    const-string/jumbo v2, "Offset z must be >= 0."

    #@4c
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 868
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    #@53
    move-result-object v9

    #@54
    .line 869
    .local v9, "data":[B
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    #@57
    move-result v10

    #@58
    .line 870
    .local v10, "data_length":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@5a
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@5c
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@5e
    aget-object v1, v1, p4

    #@60
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@63
    move-result v0

    #@64
    .line 871
    .local v0, "eSize":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@66
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@68
    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    #@6a
    aget v1, v1, p4

    #@6c
    mul-int/2addr v0, v1

    #@6d
    .line 873
    if-eq v10, v0, :cond_4

    #@6f
    .line 874
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v3, "Field packer sizelength "

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    .line 875
    const-string/jumbo v3, " does not match component size "

    #@84
    .line 874
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 875
    const-string/jumbo v3, "."

    #@8f
    .line 874
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v1

    #@9b
    .line 878
    :cond_4
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@9d
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@a0
    move-result-wide v2

    #@a1
    iget v7, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@a3
    move v4, p1

    #@a4
    move v5, p2

    #@a5
    move v6, p3

    #@a6
    move v8, p4

    #@a7
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    #@aa
    .line 853
    return-void
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, v2

    #@4
    move v4, p2

    #@5
    move-object v5, p3

    #@6
    .line 840
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    #@9
    .line 839
    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 817
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 818
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@7
    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@9
    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    #@c
    move-result v3

    #@d
    .line 819
    .local v3, "eSize":I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@10
    move-result-object v1

    #@11
    .line 820
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    #@14
    move-result v2

    #@15
    .line 822
    .local v2, "data_length":I
    div-int v0, v2, v3

    #@17
    .line 823
    .local v0, "count":I
    mul-int v4, v3, v0

    #@19
    if-eq v4, v2, :cond_0

    #@1b
    .line 824
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    #@1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "Field packer length "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 825
    const-string/jumbo v6, " not divisible by element size "

    #@30
    .line 824
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 825
    const-string/jumbo v6, "."

    #@3b
    .line 824
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v4

    #@47
    .line 827
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    #@4a
    .line 816
    return-void
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 6
    .param p1, "callback"    # Landroid/renderscript/Allocation$OnBufferAvailableListener;

    #@0
    .prologue
    .line 2376
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 2377
    :try_start_0
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@5
    new-instance v2, Ljava/lang/Long;

    #@7
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@9
    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@c
    move-result-wide v4

    #@d
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@10
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 2378
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 2375
    return-void

    #@17
    .line 2376
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "sur"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 2079
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 2080
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@7
    and-int/lit8 v0, v0, 0x40

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2081
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@d
    const-string/jumbo v1, "Allocation is not USAGE_IO_OUTPUT."

    #@10
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 2084
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@16
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@18
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    #@1f
    .line 2078
    return-void
.end method

.method public syncAll(I)V
    .locals 6
    .param p1, "srcLocation"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 460
    :try_start_0
    const-string/jumbo v0, "syncAll"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 461
    sparse-switch p1, :sswitch_data_0

    #@f
    .line 477
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@11
    const-string/jumbo v1, "Source must be exactly one usage type."

    #@14
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 481
    :catchall_0
    move-exception v0

    #@19
    .line 482
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1c
    .line 481
    throw v0

    #@1d
    .line 464
    :sswitch_0
    :try_start_1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@1f
    and-int/lit16 v0, v0, 0x80

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 465
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    #@25
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    #@28
    .line 479
    :cond_0
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@2d
    .line 480
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2f
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@32
    move-result-wide v2

    #@33
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 482
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 458
    return-void

    #@3a
    .line 472
    :sswitch_2
    :try_start_2
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@3c
    and-int/lit16 v0, v0, 0x80

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 473
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    #@42
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 461
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method updateFromNative()V
    .locals 6

    #@0
    .prologue
    .line 434
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    #@3
    .line 435
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@a
    move-result-wide v4

    #@b
    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    #@e
    move-result-wide v0

    #@f
    .line 436
    .local v0, "typeID":J
    const-wide/16 v2, 0x0

    #@11
    cmp-long v2, v0, v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 437
    new-instance v2, Landroid/renderscript/Type;

    #@17
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@19
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@1c
    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1e
    .line 438
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@20
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    #@23
    .line 439
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@25
    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    #@28
    .line 433
    :cond_0
    return-void
.end method
