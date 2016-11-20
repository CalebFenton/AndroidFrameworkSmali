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
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

.field private static final MAX_NUMBER_IO_INPUT_ALLOC:I = 0x10

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

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mByteBufferStride:J

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field private mGetSurfaceSurface:Landroid/view/Surface;

.field mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

.field mOwningType:Z

.field mReadAllowed:Z

.field mSelectedArray:[I

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedX:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mTimeStamp:J

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/Allocation;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/Allocation;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

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
    sput-object v0, Landroid/renderscript/Allocation;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

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
    .line 84
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 83
    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@7
    .line 2649
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@9
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@c
    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@e
    .line 2651
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    #@10
    const/4 v1, 0x0

    #@11
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    #@13
    .line 57
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
    const-wide/16 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@8
    .line 61
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    #@a
    .line 68
    iput-wide v4, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    #@c
    .line 69
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    #@e
    .line 70
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    #@10
    .line 71
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@12
    .line 77
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@14
    iput-object v1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    #@16
    .line 87
    iput-object v3, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@18
    .line 88
    iput-object v3, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    .line 89
    iput-wide v4, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    #@1c
    .line 384
    and-int/lit16 v1, p5, -0x100

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 392
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@22
    const-string/jumbo v2, "Unknown usage specified."

    #@25
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 395
    :cond_0
    and-int/lit8 v1, p5, 0x20

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 396
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    #@2f
    .line 398
    and-int/lit8 v1, p5, -0x24

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 401
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@35
    const-string/jumbo v2, "Invalid usage combination."

    #@38
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 405
    :cond_1
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@3e
    .line 406
    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@40
    .line 408
    if-eqz p4, :cond_2

    #@42
    .line 412
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@44
    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    #@47
    move-result v1

    #@48
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@4a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    #@51
    move-result v2

    #@52
    mul-int/2addr v1, v2

    #@53
    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    #@55
    .line 413
    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    #@58
    .line 416
    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    #@5a
    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    #@5c
    const/4 v3, 0x1

    #@5d
    new-array v3, v3, [Ljava/lang/Object;

    #@5f
    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    #@61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v4

    #@65
    const/4 v5, 0x0

    #@66
    aput-object v4, v3, v5

    #@68
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 421
    iget-object v1, p0, Landroid/renderscript/Allocation;->guard:Ldalvik/system/CloseGuard;

    #@6d
    const-string/jumbo v2, "destroy"

    #@70
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@73
    .line 382
    return-void

    #@74
    .line 417
    :catch_0
    move-exception v0

    #@75
    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RenderScript_jni"

    #@78
    new-instance v2, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 419
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@91
    new-instance v2, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v1
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "t"    # Landroid/renderscript/Type;
    .param p5, "owningType"    # Z
    .param p6, "usage"    # I
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;

    #@0
    .prologue
    move-object v1, p0

    #@1
    move-wide v2, p1

    #@2
    move-object v4, p3

    #@3
    move-object v5, p4

    #@4
    move v6, p6

    #@5
    .line 425
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    #@8
    .line 426
    iput-boolean p5, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    #@a
    .line 427
    iput-object p7, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    #@c
    .line 424
    return-void
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
    .line 1140
    :try_start_0
    const-string/jumbo v2, "copy1DRangeFromUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1141
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
    .line 1143
    .local v6, "dataSize":I
    const/4 v7, 0x0

    #@16
    .line 1144
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
    .line 1145
    const/4 v7, 0x1

    #@2c
    .line 1147
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
    .line 1148
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
    .line 1149
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
    .line 1148
    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 1151
    const-wide/32 v2, 0x8000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 1138
    return-void

    #@69
    .line 1150
    .end local v6    # "dataSize":I
    .end local v7    # "usePadding":Z
    :catchall_0
    move-exception v2

    #@6a
    .line 1151
    const-wide/32 v4, 0x8000

    #@6d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 1150
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
    .line 2094
    :try_start_0
    const-string/jumbo v2, "copy1DRangeToUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2095
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
    .line 2097
    .local v6, "dataSize":I
    const/4 v7, 0x0

    #@16
    .line 2098
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
    .line 2099
    const/4 v7, 0x1

    #@2c
    .line 2101
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
    .line 2102
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
    .line 2103
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
    .line 2102
    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 2105
    const-wide/32 v2, 0x8000

    #@65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@68
    .line 2092
    return-void

    #@69
    .line 2104
    .end local v6    # "dataSize":I
    .end local v7    # "usePadding":Z
    :catchall_0
    move-exception v2

    #@6a
    .line 2105
    const-wide/32 v4, 0x8000

    #@6d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 2104
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
    .line 1749
    :try_start_0
    const-string/jumbo v3, "copy3DRangeFromUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1750
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1751
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    #@13
    .line 1752
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
    .line 1754
    .local v2, "dataSize":I
    const/16 v17, 0x0

    #@25
    .line 1755
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    #@27
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@29
    mul-int v14, p9, v3

    #@2b
    .line 1756
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
    .line 1757
    div-int/lit8 v3, v2, 0x4

    #@42
    mul-int/lit8 v3, v3, 0x3

    #@44
    if-le v3, v14, :cond_0

    #@46
    .line 1758
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
    .line 1770
    .end local v2    # "dataSize":I
    .end local v14    # "sizeBytes":I
    .end local v17    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@50
    .line 1771
    const-wide/32 v4, 0x8000

    #@53
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@56
    .line 1770
    throw v3

    #@57
    .line 1760
    .restart local v2    # "dataSize":I
    .restart local v14    # "sizeBytes":I
    .restart local v17    # "usePadding":Z
    :cond_0
    const/16 v17, 0x1

    #@59
    .line 1761
    move v14, v2

    #@5a
    .line 1767
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
    .line 1769
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
    .line 1767
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    .line 1771
    const-wide/32 v4, 0x8000

    #@88
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8b
    .line 1747
    return-void

    #@8c
    .line 1763
    :cond_2
    if-le v2, v14, :cond_1

    #@8e
    .line 1764
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
    .line 2588
    :try_start_0
    const-string/jumbo v3, "copy3DRangeToUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2589
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 2590
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    #@13
    .line 2591
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
    .line 2593
    .local v2, "dataSize":I
    const/16 v17, 0x0

    #@25
    .line 2594
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    #@27
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@29
    mul-int v14, p9, v3

    #@2b
    .line 2595
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
    .line 2596
    div-int/lit8 v3, v2, 0x4

    #@42
    mul-int/lit8 v3, v3, 0x3

    #@44
    if-le v3, v14, :cond_0

    #@46
    .line 2597
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
    .line 2608
    .end local v2    # "dataSize":I
    .end local v14    # "sizeBytes":I
    .end local v17    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@50
    .line 2609
    const-wide/32 v4, 0x8000

    #@53
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@56
    .line 2608
    throw v3

    #@57
    .line 2599
    .restart local v2    # "dataSize":I
    .restart local v14    # "sizeBytes":I
    .restart local v17    # "usePadding":Z
    :cond_0
    const/16 v17, 0x1

    #@59
    .line 2600
    move v14, v2

    #@5a
    .line 2606
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
    .line 2607
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
    .line 2606
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    .line 2609
    const-wide/32 v4, 0x8000

    #@88
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8b
    .line 2586
    return-void

    #@8c
    .line 2602
    :cond_2
    if-le v2, v14, :cond_1

    #@8e
    .line 2603
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
    .line 689
    :try_start_0
    const-string/jumbo v0, "copyFromUnchecked"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 690
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 691
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@13
    if-lez v0, :cond_0

    #@15
    .line 692
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
    .line 699
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@28
    .line 687
    return-void

    #@29
    .line 693
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@2b
    if-lez v0, :cond_1

    #@2d
    .line 694
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
    .line 698
    :catchall_0
    move-exception v0

    #@3c
    .line 699
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@3f
    .line 698
    throw v0

    #@40
    .line 696
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
    .line 1859
    :try_start_0
    const-string/jumbo v0, "copyTo"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1860
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1861
    const/4 v7, 0x0

    #@12
    .line 1862
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
    .line 1863
    const/4 v7, 0x1

    #@24
    .line 1865
    :cond_0
    if-eqz v7, :cond_1

    #@26
    .line 1866
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
    .line 1867
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@33
    .line 1868
    const-string/jumbo v1, "Size of output array cannot be smaller than size of allocation."

    #@36
    .line 1867
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1877
    .end local v7    # "usePadding":Z
    :catchall_0
    move-exception v0

    #@3b
    .line 1878
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@3e
    .line 1877
    throw v0

    #@3f
    .line 1871
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
    .line 1872
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@48
    .line 1873
    const-string/jumbo v1, "Size of output array cannot be smaller than size of allocation."

    #@4b
    .line 1872
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 1876
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
    .line 1878
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@67
    .line 1857
    return-void
.end method

.method public static createAllocations(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;II)[Landroid/renderscript/Allocation;
    .locals 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I
    .param p3, "numAlloc"    # I

    #@0
    .prologue
    const-wide/32 v6, 0x8000

    #@3
    .line 2888
    :try_start_0
    const-string/jumbo v2, "createAllocations"

    #@6
    const-wide/32 v4, 0x8000

    #@9
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 2889
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@f
    .line 2890
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v2

    #@13
    const-wide/16 v4, 0x0

    #@15
    cmp-long v2, v2, v4

    #@17
    if-nez v2, :cond_0

    #@19
    .line 2891
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    #@1b
    const-string/jumbo v3, "Bad Type"

    #@1e
    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 2908
    :catchall_0
    move-exception v2

    #@23
    .line 2909
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 2908
    throw v2

    #@27
    .line 2894
    :cond_0
    :try_start_1
    new-array v1, p3, [Landroid/renderscript/Allocation;

    #@29
    .line 2895
    .local v1, "mAllocationArray":[Landroid/renderscript/Allocation;
    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    #@2c
    move-result-object v2

    #@2d
    const/4 v3, 0x0

    #@2e
    aput-object v2, v1, v3

    #@30
    .line 2896
    and-int/lit8 v2, p2, 0x20

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 2897
    const/16 v2, 0x10

    #@36
    if-le p3, v2, :cond_1

    #@38
    .line 2898
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@3a
    const-string/jumbo v3, "Exceeds the max number of Allocations allowed: 16"

    #@3d
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 2901
    :cond_1
    const/4 v2, 0x0

    #@42
    aget-object v2, v1, v2

    #@44
    invoke-virtual {v2, p3}, Landroid/renderscript/Allocation;->setupBufferQueue(I)V

    #@47
    .line 2904
    :cond_2
    const/4 v0, 0x1

    #@48
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    #@4a
    .line 2905
    const/4 v2, 0x0

    #@4b
    aget-object v2, v1, v2

    #@4d
    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    #@50
    move-result-object v2

    #@51
    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 2904
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 2909
    :cond_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@59
    .line 2907
    return-object v1
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 3133
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    .line 3134
    const/4 v1, 0x2

    #@3
    .line 3133
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    #@0
    .prologue
    .line 3087
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 3089
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@6
    move-result v11

    #@7
    .line 3090
    .local v11, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@a
    move-result v15

    #@b
    .line 3092
    .local v15, "width":I
    rem-int/lit8 v3, v15, 0x6

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 3093
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@11
    const-string/jumbo v6, "Cubemap height must be multiple of 6"

    #@14
    invoke-direct {v3, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 3095
    :cond_0
    div-int/lit8 v3, v15, 0x6

    #@1a
    if-eq v3, v11, :cond_1

    #@1c
    .line 3096
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@1e
    const-string/jumbo v6, "Only square cube map faces supported"

    #@21
    invoke-direct {v3, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v3

    #@25
    .line 3098
    :cond_1
    add-int/lit8 v3, v11, -0x1

    #@27
    and-int/2addr v3, v11

    #@28
    if-nez v3, :cond_2

    #@2a
    const/4 v12, 0x1

    #@2b
    .line 3099
    .local v12, "isPow2":Z
    :goto_0
    if-nez v12, :cond_3

    #@2d
    .line 3100
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@2f
    const-string/jumbo v6, "Only power of 2 cube faces supported"

    #@32
    invoke-direct {v3, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3

    #@36
    .line 3098
    .end local v12    # "isPow2":Z
    :cond_2
    const/4 v12, 0x0

    #@37
    goto :goto_0

    #@38
    .line 3103
    .restart local v12    # "isPow2":Z
    :cond_3
    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    #@3b
    move-result-object v2

    #@3c
    .line 3104
    .local v2, "e":Landroid/renderscript/Element;
    new-instance v14, Landroid/renderscript/Type$Builder;

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-direct {v14, v0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@43
    .line 3105
    .local v14, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v14, v11}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@46
    .line 3106
    invoke-virtual {v14, v11}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@49
    .line 3107
    const/4 v3, 0x1

    #@4a
    invoke-virtual {v14, v3}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    #@4d
    .line 3108
    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@4f
    move-object/from16 v0, p2

    #@51
    if-ne v0, v3, :cond_4

    #@53
    const/4 v3, 0x1

    #@54
    :goto_1
    invoke-virtual {v14, v3}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    #@57
    .line 3109
    invoke-virtual {v14}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@5a
    move-result-object v13

    #@5b
    .line 3111
    .local v13, "t":Landroid/renderscript/Type;
    move-object/from16 v0, p0

    #@5d
    invoke-virtual {v13, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@60
    move-result-wide v4

    #@61
    move-object/from16 v0, p2

    #@63
    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@65
    move-object/from16 v3, p0

    #@67
    move-object/from16 v7, p1

    #@69
    move/from16 v8, p3

    #@6b
    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    #@6e
    move-result-wide v4

    #@6f
    .line 3112
    .local v4, "id":J
    const-wide/16 v6, 0x0

    #@71
    cmp-long v3, v4, v6

    #@73
    if-nez v3, :cond_5

    #@75
    .line 3113
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@77
    new-instance v6, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v7, "Load failed for bitmap "

    #@7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    const-string/jumbo v7, " element "

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    invoke-direct {v3, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v3

    #@9c
    .line 3108
    .end local v4    # "id":J
    .end local v13    # "t":Landroid/renderscript/Type;
    :cond_4
    const/4 v3, 0x0

    #@9d
    goto :goto_1

    #@9e
    .line 3115
    .restart local v4    # "id":J
    .restart local v13    # "t":Landroid/renderscript/Type;
    :cond_5
    new-instance v3, Landroid/renderscript/Allocation;

    #@a0
    const/4 v8, 0x1

    #@a1
    move-object/from16 v6, p0

    #@a3
    move-object v7, v13

    #@a4
    move/from16 v9, p3

    #@a6
    move-object/from16 v10, p2

    #@a8
    invoke-direct/range {v3 .. v10}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    #@ab
    return-object v3
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
    .line 3229
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    .line 3230
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
    .line 3228
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
    .line 3164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@3
    move-result v5

    #@4
    .line 3165
    .local v5, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v9

    #@8
    if-ne v9, v5, :cond_0

    #@a
    .line 3166
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@d
    move-result v9

    #@e
    if-eq v9, v5, :cond_1

    #@10
    .line 3171
    :cond_0
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    #@12
    const-string/jumbo v10, "Only square cube map faces supported"

    #@15
    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v9

    #@19
    .line 3166
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@1c
    move-result v9

    #@1d
    if-ne v9, v5, :cond_0

    #@1f
    .line 3167
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
    .line 3168
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
    .line 3169
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
    .line 3170
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
    .line 3173
    add-int/lit8 v9, v5, -0x1

    #@51
    and-int/2addr v9, v5

    #@52
    if-nez v9, :cond_2

    #@54
    const/4 v6, 0x1

    #@55
    .line 3174
    .local v6, "isPow2":Z
    :goto_0
    if-nez v6, :cond_3

    #@57
    .line 3175
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    #@59
    const-string/jumbo v10, "Only power of 2 cube faces supported"

    #@5c
    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v9

    #@60
    .line 3173
    .end local v6    # "isPow2":Z
    :cond_2
    const/4 v6, 0x0

    #@61
    goto :goto_0

    #@62
    .line 3178
    .restart local v6    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    #@65
    move-result-object v4

    #@66
    .line 3179
    .local v4, "e":Landroid/renderscript/Element;
    new-instance v8, Landroid/renderscript/Type$Builder;

    #@68
    invoke-direct {v8, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@6b
    .line 3180
    .local v8, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@6e
    .line 3181
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@71
    .line 3182
    const/4 v9, 0x1

    #@72
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    #@75
    .line 3183
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
    .line 3184
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@82
    move-result-object v7

    #@83
    .line 3185
    .local v7, "t":Landroid/renderscript/Type;
    move-object/from16 v0, p7

    #@85
    move/from16 v1, p8

    #@87
    invoke-static {p0, v7, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@8a
    move-result-object v3

    #@8b
    .line 3187
    .local v3, "cubemap":Landroid/renderscript/Allocation;
    invoke-static {p0, v3}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    #@8e
    move-result-object v2

    #@8f
    .line 3188
    .local v2, "adapter":Landroid/renderscript/AllocationAdapter;
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@91
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@94
    .line 3189
    invoke-virtual {v2, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@97
    .line 3190
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    #@99
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@9c
    .line 3191
    invoke-virtual {v2, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@9f
    .line 3192
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@a1
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@a4
    .line 3193
    invoke-virtual {v2, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@a7
    .line 3194
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    #@a9
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@ac
    .line 3195
    invoke-virtual {v2, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@af
    .line 3196
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@b1
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@b4
    .line 3197
    move-object/from16 v0, p5

    #@b6
    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@b9
    .line 3198
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    #@bb
    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    #@be
    .line 3199
    move-object/from16 v0, p6

    #@c0
    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    #@c3
    .line 3201
    return-object v3

    #@c4
    .line 3183
    .end local v2    # "adapter":Landroid/renderscript/AllocationAdapter;
    .end local v3    # "cubemap":Landroid/renderscript/Allocation;
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_4
    const/4 v9, 0x0

    #@c5
    goto :goto_1
.end method

.method static createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "alloc"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2926
    :try_start_0
    const-string/jumbo v2, "createFromAllcation"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2927
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@c
    .line 2928
    move-object/from16 v0, p1

    #@e
    move-object/from16 v1, p0

    #@10
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@13
    move-result-wide v2

    #@14
    const-wide/16 v4, 0x0

    #@16
    cmp-long v2, v2, v4

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 2929
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    #@1c
    const-string/jumbo v3, "Bad input Allocation"

    #@1f
    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 2944
    :catchall_0
    move-exception v2

    #@24
    .line 2945
    const-wide/32 v4, 0x8000

    #@27
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2a
    .line 2944
    throw v2

    #@2b
    .line 2932
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2e
    move-result-object v13

    #@2f
    .line 2933
    .local v13, "type":Landroid/renderscript/Type;
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getUsage()I

    #@32
    move-result v7

    #@33
    .line 2934
    .local v7, "usage":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getMipmap()Landroid/renderscript/Allocation$MipmapControl;

    #@36
    move-result-object v16

    #@37
    .line 2935
    .local v16, "mips":Landroid/renderscript/Allocation$MipmapControl;
    move-object/from16 v0, p0

    #@39
    invoke-virtual {v13, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@3c
    move-result-wide v4

    #@3d
    move-object/from16 v0, v16

    #@3f
    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@41
    const-wide/16 v8, 0x0

    #@43
    move-object/from16 v3, p0

    #@45
    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    #@48
    move-result-wide v10

    #@49
    .line 2936
    .local v10, "id":J
    const-wide/16 v2, 0x0

    #@4b
    cmp-long v2, v10, v2

    #@4d
    if-nez v2, :cond_1

    #@4f
    .line 2937
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@51
    const-string/jumbo v3, "Allocation creation failed."

    #@54
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2

    #@58
    .line 2939
    :cond_1
    new-instance v9, Landroid/renderscript/Allocation;

    #@5a
    const/4 v14, 0x0

    #@5b
    move-object/from16 v12, p0

    #@5d
    move v15, v7

    #@5e
    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    #@61
    .line 2940
    .local v9, "outAlloc":Landroid/renderscript/Allocation;
    and-int/lit8 v2, v7, 0x20

    #@63
    if-eqz v2, :cond_2

    #@65
    .line 2941
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v9, v0}, Landroid/renderscript/Allocation;->shareBufferQueue(Landroid/renderscript/Allocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 2945
    :cond_2
    const-wide/32 v2, 0x8000

    #@6d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 2943
    return-object v9
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 3061
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
    .line 3062
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@10
    .line 3063
    const/16 v1, 0x83

    #@12
    .line 3062
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 3065
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@19
    .line 3066
    const/4 v1, 0x2

    #@1a
    .line 3065
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 19
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    #@0
    .prologue
    .line 2797
    :try_start_0
    const-string/jumbo v8, "createFromBitmap"

    #@3
    const-wide/32 v10, 0x8000

    #@6
    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2798
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@c
    .line 2801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@f
    move-result-object v8

    #@10
    if-nez v8, :cond_1

    #@12
    .line 2802
    move/from16 v0, p3

    #@14
    and-int/lit16 v8, v0, 0x80

    #@16
    if-eqz v8, :cond_0

    #@18
    .line 2803
    new-instance v8, Landroid/renderscript/RSIllegalArgumentException;

    #@1a
    const-string/jumbo v9, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    #@1d
    invoke-direct {v8, v9}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 2834
    :catchall_0
    move-exception v8

    #@22
    .line 2835
    const-wide/32 v10, 0x8000

    #@25
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@28
    .line 2834
    throw v8

    #@29
    .line 2805
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@2c
    move-result v8

    #@2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@30
    move-result v9

    #@31
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@33
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@36
    move-result-object v17

    #@37
    .line 2806
    .local v17, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    #@39
    move-object/from16 v0, v17

    #@3b
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3e
    .line 2807
    .local v4, "c":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    #@3f
    const/4 v9, 0x0

    #@40
    const/4 v10, 0x0

    #@41
    move-object/from16 v0, p1

    #@43
    invoke-virtual {v4, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@46
    .line 2808
    move-object/from16 v0, p0

    #@48
    move-object/from16 v1, v17

    #@4a
    move-object/from16 v2, p2

    #@4c
    move/from16 v3, p3

    #@4e
    invoke-static {v0, v1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    move-result-object v8

    #@52
    .line 2835
    const-wide/32 v10, 0x8000

    #@55
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@58
    .line 2808
    return-object v8

    #@59
    .line 2811
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v17    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    #@5c
    move-result-object v18

    #@5d
    .line 2814
    .local v18, "t":Landroid/renderscript/Type;
    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@5f
    move-object/from16 v0, p2

    #@61
    if-ne v0, v8, :cond_3

    #@63
    .line 2815
    invoke-virtual/range {v18 .. v18}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@66
    move-result-object v8

    #@67
    invoke-static/range {p0 .. p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v8, v9}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@6e
    move-result v8

    #@6f
    .line 2814
    if-eqz v8, :cond_3

    #@71
    .line 2816
    const/16 v8, 0x83

    #@73
    move/from16 v0, p3

    #@75
    if-ne v0, v8, :cond_3

    #@77
    .line 2817
    invoke-virtual/range {v18 .. v19}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@7a
    move-result-wide v6

    #@7b
    move-object/from16 v0, p2

    #@7d
    iget v8, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@7f
    move-object/from16 v5, p0

    #@81
    move-object/from16 v9, p1

    #@83
    move/from16 v10, p3

    #@85
    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    #@88
    move-result-wide v6

    #@89
    .line 2818
    .local v6, "id":J
    const-wide/16 v8, 0x0

    #@8b
    cmp-long v8, v6, v8

    #@8d
    if-nez v8, :cond_2

    #@8f
    .line 2819
    new-instance v8, Landroid/renderscript/RSRuntimeException;

    #@91
    const-string/jumbo v9, "Load failed."

    #@94
    invoke-direct {v8, v9}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@97
    throw v8

    #@98
    .line 2823
    :cond_2
    new-instance v5, Landroid/renderscript/Allocation;

    #@9a
    const/4 v10, 0x1

    #@9b
    move-object/from16 v8, p0

    #@9d
    move-object/from16 v9, v18

    #@9f
    move/from16 v11, p3

    #@a1
    move-object/from16 v12, p2

    #@a3
    invoke-direct/range {v5 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    #@a6
    .line 2824
    .local v5, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p1

    #@a8
    invoke-direct {v5, v0}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ab
    .line 2835
    const-wide/32 v8, 0x8000

    #@ae
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@b1
    .line 2825
    return-object v5

    #@b2
    .line 2829
    .end local v5    # "alloc":Landroid/renderscript/Allocation;
    .end local v6    # "id":J
    :cond_3
    :try_start_3
    invoke-virtual/range {v18 .. v19}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@b5
    move-result-wide v10

    #@b6
    move-object/from16 v0, p2

    #@b8
    iget v12, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    #@ba
    move-object/from16 v9, p0

    #@bc
    move-object/from16 v13, p1

    #@be
    move/from16 v14, p3

    #@c0
    invoke-virtual/range {v9 .. v14}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    #@c3
    move-result-wide v6

    #@c4
    .line 2830
    .restart local v6    # "id":J
    const-wide/16 v8, 0x0

    #@c6
    cmp-long v8, v6, v8

    #@c8
    if-nez v8, :cond_4

    #@ca
    .line 2831
    new-instance v8, Landroid/renderscript/RSRuntimeException;

    #@cc
    const-string/jumbo v9, "Load failed."

    #@cf
    invoke-direct {v8, v9}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v8

    #@d3
    .line 2833
    :cond_4
    new-instance v9, Landroid/renderscript/Allocation;

    #@d5
    const/4 v14, 0x1

    #@d6
    move-wide v10, v6

    #@d7
    move-object/from16 v12, p0

    #@d9
    move-object/from16 v13, v18

    #@db
    move/from16 v15, p3

    #@dd
    move-object/from16 v16, p2

    #@df
    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e2
    .line 2835
    const-wide/32 v10, 0x8000

    #@e5
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@e8
    .line 2833
    return-object v9
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 3283
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
    .line 3285
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@10
    .line 3286
    const/4 v1, 0x3

    #@11
    .line 3284
    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 3289
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@18
    .line 3290
    const/4 v1, 0x2

    #@19
    .line 3288
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
    .line 3254
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 3255
    and-int/lit16 v2, p4, 0xe0

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 3256
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@9
    const-string/jumbo v3, "Unsupported usage specified."

    #@c
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 3258
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@13
    move-result-object v1

    #@14
    .line 3259
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    #@17
    move-result-object v0

    #@18
    .line 3260
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@1b
    .line 3261
    return-object v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    #@0
    .prologue
    .line 3305
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 3306
    const/4 v1, 0x0

    #@4
    .line 3308
    .local v1, "allocArray":[B
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    #@7
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@a
    move-result-object v1

    #@b
    .line 3309
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
    .line 3310
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 3311
    return-object v0

    #@18
    .line 3313
    .end local v0    # "alloc":Landroid/renderscript/Allocation;
    .end local v1    # "allocArray":[B
    :catch_0
    move-exception v2

    #@19
    .line 3314
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
    .line 2750
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    #@0
    .prologue
    .line 2724
    :try_start_0
    const-string/jumbo v1, "createSized"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2725
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@c
    .line 2726
    new-instance v0, Landroid/renderscript/Type$Builder;

    #@e
    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@11
    .line 2727
    .local v0, "b":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@14
    .line 2728
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@17
    move-result-object v9

    #@18
    .line 2730
    .local v9, "t":Landroid/renderscript/Type;
    invoke-virtual {v9, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

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
    .line 2731
    .local v2, "id":J
    const-wide/16 v4, 0x0

    #@2a
    cmp-long v1, v2, v4

    #@2c
    if-nez v1, :cond_0

    #@2e
    .line 2732
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
    .line 2735
    .end local v0    # "b":Landroid/renderscript/Type$Builder;
    .end local v2    # "id":J
    .end local v9    # "t":Landroid/renderscript/Type;
    :catchall_0
    move-exception v1

    #@38
    .line 2736
    const-wide/32 v4, 0x8000

    #@3b
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3e
    .line 2735
    throw v1

    #@3f
    .line 2734
    .restart local v0    # "b":Landroid/renderscript/Type$Builder;
    .restart local v2    # "id":J
    .restart local v9    # "t":Landroid/renderscript/Type;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/renderscript/Allocation;

    #@41
    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    #@43
    const/4 v6, 0x1

    #@44
    move-object v4, p0

    #@45
    move-object v5, v9

    #@46
    move v7, p3

    #@47
    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2736
    const-wide/32 v4, 0x8000

    #@4d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@50
    .line 2734
    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;

    #@0
    .prologue
    .line 2707
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
    .line 2694
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
    .line 2666
    :try_start_0
    const-string/jumbo v0, "createTyped"

    #@8
    const-wide/32 v4, 0x8000

    #@b
    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@e
    .line 2667
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 2668
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    #@14
    move-result-wide v0

    #@15
    cmp-long v0, v0, v8

    #@17
    if-nez v0, :cond_0

    #@19
    .line 2669
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
    .line 2677
    :catchall_0
    move-exception v0

    #@23
    .line 2678
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 2677
    throw v0

    #@27
    .line 2672
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
    .line 2673
    .local v2, "id":J
    cmp-long v0, v2, v8

    #@37
    if-nez v0, :cond_1

    #@39
    .line 2674
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@3b
    const-string/jumbo v1, "Allocation creation failed."

    #@3e
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 2676
    :cond_1
    new-instance v1, Landroid/renderscript/Allocation;

    #@44
    const/4 v6, 0x0

    #@45
    move-object v4, p0

    #@46
    move-object v5, p1

    #@47
    move v7, p3

    #@48
    move-object v8, p2

    #@49
    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 2678
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@4f
    .line 2676
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
    .line 1101
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 1102
    if-gez p1, :cond_0

    #@7
    .line 1103
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@9
    const-string/jumbo v1, "Offset must be >= 0."

    #@c
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1105
    :cond_0
    const/4 v0, 0x1

    #@11
    if-ge p2, v0, :cond_1

    #@13
    .line 1106
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@15
    const-string/jumbo v1, "Count must be >= 1."

    #@18
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1108
    :cond_1
    add-int v0, p1, p2

    #@1e
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@20
    if-le v0, v1, :cond_2

    #@22
    .line 1109
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
    .line 1110
    const-string/jumbo v2, ", got "

    #@39
    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 1110
    const-string/jumbo v2, " at offset "

    #@44
    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 1110
    const-string/jumbo v2, "."

    #@4f
    .line 1109
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
    .line 1112
    :cond_2
    if-eqz p5, :cond_3

    #@5d
    .line 1113
    div-int/lit8 v0, p4, 0x4

    #@5f
    mul-int/lit8 v0, v0, 0x3

    #@61
    if-ge p3, v0, :cond_4

    #@63
    .line 1114
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@65
    const-string/jumbo v1, "Array too small for allocation type."

    #@68
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 1117
    :cond_3
    if-ge p3, p4, :cond_4

    #@6e
    .line 1118
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@70
    const-string/jumbo v1, "Array too small for allocation type."

    #@73
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v0

    #@77
    .line 1100
    :cond_4
    return-void
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2754
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v0

    #@4
    .line 2755
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 2756
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 2758
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 2759
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 2761
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 2762
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 2764
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@21
    if-ne v0, v1, :cond_3

    #@23
    .line 2765
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 2767
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
    .line 260
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 261
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
    .line 263
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
    .line 3342
    sget-object v2, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 3343
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
    .line 3345
    .local v0, "a":Landroid/renderscript/Allocation;
    if-eqz v0, :cond_0

    #@12
    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 3346
    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    #@18
    invoke-interface {v1, v0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 3341
    return-void

    #@1d
    .line 3342
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
    .line 379
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    .line 378
    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/renderscript/Allocation$MipmapControl;

    #@0
    .prologue
    .line 2772
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    #@3
    move-result-object v0

    #@4
    .line 2773
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    #@6
    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@9
    .line 2774
    .local v1, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v2

    #@d
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@10
    .line 2775
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    #@17
    .line 2776
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    #@19
    if-ne p2, v2, :cond_0

    #@1b
    const/4 v2, 0x1

    #@1c
    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    #@1f
    .line 2777
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 2776
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
    .line 366
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    #@4
    move-result v0

    #@5
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@7
    .line 367
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@d
    .line 368
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@13
    .line 369
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    #@15
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@17
    .line 370
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@19
    if-le v0, v2, :cond_0

    #@1b
    .line 371
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@1d
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    #@1f
    mul-int/2addr v0, v1

    #@20
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@22
    .line 373
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@24
    if-le v0, v2, :cond_1

    #@26
    .line 374
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@28
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    #@2a
    mul-int/2addr v0, v1

    #@2b
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@2d
    .line 365
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
    .line 1453
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1452
    :cond_0
    return-void

    #@5
    .line 1457
    :cond_1
    if-ltz p1, :cond_2

    #@7
    if-gez p2, :cond_3

    #@9
    .line 1458
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@b
    const-string/jumbo v1, "Offset cannot be negative."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1460
    :cond_3
    if-ltz p4, :cond_4

    #@14
    if-gez p3, :cond_5

    #@16
    .line 1461
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@18
    const-string/jumbo v1, "Height or width cannot be negative."

    #@1b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1463
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
    .line 1464
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
    .line 1723
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1722
    :cond_0
    return-void

    #@5
    .line 1727
    :cond_1
    if-ltz p1, :cond_2

    #@7
    if-gez p2, :cond_3

    #@9
    .line 1728
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@b
    const-string/jumbo v1, "Offset cannot be negative."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1727
    :cond_3
    if-ltz p3, :cond_2

    #@14
    .line 1730
    if-ltz p5, :cond_4

    #@16
    if-gez p4, :cond_5

    #@18
    .line 1731
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Height or width cannot be negative."

    #@1d
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1730
    :cond_5
    if-ltz p6, :cond_4

    #@23
    .line 1733
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
    .line 1734
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
    .line 1733
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
    .line 633
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@4
    move-result-object v0

    #@5
    .line 634
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    #@7
    .line 635
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@9
    const-string/jumbo v2, "Bitmap has an unsupported format for this operation"

    #@c
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 637
    :cond_0
    invoke-static {}, Landroid/renderscript/Allocation;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

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
    .line 632
    :cond_1
    return-void

    #@1e
    .line 639
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
    .line 640
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
    .line 641
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@3a
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@3d
    move-result-object v3

    #@3e
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@40
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 641
    const-string/jumbo v3, ", type "

    #@47
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 642
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@4d
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@50
    move-result-object v3

    #@51
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@53
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 643
    const-string/jumbo v3, " of "

    #@5a
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 643
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
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    .line 644
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@6f
    .line 640
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
    .line 648
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
    .line 649
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
    .line 650
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
    .line 651
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@a8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@ab
    move-result-object v3

    #@ac
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@ae
    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    .line 651
    const-string/jumbo v3, ", type "

    #@b5
    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    .line 652
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@bb
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@be
    move-result-object v3

    #@bf
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@c1
    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    .line 653
    const-string/jumbo v3, " of "

    #@c8
    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    .line 653
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
    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    .line 654
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@dd
    .line 650
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
    .line 658
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
    .line 659
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
    .line 660
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
    .line 661
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@115
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@118
    move-result-object v3

    #@119
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@11b
    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v2

    #@11f
    .line 661
    const-string/jumbo v3, ", type "

    #@122
    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v2

    #@126
    .line 662
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@128
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@12b
    move-result-object v3

    #@12c
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@12e
    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v2

    #@132
    .line 663
    const-string/jumbo v3, " of "

    #@135
    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v2

    #@139
    .line 663
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
    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    .line 664
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@14a
    .line 660
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
    .line 668
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
    .line 669
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
    .line 670
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
    .line 671
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@182
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@185
    move-result-object v3

    #@186
    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    #@188
    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v2

    #@18c
    .line 671
    const-string/jumbo v3, ", type "

    #@18f
    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v2

    #@193
    .line 672
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@195
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@198
    move-result-object v3

    #@199
    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@19b
    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v2

    #@19f
    .line 673
    const-string/jumbo v3, " of "

    #@1a2
    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v2

    #@1a6
    .line 673
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
    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v2

    #@1b4
    .line 674
    const-string/jumbo v3, " bytes, passed bitmap was "

    #@1b7
    .line 670
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
    .line 637
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
    .line 682
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
    .line 683
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@12
    const-string/jumbo v1, "Cannot update allocation from bitmap, sizes mismatch"

    #@15
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 681
    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    #@0
    .prologue
    .line 473
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
    .line 474
    return-void

    #@b
    .line 476
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    .line 477
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
    .line 476
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    #@0
    .prologue
    .line 481
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
    .line 482
    return-void

    #@b
    .line 484
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@d
    .line 485
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
    .line 484
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method private validateIsInt16OrFloat16()V
    .locals 3

    #@0
    .prologue
    .line 454
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
    .line 455
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
    .line 457
    :cond_0
    return-void

    #@15
    .line 456
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@17
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@19
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@1b
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    #@1d
    if-eq v0, v1, :cond_0

    #@1f
    .line 459
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@21
    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "16 bit integer source does not match allocation type "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2f
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@31
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 459
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    #@0
    .prologue
    .line 445
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
    .line 446
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
    .line 447
    :cond_0
    return-void

    #@15
    .line 449
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 450
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
    .line 449
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsInt64()V
    .locals 3

    #@0
    .prologue
    .line 436
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
    .line 437
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
    .line 438
    :cond_0
    return-void

    #@15
    .line 440
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 441
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
    .line 440
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    #@0
    .prologue
    .line 464
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
    .line 465
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
    .line 466
    :cond_0
    return-void

    #@15
    .line 468
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@17
    .line 469
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
    .line 468
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    #@0
    .prologue
    .line 489
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
    .line 490
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
    .line 499
    :cond_0
    return-void

    #@15
    .line 491
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
    .line 492
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
    .line 493
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
    .line 494
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
    .line 495
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
    .line 496
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
    .line 497
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
    .line 498
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
    .line 501
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@67
    .line 502
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
    .line 501
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 5
    .param p1, "d"    # Ljava/lang/Object;
    .param p2, "checkType"    # Z

    #@0
    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 93
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 94
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@c
    const-string/jumbo v3, "Object passed is not an array of primitives."

    #@f
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    .line 97
    .local v1, "cmp":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 98
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Object passed is not an Array of primitives."

    #@22
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 101
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@28
    if-ne v1, v2, :cond_3

    #@2a
    .line 102
    if-eqz p2, :cond_2

    #@2c
    .line 103
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    #@2f
    .line 104
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@31
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@33
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@35
    return-object v2

    #@36
    .line 106
    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    #@38
    return-object v2

    #@39
    .line 109
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3b
    if-ne v1, v2, :cond_5

    #@3d
    .line 110
    if-eqz p2, :cond_4

    #@3f
    .line 111
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@42
    .line 112
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@44
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@46
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@48
    return-object v2

    #@49
    .line 114
    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@4b
    return-object v2

    #@4c
    .line 117
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@4e
    if-ne v1, v2, :cond_7

    #@50
    .line 118
    if-eqz p2, :cond_6

    #@52
    .line 119
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@55
    .line 120
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@57
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@59
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@5b
    return-object v2

    #@5c
    .line 122
    :cond_6
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5e
    return-object v2

    #@5f
    .line 125
    :cond_7
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@61
    if-ne v1, v2, :cond_9

    #@63
    .line 126
    if-eqz p2, :cond_8

    #@65
    .line 127
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@68
    .line 128
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@6a
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@6c
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@6e
    return-object v2

    #@6f
    .line 130
    :cond_8
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@71
    return-object v2

    #@72
    .line 133
    :cond_9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@74
    if-ne v1, v2, :cond_b

    #@76
    .line 134
    if-eqz p2, :cond_a

    #@78
    .line 135
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@7b
    .line 137
    :cond_a
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@7d
    return-object v2

    #@7e
    .line 140
    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@80
    if-ne v1, v2, :cond_d

    #@82
    .line 141
    if-eqz p2, :cond_c

    #@84
    .line 142
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    #@87
    .line 144
    :cond_c
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    #@89
    return-object v2

    #@8a
    .line 147
    :cond_d
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    #@8c
    new-instance v3, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v4, "Parameter of type "

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v3

    #@a0
    .line 148
    const-string/jumbo v4, "[] is not compatible with data type "

    #@a3
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    .line 148
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@a9
    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@ab
    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    #@ad
    invoke-virtual {v4}, Landroid/renderscript/Element$DataType;->name()Ljava/lang/String;

    #@b0
    move-result-object v4

    #@b1
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    .line 149
    const-string/jumbo v4, " of allocation"

    #@b8
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v2
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
    .line 1444
    const-string/jumbo v2, "copy1DRangeFrom"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1445
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@10
    move-result-wide v4

    #@11
    .line 1446
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
    .line 1447
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
    .line 1448
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
    .line 1445
    const/4 v7, 0x0

    #@34
    .line 1447
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
    .line 1445
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    #@3f
    .line 1449
    const-wide/32 v2, 0x8000

    #@42
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@45
    .line 1443
    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1314
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 1315
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
    .line 1313
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 1312
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 1401
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1402
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
    .line 1400
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 1430
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1431
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
    .line 1429
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 1343
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1344
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
    .line 1342
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 1372
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@3
    .line 1373
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
    .line 1371
    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1180
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 1181
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
    .line 1179
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 1178
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 1259
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
    .line 1258
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 1285
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
    .line 1284
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 1207
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
    .line 1206
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 1233
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
    .line 1232
    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2267
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 2268
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
    .line 2266
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 2265
    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 2354
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 2355
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
    .line 2353
    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 2383
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 2384
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
    .line 2382
    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 2296
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 2297
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
    .line 2295
    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 2325
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@3
    .line 2326
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
    .line 2324
    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2133
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v4

    #@5
    .line 2134
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
    .line 2132
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@10
    .line 2131
    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    #@0
    .prologue
    .line 2212
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
    .line 2211
    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    #@0
    .prologue
    .line 2238
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
    .line 2237
    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    #@0
    .prologue
    .line 2160
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
    .line 2159
    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    #@0
    .prologue
    .line 2186
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
    .line 2185
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
    .line 1682
    :try_start_0
    const-string/jumbo v2, "copy2DRangeFrom"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1683
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1684
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@13
    .line 1685
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@17
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@1a
    move-result-wide v4

    #@1b
    .line 1686
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
    .line 1687
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
    .line 1688
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
    .line 1685
    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 1690
    const-wide/32 v2, 0x8000

    #@4f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@52
    .line 1680
    return-void

    #@53
    .line 1689
    :catchall_0
    move-exception v2

    #@54
    .line 1690
    const-wide/32 v4, 0x8000

    #@57
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@5a
    .line 1689
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
    .line 1526
    :try_start_0
    const-string/jumbo v0, "copy2DRangeFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1528
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@10
    move-result-object v6

    #@11
    .line 1529
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
    .line 1527
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1531
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@21
    .line 1524
    return-void

    #@22
    .line 1530
    :catchall_0
    move-exception v0

    #@23
    .line 1531
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@26
    .line 1530
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
    .line 1563
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1565
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
    .line 1564
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1562
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
    .line 1662
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 1664
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
    .line 1663
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1661
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
    .line 1629
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1631
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
    .line 1630
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1628
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
    .line 1596
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@3
    .line 1598
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
    .line 1597
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 1595
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
    .line 1705
    :try_start_0
    const-string/jumbo v1, "copy2DRangeFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1706
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1707
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1708
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
    .line 1709
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@27
    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2a
    .line 1710
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    #@2b
    const/4 v2, 0x0

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@30
    .line 1711
    invoke-virtual {p0, p1, p2, v9}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1718
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 1712
    return-void

    #@37
    .line 1714
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    #@3a
    .line 1715
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
    .line 1716
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
    .line 1718
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@5a
    .line 1703
    return-void

    #@5b
    .line 1717
    :catchall_0
    move-exception v1

    #@5c
    .line 1718
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@5f
    .line 1717
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
    .line 1472
    :try_start_0
    const-string/jumbo v3, "copy2DRangeFromUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1473
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 1474
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@13
    .line 1475
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
    .line 1477
    .local v2, "dataSize":I
    const/16 v16, 0x0

    #@23
    .line 1478
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    #@25
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@27
    mul-int v13, p7, v3

    #@29
    .line 1479
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
    .line 1480
    div-int/lit8 v3, v2, 0x4

    #@40
    mul-int/lit8 v3, v3, 0x3

    #@42
    if-le v3, v13, :cond_0

    #@44
    .line 1481
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
    .line 1493
    .end local v2    # "dataSize":I
    .end local v13    # "sizeBytes":I
    .end local v16    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@4e
    .line 1494
    const-wide/32 v4, 0x8000

    #@51
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@54
    .line 1493
    throw v3

    #@55
    .line 1483
    .restart local v2    # "dataSize":I
    .restart local v13    # "sizeBytes":I
    .restart local v16    # "usePadding":Z
    :cond_0
    const/16 v16, 0x1

    #@57
    .line 1484
    move v13, v2

    #@58
    .line 1490
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
    .line 1492
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
    .line 1490
    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 1494
    const-wide/32 v4, 0x8000

    #@86
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@89
    .line 1470
    return-void

    #@8a
    .line 1486
    :cond_2
    if-le v2, v13, :cond_1

    #@8c
    .line 1487
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
    .line 2444
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v6

    #@5
    .line 2445
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
    .line 2443
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@12
    .line 2442
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
    .line 2475
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 2477
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
    .line 2476
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 2474
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
    .line 2571
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 2573
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
    .line 2572
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 2570
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
    .line 2539
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 2541
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
    .line 2540
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 2538
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
    .line 2507
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@3
    .line 2509
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
    .line 2508
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@f
    .line 2506
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
    .line 2391
    :try_start_0
    const-string/jumbo v3, "copy2DRangeToUnchecked"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 2392
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@d
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@10
    .line 2393
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    #@13
    .line 2394
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
    .line 2396
    .local v2, "dataSize":I
    const/16 v16, 0x0

    #@23
    .line 2397
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    #@25
    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    #@27
    mul-int v13, p7, v3

    #@29
    .line 2398
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
    .line 2399
    div-int/lit8 v3, v2, 0x4

    #@40
    mul-int/lit8 v3, v3, 0x3

    #@42
    if-le v3, v13, :cond_0

    #@44
    .line 2400
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
    .line 2411
    .end local v2    # "dataSize":I
    .end local v13    # "sizeBytes":I
    .end local v16    # "usePadding":Z
    :catchall_0
    move-exception v3

    #@4e
    .line 2412
    const-wide/32 v4, 0x8000

    #@51
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@54
    .line 2411
    throw v3

    #@55
    .line 2402
    .restart local v2    # "dataSize":I
    .restart local v13    # "sizeBytes":I
    .restart local v16    # "usePadding":Z
    :cond_0
    const/16 v16, 0x1

    #@57
    .line 2403
    move v13, v2

    #@58
    .line 2409
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
    .line 2410
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
    .line 2409
    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 2412
    const-wide/32 v4, 0x8000

    #@86
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@89
    .line 2389
    return-void

    #@8a
    .line 2405
    :cond_2
    if-le v2, v13, :cond_1

    #@8c
    .line 2406
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
    .line 1831
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@7
    .line 1832
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    #@a
    .line 1833
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
    .line 1834
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
    .line 1835
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
    .line 1833
    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    #@3b
    .line 1830
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
    .line 1805
    :try_start_0
    const-string/jumbo v2, "copy3DRangeFrom"

    #@3
    const-wide/32 v4, 0x8000

    #@6
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1807
    const/4 v2, 0x1

    #@a
    move-object/from16 v0, p7

    #@c
    invoke-direct {p0, v0, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@f
    move-result-object v10

    #@10
    .line 1808
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
    .line 1806
    invoke-direct/range {v2 .. v11}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1810
    const-wide/32 v2, 0x8000

    #@26
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@29
    .line 1803
    return-void

    #@2a
    .line 1809
    :catchall_0
    move-exception v2

    #@2b
    .line 1810
    const-wide/32 v4, 0x8000

    #@2e
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@31
    .line 1809
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
    .line 2643
    const/4 v1, 0x1

    #@1
    move-object/from16 v0, p7

    #@3
    invoke-direct {p0, v0, v1}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@6
    move-result-object v9

    #@7
    .line 2644
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
    .line 2642
    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@19
    .line 2641
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const-wide/32 v6, 0x8000

    #@3
    .line 991
    :try_start_0
    const-string/jumbo v2, "copyFrom"

    #@6
    const-wide/32 v4, 0x8000

    #@9
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 992
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 993
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@14
    move-result-object v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 994
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
    .line 995
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@27
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2a
    .line 996
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    #@2b
    const/4 v3, 0x0

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@30
    .line 997
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1004
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 998
    return-void

    #@37
    .line 1000
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    #@3a
    .line 1001
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    #@3d
    .line 1002
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
    .line 1004
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@4b
    .line 989
    return-void

    #@4c
    .line 1003
    :catchall_0
    move-exception v2

    #@4d
    .line 1004
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@50
    .line 1003
    throw v2
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 10
    .param p1, "a"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const-wide/32 v8, 0x8000

    #@3
    .line 1016
    :try_start_0
    const-string/jumbo v0, "copyFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1017
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1018
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
    .line 1019
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
    .line 1022
    :catchall_0
    move-exception v0

    #@27
    .line 1023
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@2a
    .line 1022
    throw v0

    #@2b
    .line 1021
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
    .line 1023
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@3b
    .line 1014
    return-void
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 860
    :try_start_0
    const-string/jumbo v0, "copyFrom"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 861
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@10
    move-result-object v0

    #@11
    .line 862
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@14
    move-result v1

    #@15
    .line 861
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 864
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 858
    return-void

    #@1c
    .line 863
    :catchall_0
    move-exception v0

    #@1d
    .line 864
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@20
    .line 863
    throw v0
.end method

.method public copyFrom([B)V
    .locals 2
    .param p1, "d"    # [B

    #@0
    .prologue
    .line 945
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 946
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 944
    return-void
.end method

.method public copyFrom([F)V
    .locals 2
    .param p1, "d"    # [F

    #@0
    .prologue
    .line 972
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 973
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 971
    return-void
.end method

.method public copyFrom([I)V
    .locals 2
    .param p1, "d"    # [I

    #@0
    .prologue
    .line 891
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 892
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 890
    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 8
    .param p1, "d"    # [Landroid/renderscript/BaseObj;

    #@0
    .prologue
    const-wide/32 v6, 0x8000

    #@3
    .line 606
    :try_start_0
    const-string/jumbo v3, "copyFrom"

    #@6
    const-wide/32 v4, 0x8000

    #@9
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 607
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 608
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    #@14
    .line 609
    array-length v3, p1

    #@15
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 610
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
    .line 611
    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@29
    .line 610
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 611
    const-string/jumbo v5, ", array length = "

    #@30
    .line 610
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 611
    array-length v5, p1

    #@35
    .line 610
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
    .line 627
    :catchall_0
    move-exception v3

    #@42
    .line 628
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@45
    .line 627
    throw v3

    #@46
    .line 614
    :cond_0
    :try_start_1
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@48
    const/16 v4, 0x8

    #@4a
    if-ne v3, v4, :cond_2

    #@4c
    .line 615
    array-length v3, p1

    #@4d
    mul-int/lit8 v3, v3, 0x4

    #@4f
    new-array v2, v3, [J

    #@51
    .line 616
    .local v2, "i":[J
    const/4 v0, 0x0

    #@52
    .local v0, "ct":I
    :goto_0
    array-length v3, p1

    #@53
    if-ge v0, v3, :cond_1

    #@55
    .line 617
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
    .line 616
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 619
    :cond_1
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    #@66
    const/4 v4, 0x0

    #@67
    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 628
    .end local v2    # "i":[J
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@6d
    .line 604
    return-void

    #@6e
    .line 621
    .end local v0    # "ct":I
    :cond_2
    :try_start_2
    array-length v3, p1

    #@6f
    new-array v1, v3, [I

    #@71
    .line 622
    .local v1, "i":[I
    const/4 v0, 0x0

    #@72
    .restart local v0    # "ct":I
    :goto_2
    array-length v3, p1

    #@73
    if-ge v0, v3, :cond_3

    #@75
    .line 623
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
    .line 622
    add-int/lit8 v0, v0, 0x1

    #@82
    goto :goto_2

    #@83
    .line 625
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
    .line 918
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@3
    .line 919
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 917
    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 727
    :try_start_0
    const-string/jumbo v0, "copyFromUnchecked"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 728
    const/4 v0, 0x0

    #@d
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@10
    move-result-object v0

    #@11
    .line 729
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@14
    move-result v1

    #@15
    .line 728
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 731
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 725
    return-void

    #@1c
    .line 730
    :catchall_0
    move-exception v0

    #@1d
    .line 731
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@20
    .line 730
    throw v0
.end method

.method public copyFromUnchecked([B)V
    .locals 2
    .param p1, "d"    # [B

    #@0
    .prologue
    .line 807
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 806
    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2
    .param p1, "d"    # [F

    #@0
    .prologue
    .line 832
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 831
    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2
    .param p1, "d"    # [I

    #@0
    .prologue
    .line 757
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 756
    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2
    .param p1, "d"    # [S

    #@0
    .prologue
    .line 782
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@2
    array-length v1, p1

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@6
    .line 781
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 1847
    :try_start_0
    const-string/jumbo v0, "copyTo"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 1848
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@e
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@11
    .line 1849
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    #@14
    .line 1850
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    #@17
    .line 1851
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
    .line 1853
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@25
    .line 1845
    return-void

    #@26
    .line 1852
    :catchall_0
    move-exception v0

    #@27
    .line 1853
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2a
    .line 1852
    throw v0
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1904
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    #@4
    move-result-object v0

    #@5
    .line 1905
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    .line 1904
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@c
    .line 1903
    return-void
.end method

.method public copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    #@0
    .prologue
    .line 1931
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    #@3
    .line 1932
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1930
    return-void
.end method

.method public copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    #@0
    .prologue
    .line 2012
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    #@3
    .line 2013
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 2011
    return-void
.end method

.method public copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    #@0
    .prologue
    .line 1985
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    #@3
    .line 1986
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1984
    return-void
.end method

.method public copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    #@0
    .prologue
    .line 1958
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    #@3
    .line 1959
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    #@5
    array-length v1, p1

    #@6
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    #@9
    .line 1957
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
    .line 2029
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 2030
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
    .line 2031
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
    .line 2033
    :cond_0
    if-gez p1, :cond_1

    #@31
    .line 2034
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@33
    const-string/jumbo v2, "Offset x must be >= 0."

    #@36
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 2036
    :cond_1
    if-gez p2, :cond_2

    #@3c
    .line 2037
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@3e
    const-string/jumbo v2, "Offset y must be >= 0."

    #@41
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 2039
    :cond_2
    if-gez p3, :cond_3

    #@47
    .line 2040
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@49
    const-string/jumbo v2, "Offset z must be >= 0."

    #@4c
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 2043
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    #@53
    move-result-object v9

    #@54
    .line 2044
    .local v9, "data":[B
    array-length v10, v9

    #@55
    .line 2045
    .local v10, "data_length":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@57
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@59
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    #@5b
    aget-object v1, v1, p4

    #@5d
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@60
    move-result v0

    #@61
    .line 2046
    .local v0, "eSize":I
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@63
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@65
    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    #@67
    aget v1, v1, p4

    #@69
    mul-int/2addr v0, v1

    #@6a
    .line 2048
    if-eq v10, v0, :cond_4

    #@6c
    .line 2049
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@6e
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "Field packer sizelength "

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 2050
    const-string/jumbo v3, " does not match component size "

    #@81
    .line 2049
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    .line 2050
    const-string/jumbo v3, "."

    #@8c
    .line 2049
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@97
    throw v1

    #@98
    .line 2053
    :cond_4
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@9a
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    #@9d
    move-result-wide v2

    #@9e
    iget v7, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    #@a0
    move v4, p1

    #@a1
    move v5, p2

    #@a2
    move v6, p3

    #@a3
    move v8, p4

    #@a4
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    #@a7
    .line 2028
    return-void
.end method

.method public destroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3357
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@3
    and-int/lit8 v0, v0, 0x40

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3358
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    #@a
    .line 3361
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 3362
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@14
    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    #@17
    .line 3365
    :cond_1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    #@1a
    .line 3356
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
    .line 431
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
    .line 432
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    #@16
    .line 430
    return-void
.end method

.method public generateMipmaps()V
    .locals 4

    #@0
    .prologue
    .line 1134
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
    .line 1133
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2853
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@3
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2854
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@b
    const-string/jumbo v1, "Cubemap is not supported for getByteBuffer()."

    #@e
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 2856
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@14
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    #@17
    move-result v0

    #@18
    const/16 v1, 0x11

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    .line 2857
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1e
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    #@21
    move-result v0

    #@22
    const v1, 0x32315659

    #@25
    if-ne v0, v1, :cond_2

    #@27
    .line 2859
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@29
    const-string/jumbo v1, "YUV format is not supported for getByteBuffer()."

    #@2c
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 2858
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@32
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    #@35
    move-result v0

    #@36
    const/16 v1, 0x23

    #@38
    if-eq v0, v1, :cond_1

    #@3a
    .line 2861
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@3c
    if-eqz v0, :cond_3

    #@3e
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@40
    and-int/lit8 v0, v0, 0x20

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 2862
    :cond_3
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@46
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    #@49
    move-result v0

    #@4a
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@4c
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    #@53
    move-result v1

    #@54
    mul-int v5, v0, v1

    #@56
    .line 2863
    .local v5, "xBytesSize":I
    const/4 v0, 0x1

    #@57
    new-array v4, v0, [J

    #@59
    .line 2864
    .local v4, "stride":[J
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5b
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@5d
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@60
    move-result-wide v2

    #@61
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@63
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    #@66
    move-result v6

    #@67
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@69
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    #@6c
    move-result v7

    #@6d
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;

    #@70
    move-result-object v0

    #@71
    iput-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@73
    .line 2865
    aget-wide v0, v4, v8

    #@75
    iput-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    #@77
    .line 2867
    .end local v4    # "stride":[J
    .end local v5    # "xBytesSize":I
    :cond_4
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@79
    and-int/lit8 v0, v0, 0x20

    #@7b
    if-eqz v0, :cond_5

    #@7d
    .line 2868
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@7f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@82
    move-result-object v0

    #@83
    return-object v0

    #@84
    .line 2870
    :cond_5
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@86
    return-object v0
.end method

.method public getBytesSize()I
    .locals 4

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 360
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
    .line 362
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
    .line 275
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMipmap()Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    #@2
    return-object v0
.end method

.method public getStride()J
    .locals 4

    #@0
    .prologue
    .line 2985
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2986
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getByteBuffer()Ljava/nio/ByteBuffer;

    #@b
    .line 2988
    :cond_0
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    #@d
    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 4

    #@0
    .prologue
    .line 3020
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3021
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@8
    const-string/jumbo v1, "Allocation is not a surface texture."

    #@b
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 3024
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 3025
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
    .line 3028
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@23
    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 3008
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@2
    return-object v0
.end method

.method public getUsage()I
    .locals 1

    #@0
    .prologue
    .line 285
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
    .line 587
    :try_start_0
    const-string/jumbo v0, "ioReceive"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 588
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@e
    and-int/lit8 v0, v0, 0x20

    #@10
    if-nez v0, :cond_0

    #@12
    .line 589
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    .line 590
    const-string/jumbo v1, "Can only receive if IO_INPUT usage specified."

    #@17
    .line 589
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 594
    :catchall_0
    move-exception v0

    #@1c
    .line 595
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 594
    throw v0

    #@20
    .line 592
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@22
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@25
    .line 593
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@27
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@29
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 595
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@36
    .line 585
    return-void
.end method

.method public ioSend()V
    .locals 6

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 568
    :try_start_0
    const-string/jumbo v0, "ioSend"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 569
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@e
    and-int/lit8 v0, v0, 0x40

    #@10
    if-nez v0, :cond_0

    #@12
    .line 570
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@14
    .line 571
    const-string/jumbo v1, "Can only send buffer if IO_OUTPUT usage specified."

    #@17
    .line 570
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 575
    :catchall_0
    move-exception v0

    #@1c
    .line 576
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 575
    throw v0

    #@20
    .line 573
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@22
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@25
    .line 574
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
    .line 576
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@33
    .line 566
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .param p1, "dimX"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2073
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
    .line 2074
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
    .line 2076
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
    .line 2077
    :cond_1
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    #@2f
    const-string/jumbo v3, "Resize only support for 1D allocations at this time."

    #@32
    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 2076
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
    .line 2079
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
    .line 2080
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@53
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    #@56
    .line 2082
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
    .line 2085
    .local v0, "typeID":J
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@64
    const-wide/16 v4, 0x0

    #@66
    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Type;->setID(J)V

    #@69
    .line 2086
    new-instance v2, Landroid/renderscript/Type;

    #@6b
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@6d
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@70
    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@72
    .line 2087
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@74
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    #@77
    .line 2088
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@79
    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    monitor-exit p0

    #@7d
    .line 2072
    return-void
.end method

.method public setAutoPadding(Z)V
    .locals 0
    .param p1, "useAutoPadding"    # Z

    #@0
    .prologue
    .line 349
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    #@2
    .line 348
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
    .line 1072
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 1073
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
    .line 1074
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
    .line 1076
    :cond_0
    if-gez p1, :cond_1

    #@31
    .line 1077
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@33
    const-string/jumbo v2, "Offset x must be >= 0."

    #@36
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 1079
    :cond_1
    if-gez p2, :cond_2

    #@3c
    .line 1080
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@3e
    const-string/jumbo v2, "Offset y must be >= 0."

    #@41
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 1082
    :cond_2
    if-gez p3, :cond_3

    #@47
    .line 1083
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@49
    const-string/jumbo v2, "Offset z must be >= 0."

    #@4c
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 1086
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    #@53
    move-result-object v9

    #@54
    .line 1087
    .local v9, "data":[B
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    #@57
    move-result v10

    #@58
    .line 1088
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
    .line 1089
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
    .line 1091
    if-eq v10, v0, :cond_4

    #@6f
    .line 1092
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
    .line 1093
    const-string/jumbo v3, " does not match component size "

    #@84
    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 1093
    const-string/jumbo v3, "."

    #@8f
    .line 1092
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
    .line 1096
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
    .line 1071
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
    .line 1058
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    #@9
    .line 1057
    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    #@0
    .prologue
    .line 1035
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 1036
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@7
    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    #@9
    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    #@c
    move-result v3

    #@d
    .line 1037
    .local v3, "eSize":I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    #@10
    move-result-object v1

    #@11
    .line 1038
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    #@14
    move-result v2

    #@15
    .line 1040
    .local v2, "data_length":I
    div-int v0, v2, v3

    #@17
    .line 1041
    .local v0, "count":I
    mul-int v4, v3, v0

    #@19
    if-eq v4, v2, :cond_0

    #@1b
    .line 1042
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
    .line 1043
    const-string/jumbo v6, " not divisible by element size "

    #@30
    .line 1042
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 1043
    const-string/jumbo v6, "."

    #@3b
    .line 1042
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
    .line 1045
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    #@4a
    .line 1034
    return-void
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 6
    .param p1, "callback"    # Landroid/renderscript/Allocation$OnBufferAvailableListener;

    #@0
    .prologue
    .line 3335
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 3336
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
    .line 3337
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 3334
    return-void

    #@17
    .line 3335
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
    .line 3038
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 3039
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@7
    and-int/lit8 v0, v0, 0x40

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3040
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@d
    const-string/jumbo v1, "Allocation is not USAGE_IO_OUTPUT."

    #@10
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 3043
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
    .line 3037
    return-void
.end method

.method setupBufferQueue(I)V
    .locals 4
    .param p1, "numAlloc"    # I

    #@0
    .prologue
    .line 2953
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 2954
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@7
    and-int/lit8 v0, v0, 0x20

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2955
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@d
    const-string/jumbo v1, "Allocation is not USAGE_IO_INPUT."

    #@10
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 2957
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@16
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@18
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSetupBufferQueue(JI)V

    #@1f
    .line 2952
    return-void
.end method

.method shareBufferQueue(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "alloc"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2966
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@5
    .line 2967
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@7
    and-int/lit8 v0, v0, 0x20

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2968
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@d
    const-string/jumbo v1, "Allocation is not USAGE_IO_INPUT."

    #@10
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 2970
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    #@1a
    .line 2971
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@1e
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v2

    #@22
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@24
    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@27
    move-result-wide v4

    #@28
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationShareBufferQueue(JJ)V

    #@2b
    .line 2965
    return-void
.end method

.method public syncAll(I)V
    .locals 6
    .param p1, "srcLocation"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x8000

    #@3
    .line 533
    :try_start_0
    const-string/jumbo v0, "syncAll"

    #@6
    const-wide/32 v2, 0x8000

    #@9
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 534
    sparse-switch p1, :sswitch_data_0

    #@f
    .line 550
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
    .line 554
    :catchall_0
    move-exception v0

    #@19
    .line 555
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1c
    .line 554
    throw v0

    #@1d
    .line 537
    :sswitch_0
    :try_start_1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@1f
    and-int/lit16 v0, v0, 0x80

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 538
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    #@25
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    #@28
    .line 552
    :cond_0
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    #@2d
    .line 553
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
    .line 555
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 531
    return-void

    #@3a
    .line 545
    :sswitch_2
    :try_start_2
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    #@3c
    and-int/lit16 v0, v0, 0x80

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 546
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    #@42
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 534
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
    .line 507
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    #@3
    .line 508
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
    .line 509
    .local v0, "typeID":J
    const-wide/16 v2, 0x0

    #@11
    cmp-long v2, v0, v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 510
    new-instance v2, Landroid/renderscript/Type;

    #@17
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    #@19
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    #@1c
    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@1e
    .line 511
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@20
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    #@23
    .line 512
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    #@25
    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    #@28
    .line 506
    :cond_0
    return-void
.end method
