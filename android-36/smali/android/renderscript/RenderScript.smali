.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$ContextType;,
        Landroid/renderscript/RenderScript$MessageThread;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATE_FLAG_LOW_LATENCY:I = 0x2

.field public static final whitelist CREATE_FLAG_LOW_POWER:I = 0x4

.field public static final whitelist CREATE_FLAG_NONE:I = 0x0

.field public static final greylist-max-o CREATE_FLAG_WAIT_FOR_ATTACH:I = 0x8

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o LOG_ENABLED:Z = false

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final greylist-max-o TRACE_TAG:J = 0x8000L

.field private static greylist-max-o mCachePath:Ljava/lang/String; = null

.field private static greylist-max-o mProcessContextList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static greylist-max-o registerNativeFree:Ljava/lang/reflect/Method; = null

.field static greylist-max-o sInitialized:Z = false

.field static final greylist-max-o sMinorVersion:J = 0x1L

.field static greylist sPointerSize:I

.field static greylist-max-o sRuntime:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mApplicationContext:Landroid/content/Context;

.field greylist-max-o mContext:J

.field private greylist-max-o mContextFlags:I

.field private greylist-max-o mContextSdkVersion:I

.field greylist-max-o mContextType:Landroid/renderscript/RenderScript$ContextType;

.field private greylist-max-o mDestroyed:Z

.field volatile greylist-max-o mElement_ALLOCATION:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_A_8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_BOOLEAN:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ELEMENT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FONT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MESH:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_4444:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_5551:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_8888:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGB_565:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGB_888:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SAMPLER:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SCRIPT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_TYPE:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_YUV:Landroid/renderscript/Element;

.field greylist-max-o mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field private greylist-max-o mIsProcessContext:Z

.field greylist mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field greylist-max-o mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field greylist-max-o mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field greylist-max-o mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field volatile greylist-max-o mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 61
    const-string v0, "RenderScript_jni"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 116
    const/4 v1, 0x0

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 117
    const-string v2, "config.disable_renderscript"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 119
    :try_start_14
    const-string v2, "dalvik.system.VMRuntime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 120
    .local v2, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getRuntime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 121
    .local v3, "get_runtime":Ljava/lang/reflect/Method;
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 122
    const-string/jumbo v4, "registerNativeAllocation"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    .line 123
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 124
    const-string/jumbo v4, "registerNativeFree"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4a} :catch_8b

    .line 128
    .end local v2    # "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get_runtime":Ljava/lang/reflect/Method;
    nop

    .line 130
    :try_start_4b
    const-string/jumbo v1, "rs_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 132
    sput-boolean v5, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 133
    invoke-static {}, Landroid/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    move-result v1

    sput v1, Landroid/renderscript/RenderScript;->sPointerSize:I
    :try_end_5c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4b .. :try_end_5c} :catch_5d

    .line 137
    goto :goto_b9

    .line 134
    :catch_5d
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_8b
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading GC methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b9
    :goto_b9
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 63
    iput v0, p0, Landroid/renderscript/RenderScript;->mContextFlags:I

    .line 64
    iput v0, p0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    .line 1034
    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1209
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1366
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1367
    if-eqz p1, :cond_1d

    .line 1368
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 1370
    :cond_1d
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1371
    return-void
.end method

.method static native greylist-max-o _nInit()V
.end method

.method public static whitelist create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 1448
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static greylist create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .line 1502
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method private static greylist create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    .line 1516
    const/16 v0, 0x17

    if-ge p1, v0, :cond_9

    .line 1517
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0

    .line 1520
    :cond_9
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1521
    :try_start_c
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    .line 1522
    .local v2, "prs":Landroid/renderscript/RenderScript;
    iget-object v3, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-ne v3, p2, :cond_2c

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextFlags:I

    if-ne v3, p3, :cond_2c

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    if-ne v3, p1, :cond_2c

    .line 1526
    monitor-exit v0

    return-object v2

    .line 1528
    .end local v2    # "prs":Landroid/renderscript/RenderScript;
    :cond_2c
    goto :goto_12

    .line 1530
    :cond_2d
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 1531
    .local v1, "prs":Landroid/renderscript/RenderScript;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 1532
    sget-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    monitor-exit v0

    return-object v1

    .line 1534
    .end local v1    # "prs":Landroid/renderscript/RenderScript;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;

    .line 1461
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I

    .line 1486
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1487
    .local v0, "v":I
    invoke-static {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I
    .param p3, "API_number"    # I

    .line 1578
    invoke-static {p0, p3, p1, p2}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getCachePath()Ljava/lang/String;
    .registers 5

    const-class v0, Landroid/renderscript/RenderScript;

    monitor-enter v0

    .line 1391
    :try_start_3
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 1392
    const-string v1, "com.android.renderscript.cache"

    .line 1393
    .local v1, "CACHE_PATH":Ljava/lang/String;
    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    if-eqz v2, :cond_20

    .line 1396
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    const-string v4, "com.android.renderscript.cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1397
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 1398
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_28

    .line 1394
    .end local v2    # "f":Ljava/io/File;
    :cond_20
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "RenderScript code cache directory uninitialized."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1400
    .end local v1    # "CACHE_PATH":Ljava/lang/String;
    :cond_28
    :goto_28
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-object v1

    .line 1390
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public static greylist getMinorID()J
    .registers 2

    .line 166
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static whitelist getMinorVersion()J
    .registers 2

    .line 178
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private greylist-max-o helpDestroy()V
    .registers 6

    .line 1602
    const/4 v0, 0x0

    .line 1603
    .local v0, "shouldDestroy":Z
    monitor-enter p0

    .line 1604
    :try_start_2
    iget-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    if-nez v1, :cond_a

    .line 1605
    const/4 v0, 0x1

    .line 1606
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    .line 1608
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_41

    .line 1610
    if-eqz v0, :cond_40

    .line 1611
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 1613
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(J)V

    .line 1614
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1617
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->interrupt()V

    .line 1621
    const/4 v1, 0x0

    .local v1, "hasJoined":Z
    const/4 v2, 0x0

    .line 1622
    .local v2, "interrupted":Z
    :goto_21
    if-nez v1, :cond_2d

    .line 1624
    :try_start_23
    iget-object v3, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 1625
    const/4 v1, 0x1

    goto :goto_2c

    .line 1626
    :catch_2a
    move-exception v3

    .line 1627
    .local v3, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 1628
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_2c
    goto :goto_21

    .line 1630
    :cond_2d
    if-eqz v2, :cond_3d

    .line 1631
    const-string v3, "RenderScript_jni"

    const-string v4, "Interrupted during wait for MessageThread to join"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1635
    :cond_3d
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 1637
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :cond_40
    return-void

    .line 1608
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private static greylist-max-o internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    .line 1410
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_d

    .line 1411
    const-string v0, "RenderScript_jni"

    const-string v1, "RenderScript.create() called when disabled; someone is likely to crash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 v0, 0x0

    return-object v0

    .line 1415
    :cond_d
    and-int/lit8 v0, p3, -0xf

    if-nez v0, :cond_4f

    .line 1420
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 1422
    .local v1, "rs":Landroid/renderscript/RenderScript;
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nDeviceCreate()J

    move-result-wide v2

    .line 1423
    .local v2, "device":J
    iget v6, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    move v5, p1

    move v4, p3

    .end local p1    # "sdkVersion":I
    .end local p3    # "flags":I
    .local v4, "flags":I
    .local v5, "sdkVersion":I
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nContextCreate(JIII)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/renderscript/RenderScript;->mContext:J

    .line 1424
    iput-object p2, v1, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1425
    iput v4, v1, Landroid/renderscript/RenderScript;->mContextFlags:I

    .line 1426
    iput v5, v1, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    .line 1427
    iget-wide v6, v1, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-eqz p1, :cond_47

    .line 1432
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/renderscript/RenderScript;->nContextSetCacheDir(Ljava/lang/String;)V

    .line 1434
    new-instance p1, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {p1, v1}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object p1, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 1435
    iget-object p1, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {p1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 1436
    return-object v1

    .line 1428
    :cond_47
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string p3, "Failed to create RS context."

    invoke-direct {p1, p3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1417
    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .end local v2    # "device":J
    .end local v4    # "flags":I
    .end local v5    # "sdkVersion":I
    .restart local p1    # "sdkVersion":I
    .restart local p3    # "flags":I
    :cond_4f
    move v5, p1

    move v4, p3

    .end local p1    # "sdkVersion":I
    .end local p3    # "flags":I
    .restart local v4    # "flags":I
    .restart local v5    # "sdkVersion":I
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p3, "Invalid flags passed."

    invoke-direct {p1, p3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist releaseAllContexts()V
    .registers 4

    .line 1551
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1552
    :try_start_3
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 1553
    .local v1, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/RenderScript;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 1554
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    .line 1556
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    .line 1557
    .local v2, "prs":Landroid/renderscript/RenderScript;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 1558
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 1559
    .end local v2    # "prs":Landroid/renderscript/RenderScript;
    goto :goto_11

    .line 1560
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1561
    return-void

    .line 1554
    .end local v1    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/RenderScript;>;"
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static native greylist-max-o rsnSystemGetPointerSize()I
.end method


# virtual methods
.method public whitelist contextDump()V
    .registers 2

    .line 1588
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    .line 1590
    return-void
.end method

.method public whitelist destroy()V
    .registers 2

    .line 1656
    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    if-eqz v0, :cond_5

    .line 1658
    return-void

    .line 1660
    :cond_5
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1661
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    .line 1662
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1640
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    .line 1641
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1642
    return-void
.end method

.method public whitelist finish()V
    .registers 1

    .line 1598
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 1599
    return-void
.end method

.method public final whitelist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1379
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .registers 2

    .line 1215
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public whitelist getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .registers 2

    .line 1175
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method greylist-max-o isAlive()Z
    .registers 5

    .line 1665
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method declared-synchronized greylist-max-o nAllocationAdapterCreate(JJ)J
    .registers 13
    .param p1, "allocId"    # J
    .param p3, "typeId"    # J

    monitor-enter p0

    .line 676
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 677
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "allocId":J
    .end local p3    # "typeId":J
    .local v4, "allocId":J
    .local v6, "typeId":J
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterCreate(JJJ)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 675
    .end local v4    # "allocId":J
    .end local v6    # "typeId":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nAllocationAdapterOffset(JIIIIIIIII)V
    .registers 27
    .param p1, "id"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mip"    # I
    .param p7, "face"    # I
    .param p8, "a1"    # I
    .param p9, "a2"    # I
    .param p10, "a3"    # I
    .param p11, "a4"    # I

    monitor-enter p0

    .line 684
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 685
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterOffset(JJIIIIIIIII)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 686
    monitor-exit p0

    return-void

    .line 683
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "z":I
    .end local p6    # "mip":I
    .end local p7    # "face":I
    .end local p8    # "a1":I
    .end local p9    # "a2":I
    .end local p10    # "a3":I
    .end local p11    # "a4":I
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 536
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 537
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "alloc":J
    .end local p3    # "bmp":Landroid/graphics/Bitmap;
    .local v4, "alloc":J
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 538
    monitor-exit p0

    return-void

    .line 535
    .end local v4    # "alloc":J
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 480
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 481
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "alloc":J
    .end local p3    # "bmp":Landroid/graphics/Bitmap;
    .local v4, "alloc":J
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 482
    monitor-exit p0

    return-void

    .line 479
    .end local v4    # "alloc":J
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    monitor-enter p0

    .line 467
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 468
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "type":J
    .end local p3    # "mip":I
    .end local p4    # "bmp":Landroid/graphics/Bitmap;
    .end local p5    # "usage":I
    .local v4, "type":J
    .local v6, "mip":I
    .local v7, "bmp":Landroid/graphics/Bitmap;
    .local v8, "usage":I
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 466
    .end local v4    # "type":J
    .end local v6    # "mip":I
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "usage":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    monitor-enter p0

    .line 459
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 460
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "type":J
    .end local p3    # "mip":I
    .end local p4    # "bmp":Landroid/graphics/Bitmap;
    .end local p5    # "usage":I
    .local v4, "type":J
    .local v6, "mip":I
    .local v7, "bmp":Landroid/graphics/Bitmap;
    .local v8, "usage":I
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 458
    .end local v4    # "type":J
    .end local v6    # "mip":I
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "usage":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nAllocationCreateTyped(JIIJ)J
    .registers 17
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "usage"    # I
    .param p5, "pointer"    # J

    monitor-enter p0

    .line 452
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 453
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move-wide v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    move-result-wide v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v2

    .line 451
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "type":J
    .end local p3    # "mip":I
    .end local p4    # "usage":I
    .end local p5    # "pointer":J
    :catchall_11
    move-exception v0

    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    monitor-enter p0

    .line 474
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 475
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "type":J
    .end local p3    # "mip":I
    .end local p4    # "bmp":Landroid/graphics/Bitmap;
    .end local p5    # "usage":I
    .local v4, "type":J
    .local v6, "mip":I
    .local v7, "bmp":Landroid/graphics/Bitmap;
    .local v8, "usage":I
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 473
    .end local v4    # "type":J
    .end local v6    # "mip":I
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "usage":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 25
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    monitor-enter p0

    .line 545
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 546
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 547
    monitor-exit p0

    return-void

    .line 544
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "off":I
    .end local p4    # "mip":I
    .end local p5    # "count":I
    .end local p6    # "d":Ljava/lang/Object;
    .end local p7    # "sizeBytes":I
    .end local p8    # "dt":Landroid/renderscript/Element$DataType;
    .end local p9    # "mSize":I
    .end local p10    # "usePadding":Z
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIIIIJIIII)V
    .registers 33
    .param p1, "dstAlloc"    # J
    .param p3, "dstXoff"    # I
    .param p4, "dstYoff"    # I
    .param p5, "dstMip"    # I
    .param p6, "dstFace"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "srcAlloc"    # J
    .param p11, "srcXoff"    # I
    .param p12, "srcYoff"    # I
    .param p13, "srcMip"    # I
    .param p14, "srcFace"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 566
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 567
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 573
    monitor-exit p0

    return-void

    .line 565
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "dstAlloc":J
    .end local p3    # "dstXoff":I
    .end local p4    # "dstYoff":I
    .end local p5    # "dstMip":I
    .end local p6    # "dstFace":I
    .end local p7    # "width":I
    .end local p8    # "height":I
    .end local p9    # "srcAlloc":J
    .end local p11    # "srcXoff":I
    .end local p12    # "srcYoff":I
    .end local p13    # "srcMip":I
    .end local p14    # "srcFace":I
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 31
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "d"    # Ljava/lang/Object;
    .param p10, "sizeBytes"    # I
    .param p11, "dt"    # Landroid/renderscript/Element$DataType;
    .param p12, "mSize"    # I
    .param p13, "usePadding"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 581
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 582
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 583
    monitor-exit p0

    return-void

    .line 580
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "mip":I
    .end local p6    # "face":I
    .end local p7    # "w":I
    .end local p8    # "h":I
    .end local p9    # "d":Ljava/lang/Object;
    .end local p10    # "sizeBytes":I
    .end local p11    # "dt":Landroid/renderscript/Element$DataType;
    .end local p12    # "mSize":I
    .end local p13    # "usePadding":Z
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .registers 19
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "b"    # Landroid/graphics/Bitmap;

    monitor-enter p0

    .line 587
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 588
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 589
    monitor-exit p0

    return-void

    .line 586
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "mip":I
    .end local p6    # "face":I
    .end local p7    # "b":Landroid/graphics/Bitmap;
    :catchall_15
    move-exception v0

    move-object p1, v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_15

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationData3D(JIIIIIIIJIIII)V
    .registers 35
    .param p1, "dstAlloc"    # J
    .param p3, "dstXoff"    # I
    .param p4, "dstYoff"    # I
    .param p5, "dstZoff"    # I
    .param p6, "dstMip"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "depth"    # I
    .param p10, "srcAlloc"    # J
    .param p12, "srcXoff"    # I
    .param p13, "srcYoff"    # I
    .param p14, "srcZoff"    # I
    .param p15, "srcMip"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 602
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 603
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 607
    monitor-exit p0

    return-void

    .line 601
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "dstAlloc":J
    .end local p3    # "dstXoff":I
    .end local p4    # "dstYoff":I
    .end local p5    # "dstZoff":I
    .end local p6    # "dstMip":I
    .end local p7    # "width":I
    .end local p8    # "height":I
    .end local p9    # "depth":I
    .end local p10    # "srcAlloc":J
    .end local p12    # "srcXoff":I
    .end local p13    # "srcYoff":I
    .end local p14    # "srcZoff":I
    .end local p15    # "srcMip":I
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 33
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "depth"    # I
    .param p10, "d"    # Ljava/lang/Object;
    .param p11, "sizeBytes"    # I
    .param p12, "dt"    # Landroid/renderscript/Element$DataType;
    .param p13, "mSize"    # I
    .param p14, "usePadding"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 615
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 616
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v15, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 618
    monitor-exit p0

    return-void

    .line 614
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "zoff":I
    .end local p6    # "mip":I
    .end local p7    # "w":I
    .end local p8    # "h":I
    .end local p9    # "depth":I
    .end local p10    # "d":Ljava/lang/Object;
    .end local p11    # "sizeBytes":I
    .end local p12    # "dt":Landroid/renderscript/Element$DataType;
    .end local p13    # "mSize":I
    .end local p14    # "usePadding":Z
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationElementData(JIIIII[BI)V
    .registers 23
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "compIdx"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    monitor-enter p0

    .line 551
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 552
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementData(JJIIIII[BI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 553
    monitor-exit p0

    return-void

    .line 550
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "zoff":I
    .end local p6    # "mip":I
    .end local p7    # "compIdx":I
    .end local p8    # "d":[B
    .end local p9    # "sizeBytes":I
    :catchall_1b
    move-exception v0

    move-object p1, v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationElementRead(JIIIII[BI)V
    .registers 23
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "compIdx"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    monitor-enter p0

    .line 638
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 639
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementRead(JJIIIII[BI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 640
    monitor-exit p0

    return-void

    .line 637
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "zoff":I
    .end local p6    # "mip":I
    .end local p7    # "compIdx":I
    .end local p8    # "d":[B
    .end local p9    # "sizeBytes":I
    :catchall_1b
    move-exception v0

    move-object p1, v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGenerateMipmaps(J)V
    .registers 5
    .param p1, "alloc"    # J

    monitor-enter p0

    .line 531
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 532
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 533
    monitor-exit p0

    return-void

    .line 530
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;
    .registers 17
    .param p1, "alloc"    # J
    .param p3, "stride"    # [J
    .param p4, "xBytesSize"    # I
    .param p5, "dimY"    # I
    .param p6, "dimZ"    # I

    monitor-enter p0

    .line 494
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 495
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 493
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":J
    .end local p3    # "stride":[J
    .end local p4    # "xBytesSize":I
    .end local p5    # "dimY":I
    .end local p6    # "dimZ":I
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetSurface(J)Landroid/view/Surface;
    .registers 5
    .param p1, "alloc"    # J

    monitor-enter p0

    .line 510
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 511
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(JJ)Landroid/view/Surface;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 509
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetType(J)J
    .registers 5
    .param p1, "id"    # J

    monitor-enter p0

    .line 664
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 665
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 663
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationIoReceive(J)J
    .registers 5
    .param p1, "alloc"    # J

    monitor-enter p0

    .line 525
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 526
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 524
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationIoSend(J)V
    .registers 5
    .param p1, "alloc"    # J

    monitor-enter p0

    .line 520
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 521
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 522
    monitor-exit p0

    return-void

    .line 519
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "alloc":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    .registers 17
    .param p1, "id"    # J
    .param p3, "d"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "mSize"    # I
    .param p6, "usePadding"    # Z

    monitor-enter p0

    .line 622
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 623
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    iget v7, p4, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 624
    monitor-exit p0

    return-void

    .line 621
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "d":Ljava/lang/Object;
    .end local p4    # "dt":Landroid/renderscript/Element$DataType;
    .end local p5    # "mSize":I
    .end local p6    # "usePadding":Z
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 25
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    monitor-enter p0

    .line 630
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 631
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 632
    monitor-exit p0

    return-void

    .line 629
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "off":I
    .end local p4    # "mip":I
    .end local p5    # "count":I
    .end local p6    # "d":Ljava/lang/Object;
    .end local p7    # "sizeBytes":I
    .end local p8    # "dt":Landroid/renderscript/Element$DataType;
    .end local p9    # "mSize":I
    .end local p10    # "usePadding":Z
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 31
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "d"    # Ljava/lang/Object;
    .param p10, "sizeBytes"    # I
    .param p11, "dt"    # Landroid/renderscript/Element$DataType;
    .param p12, "mSize"    # I
    .param p13, "usePadding"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 648
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 649
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 650
    monitor-exit p0

    return-void

    .line 647
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "mip":I
    .end local p6    # "face":I
    .end local p7    # "w":I
    .end local p8    # "h":I
    .end local p9    # "d":Ljava/lang/Object;
    .end local p10    # "sizeBytes":I
    .end local p11    # "dt":Landroid/renderscript/Element$DataType;
    .end local p12    # "mSize":I
    .end local p13    # "usePadding":Z
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 33
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "depth"    # I
    .param p10, "d"    # Ljava/lang/Object;
    .param p11, "sizeBytes"    # I
    .param p12, "dt"    # Landroid/renderscript/Element$DataType;
    .param p13, "mSize"    # I
    .param p14, "usePadding"    # Z

    move-object/from16 v1, p0

    monitor-enter p0

    .line 658
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 659
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v15, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 660
    monitor-exit p0

    return-void

    .line 657
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "zoff":I
    .end local p6    # "mip":I
    .end local p7    # "w":I
    .end local p8    # "h":I
    .end local p9    # "depth":I
    .end local p10    # "d":Ljava/lang/Object;
    .end local p11    # "sizeBytes":I
    .end local p12    # "dt":Landroid/renderscript/Element$DataType;
    .end local p13    # "mSize":I
    .end local p14    # "usePadding":Z
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationResize1D(JI)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "dimX"    # I

    monitor-enter p0

    .line 670
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 671
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "id":J
    .end local p3    # "dimX":I
    .local v4, "id":J
    .local v6, "dimX":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 672
    monitor-exit p0

    return-void

    .line 669
    .end local v4    # "id":J
    .end local v6    # "dimX":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationSetSurface(JLandroid/view/Surface;)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "sur"    # Landroid/view/Surface;

    monitor-enter p0

    .line 515
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 516
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "alloc":J
    .end local p3    # "sur":Landroid/view/Surface;
    .local v4, "alloc":J
    .local v6, "sur":Landroid/view/Surface;
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 517
    monitor-exit p0

    return-void

    .line 514
    .end local v4    # "alloc":J
    .end local v6    # "sur":Landroid/view/Surface;
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationSetupBufferQueue(JI)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "numAlloc"    # I

    monitor-enter p0

    .line 500
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 501
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "alloc":J
    .end local p3    # "numAlloc":I
    .local v4, "alloc":J
    .local v6, "numAlloc":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSetupBufferQueue(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 502
    monitor-exit p0

    return-void

    .line 499
    .end local v4    # "alloc":J
    .end local v6    # "numAlloc":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationShareBufferQueue(JJ)V
    .registers 13
    .param p1, "alloc1"    # J
    .param p3, "alloc2"    # J

    monitor-enter p0

    .line 505
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 506
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "alloc1":J
    .end local p3    # "alloc2":J
    .local v4, "alloc1":J
    .local v6, "alloc2":J
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationShareBufferQueue(JJJ)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 507
    monitor-exit p0

    return-void

    .line 504
    .end local v4    # "alloc1":J
    .end local v6    # "alloc2":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationSyncAll(JI)V
    .registers 11
    .param p1, "alloc"    # J
    .param p3, "src"    # I

    monitor-enter p0

    .line 486
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 487
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "alloc":J
    .end local p3    # "src":I
    .local v4, "alloc":J
    .local v6, "src":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 488
    monitor-exit p0

    return-void

    .line 485
    .end local v4    # "alloc":J
    .end local v6    # "src":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAssignName(J[B)V
    .registers 11
    .param p1, "obj"    # J
    .param p3, "name"    # [B

    monitor-enter p0

    .line 397
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 398
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "obj":J
    .end local p3    # "name":[B
    .local v4, "obj":J
    .local v6, "name":[B
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAssignName(JJ[B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 399
    monitor-exit p0

    return-void

    .line 396
    .end local v4    # "obj":J
    .end local v6    # "name":[B
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nClosureCreate(JJ[J[J[I[J[J)J
    .registers 23
    .param p1, "kernelID"    # J
    .param p3, "returnValue"    # J
    .param p5, "fieldIDs"    # [J
    .param p6, "values"    # [J
    .param p7, "sizes"    # [I
    .param p8, "depClosures"    # [J
    .param p9, "depFieldIDs"    # [J

    monitor-enter p0

    .line 338
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 339
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_28

    .line 341
    .local v2, "c":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_20

    .line 344
    monitor-exit p0

    return-wide v2

    .line 342
    :cond_20
    :try_start_20
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Failed creating closure."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    .end local v2    # "c":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "kernelID":J
    .end local p3    # "returnValue":J
    .end local p5    # "fieldIDs":[J
    .end local p6    # "values":[J
    .end local p7    # "sizes":[I
    .end local p8    # "depClosures":[J
    .end local p9    # "depFieldIDs":[J
    :catchall_28
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_28

    throw p1
.end method

.method declared-synchronized greylist-max-o nClosureSetArg(JIJI)V
    .registers 17
    .param p1, "closureID"    # J
    .param p3, "index"    # I
    .param p4, "value"    # J
    .param p6, "size"    # I

    monitor-enter p0

    .line 364
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 365
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 366
    monitor-exit p0

    return-void

    .line 363
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "closureID":J
    .end local p3    # "index":I
    .end local p4    # "value":J
    .end local p6    # "size":I
    :catchall_11
    move-exception v0

    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    throw p1
.end method

.method declared-synchronized greylist-max-o nClosureSetGlobal(JJJI)V
    .registers 19
    .param p1, "closureID"    # J
    .param p3, "fieldID"    # J
    .param p5, "value"    # J
    .param p7, "size"    # I

    monitor-enter p0

    .line 373
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 374
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 375
    monitor-exit p0

    return-void

    .line 372
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "closureID":J
    .end local p3    # "fieldID":J
    .end local p5    # "value":J
    .end local p7    # "size":I
    :catchall_12
    move-exception v0

    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_12

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramFragment(J)V
    .registers 5
    .param p1, "pf"    # J

    monitor-enter p0

    .line 308
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 309
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 310
    monitor-exit p0

    return-void

    .line 307
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "pf":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramRaster(J)V
    .registers 5
    .param p1, "pr"    # J

    monitor-enter p0

    .line 318
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 319
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 320
    monitor-exit p0

    return-void

    .line 317
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "pr":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramStore(J)V
    .registers 5
    .param p1, "pfs"    # J

    monitor-enter p0

    .line 303
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 304
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 305
    monitor-exit p0

    return-void

    .line 302
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "pfs":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramVertex(J)V
    .registers 5
    .param p1, "pv"    # J

    monitor-enter p0

    .line 313
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 314
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 315
    monitor-exit p0

    return-void

    .line 312
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "pv":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindRootScript(J)V
    .registers 5
    .param p1, "script"    # J

    monitor-enter p0

    .line 293
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 294
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 295
    monitor-exit p0

    return-void

    .line 292
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "script":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindSampler(II)V
    .registers 5
    .param p1, "sampler"    # I
    .param p2, "slot"    # I

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 299
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(JII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 300
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "sampler":I
    .end local p2    # "slot":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextCreate(JIII)J
    .registers 9
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "contextType"    # I

    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/RenderScript;->rsnContextCreate(JIII)J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    move v2, p5

    move p5, p4

    move p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "dev":J
    .end local p3    # "ver":I
    .local v2, "contextType":I
    .local p2, "dev":J
    .local p4, "ver":I
    .local p5, "sdkVer":I
    monitor-exit p0

    return-wide v0

    .line 236
    .end local v2    # "contextType":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p2    # "dev":J
    .end local p4    # "ver":I
    .end local p5    # "sdkVer":I
    :catchall_c
    move-exception v0

    move-object p1, p0

    :goto_e
    move-object p2, v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_11

    throw p2

    :catchall_11
    move-exception v0

    goto :goto_e
.end method

.method declared-synchronized greylist-max-o nContextCreateGL(JIIIIIIIIIIIIFI)J
    .registers 19
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "colorMin"    # I
    .param p6, "colorPref"    # I
    .param p7, "alphaMin"    # I
    .param p8, "alphaPref"    # I
    .param p9, "depthMin"    # I
    .param p10, "depthPref"    # I
    .param p11, "stencilMin"    # I
    .param p12, "stencilPref"    # I
    .param p13, "samplesMin"    # I
    .param p14, "samplesPref"    # I
    .param p15, "samplesQ"    # F
    .param p16, "dpi"    # I

    monitor-enter p0

    .line 229
    :try_start_1
    invoke-virtual/range {p0 .. p16}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-wide v0

    .line 229
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "dev":J
    .end local p3    # "ver":I
    .end local p4    # "sdkVer":I
    .end local p5    # "colorMin":I
    .end local p6    # "colorPref":I
    .end local p7    # "alphaMin":I
    .end local p8    # "alphaPref":I
    .end local p9    # "depthMin":I
    .end local p10    # "depthPref":I
    .end local p11    # "stencilMin":I
    .end local p12    # "stencilPref":I
    .end local p13    # "samplesMin":I
    .end local p14    # "samplesPref":I
    .end local p15    # "samplesQ":F
    .end local p16    # "dpi":I
    :catchall_7
    move-exception v0

    move-object p1, v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_7

    throw p1
.end method

.method native greylist-max-o nContextDeinitToClient(J)V
.end method

.method declared-synchronized greylist-max-o nContextDestroy()V
    .registers 6

    monitor-enter p0

    .line 240
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 244
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 245
    .local v0, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 247
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 249
    .local v1, "curCon":J
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 252
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 253
    monitor-exit p0

    return-void

    .line 239
    .end local v0    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .end local v1    # "curCon":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextDump(I)V
    .registers 4
    .param p1, "bits"    # I

    monitor-enter p0

    .line 276
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 277
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 278
    monitor-exit p0

    return-void

    .line 275
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "bits":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextFinish()V
    .registers 3

    monitor-enter p0

    .line 281
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 282
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 283
    monitor-exit p0

    return-void

    .line 280
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method native greylist-max-o nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native greylist-max-o nContextGetUserMessage(J[I)I
.end method

.method native greylist-max-o nContextInitToClient(J)V
.end method

.method declared-synchronized greylist-max-o nContextPause()V
    .registers 3

    monitor-enter p0

    .line 323
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 324
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextPause(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 325
    monitor-exit p0

    return-void

    .line 322
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method native greylist-max-o nContextPeekMessage(J[I)I
.end method

.method declared-synchronized greylist-max-o nContextResume()V
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 329
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextResume(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 330
    monitor-exit p0

    return-void

    .line 327
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextSendMessage(I[I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "data"    # [I

    monitor-enter p0

    .line 287
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 288
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 289
    monitor-exit p0

    return-void

    .line 286
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":I
    .end local p2    # "data":[I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetCacheDir(Ljava/lang/String;)V
    .registers 4
    .param p1, "cacheDir"    # Ljava/lang/String;

    monitor-enter p0

    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 272
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetCacheDir(JLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 273
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "cacheDir":Ljava/lang/String;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetPriority(I)V
    .registers 4
    .param p1, "p"    # I

    monitor-enter p0

    .line 266
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 267
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 268
    monitor-exit p0

    return-void

    .line 265
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "p":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetSurface(IILandroid/view/Surface;)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    monitor-enter p0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 257
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "sur":Landroid/view/Surface;
    .local v4, "w":I
    .local v5, "h":I
    .local v6, "sur":Landroid/view/Surface;
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(JIILandroid/view/Surface;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 258
    monitor-exit p0

    return-void

    .line 255
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v6    # "sur":Landroid/view/Surface;
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/graphics/SurfaceTexture;

    monitor-enter p0

    .line 261
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 262
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "sur":Landroid/graphics/SurfaceTexture;
    .local v4, "w":I
    .local v5, "h":I
    .local v6, "sur":Landroid/graphics/SurfaceTexture;
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 263
    monitor-exit p0

    return-void

    .line 260
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v6    # "sur":Landroid/graphics/SurfaceTexture;
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method native greylist-max-o nDeviceCreate()J
.end method

.method native greylist-max-o nDeviceDestroy(J)V
.end method

.method native greylist-max-o nDeviceSetConfig(JII)V
.end method

.method declared-synchronized greylist-max-o nElementCreate(JIZI)J
    .registers 15
    .param p1, "type"    # J
    .param p3, "kind"    # I
    .param p4, "norm"    # Z
    .param p5, "vecSize"    # I

    monitor-enter p0

    .line 419
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 420
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "type":J
    .end local p3    # "kind":I
    .end local p4    # "norm":Z
    .end local p5    # "vecSize":I
    .local v4, "type":J
    .local v6, "kind":I
    .local v7, "norm":Z
    .local v8, "vecSize":I
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 418
    .end local v4    # "type":J
    .end local v6    # "kind":I
    .end local v7    # "norm":Z
    .end local v8    # "vecSize":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nElementCreate2([J[Ljava/lang/String;[I)J
    .registers 11
    .param p1, "elements"    # [J
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    monitor-enter p0

    .line 424
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 425
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "elements":[J
    .end local p2    # "names":[Ljava/lang/String;
    .end local p3    # "arraySizes":[I
    .local v4, "elements":[J
    .local v5, "names":[Ljava/lang/String;
    .local v6, "arraySizes":[I
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 423
    .end local v4    # "elements":[J
    .end local v5    # "names":[Ljava/lang/String;
    .end local v6    # "arraySizes":[I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nElementGetNativeData(J[I)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "elementData"    # [I

    monitor-enter p0

    .line 429
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 430
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "id":J
    .end local p3    # "elementData":[I
    .local v4, "id":J
    .local v6, "elementData":[I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 431
    monitor-exit p0

    return-void

    .line 428
    .end local v4    # "id":J
    .end local v6    # "elementData":[I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "IDs"    # [J
    .param p4, "names"    # [Ljava/lang/String;
    .param p5, "arraySizes"    # [I

    monitor-enter p0

    .line 435
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 436
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "id":J
    .end local p3    # "IDs":[J
    .end local p4    # "names":[Ljava/lang/String;
    .end local p5    # "arraySizes":[I
    .local v4, "id":J
    .local v6, "IDs":[J
    .local v7, "names":[Ljava/lang/String;
    .local v8, "arraySizes":[I
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 437
    monitor-exit p0

    return-void

    .line 434
    .end local v4    # "id":J
    .end local v6    # "IDs":[J
    .end local v7    # "names":[Ljava/lang/String;
    .end local v8    # "arraySizes":[I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .registers 5
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 700
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 701
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 699
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "mgr":Landroid/content/res/AssetManager;
    .end local p2    # "path":Ljava/lang/String;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromAssetStream(J)J
    .registers 5
    .param p1, "assetStream"    # J

    monitor-enter p0

    .line 690
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 691
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(JJ)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 689
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "assetStream":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromFile(Ljava/lang/String;)J
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 695
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 696
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(JLjava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 694
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DGetEntryByIndex(JI)J
    .registers 11
    .param p1, "fileA3D"    # J
    .param p3, "index"    # I

    monitor-enter p0

    .line 715
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 716
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "fileA3D":J
    .end local p3    # "index":I
    .local v4, "fileA3D":J
    .local v6, "index":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 714
    .end local v4    # "fileA3D":J
    .end local v6    # "index":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V
    .registers 15
    .param p1, "fileA3D"    # J
    .param p3, "numEntries"    # I
    .param p4, "IDs"    # [I
    .param p5, "names"    # [Ljava/lang/String;

    monitor-enter p0

    .line 710
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 711
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "fileA3D":J
    .end local p3    # "numEntries":I
    .end local p4    # "IDs":[I
    .end local p5    # "names":[Ljava/lang/String;
    .local v4, "fileA3D":J
    .local v6, "numEntries":I
    .local v7, "IDs":[I
    .local v8, "names":[Ljava/lang/String;
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 712
    monitor-exit p0

    return-void

    .line 709
    .end local v4    # "fileA3D":J
    .end local v6    # "numEntries":I
    .end local v7    # "IDs":[I
    .end local v8    # "names":[Ljava/lang/String;
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nFileA3DGetNumIndexEntries(J)I
    .registers 5
    .param p1, "fileA3D"    # J

    monitor-enter p0

    .line 705
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 706
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(JJ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 704
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "fileA3D":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J
    .registers 13
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "dpi"    # I

    monitor-enter p0

    .line 731
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 732
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "mgr":Landroid/content/res/AssetManager;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "size":F
    .end local p4    # "dpi":I
    .local v4, "mgr":Landroid/content/res/AssetManager;
    .local v5, "path":Ljava/lang/String;
    .local v6, "size":F
    .local v7, "dpi":I
    :try_start_b
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 730
    .end local v4    # "mgr":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "size":F
    .end local v7    # "dpi":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I
    .param p4, "assetStream"    # J

    monitor-enter p0

    .line 726
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 727
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "size":F
    .end local p3    # "dpi":I
    .end local p4    # "assetStream":J
    .local v4, "name":Ljava/lang/String;
    .local v5, "size":F
    .local v6, "dpi":I
    .local v7, "assetStream":J
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 725
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "size":F
    .end local v6    # "dpi":I
    .end local v7    # "assetStream":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nFontCreateFromFile(Ljava/lang/String;FI)J
    .registers 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I

    monitor-enter p0

    .line 721
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 722
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "size":F
    .end local p3    # "dpi":I
    .local v4, "fileName":Ljava/lang/String;
    .local v5, "size":F
    .local v6, "dpi":I
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(JLjava/lang/String;FI)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 720
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "size":F
    .end local v6    # "dpi":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nGetName(J)Ljava/lang/String;
    .registers 5
    .param p1, "obj"    # J

    monitor-enter p0

    .line 402
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 403
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnGetName(JJ)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 401
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "obj":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nInvokeClosureCreate(J[B[J[J[I)J
    .registers 17
    .param p1, "invokeID"    # J
    .param p3, "params"    # [B
    .param p4, "fieldIDs"    # [J
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I

    monitor-enter p0

    .line 351
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 352
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_21

    .line 354
    .local v2, "c":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_19

    .line 357
    monitor-exit p0

    return-wide v2

    .line 355
    :cond_19
    :try_start_19
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Failed creating closure."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    .end local v2    # "c":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "invokeID":J
    .end local p3    # "params":[B
    .end local p4    # "fieldIDs":[J
    .end local p5    # "values":[J
    .end local p6    # "sizes":[I
    :catchall_21
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_21

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshCreate([J[J[I)J
    .registers 11
    .param p1, "vtx"    # [J
    .param p2, "idx"    # [J
    .param p3, "prim"    # [I

    monitor-enter p0

    .line 949
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 950
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "vtx":[J
    .end local p2    # "idx":[J
    .end local p3    # "prim":[I
    .local v4, "vtx":[J
    .local v5, "idx":[J
    .local v6, "prim":[I
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnMeshCreate(J[J[J[I)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 948
    .end local v4    # "vtx":[J
    .end local v5    # "idx":[J
    .end local v6    # "prim":[I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nMeshGetIndexCount(J)I
    .registers 5
    .param p1, "id"    # J

    monitor-enter p0

    .line 959
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 960
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(JJ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 958
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetIndices(J[J[II)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "idxIds"    # [J
    .param p4, "primitives"    # [I
    .param p5, "vtxIdCount"    # I

    monitor-enter p0

    .line 969
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 970
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "id":J
    .end local p3    # "idxIds":[J
    .end local p4    # "primitives":[I
    .end local p5    # "vtxIdCount":I
    .local v4, "id":J
    .local v6, "idxIds":[J
    .local v7, "primitives":[I
    .local v8, "vtxIdCount":I
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(JJ[J[II)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 971
    monitor-exit p0

    return-void

    .line 968
    .end local v4    # "id":J
    .end local v6    # "idxIds":[J
    .end local v7    # "primitives":[I
    .end local v8    # "vtxIdCount":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nMeshGetVertexBufferCount(J)I
    .registers 5
    .param p1, "id"    # J

    monitor-enter p0

    .line 954
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 955
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(JJ)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 953
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetVertices(J[JI)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "vtxIds"    # [J
    .param p4, "vtxIdCount"    # I

    monitor-enter p0

    .line 964
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 965
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    .end local p1    # "id":J
    .end local p3    # "vtxIds":[J
    .end local p4    # "vtxIdCount":I
    .local v4, "id":J
    .local v6, "vtxIds":[J
    .local v7, "vtxIdCount":I
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(JJ[JI)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 966
    monitor-exit p0

    return-void

    .line 963
    .end local v4    # "id":J
    .end local v6    # "vtxIds":[J
    .end local v7    # "vtxIdCount":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method greylist-max-o nObjDestroy(J)V
    .registers 7
    .param p1, "id"    # J

    .line 412
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 413
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    .line 415
    :cond_d
    return-void
.end method

.method declared-synchronized greylist-max-o nProgramBindConstants(JIJ)V
    .registers 15
    .param p1, "pv"    # J
    .param p3, "slot"    # I
    .param p4, "mID"    # J

    monitor-enter p0

    .line 923
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 924
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    .end local p1    # "pv":J
    .end local p3    # "slot":I
    .end local p4    # "mID":J
    .local v4, "pv":J
    .local v6, "slot":I
    .local v7, "mID":J
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 925
    monitor-exit p0

    return-void

    .line 922
    .end local v4    # "pv":J
    .end local v6    # "slot":I
    .end local v7    # "mID":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nProgramBindSampler(JIJ)V
    .registers 15
    .param p1, "vpf"    # J
    .param p3, "slot"    # I
    .param p4, "s"    # J

    monitor-enter p0

    .line 933
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 934
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    .end local p1    # "vpf":J
    .end local p3    # "slot":I
    .end local p4    # "s":J
    .local v4, "vpf":J
    .local v6, "slot":I
    .local v7, "s":J
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 935
    monitor-exit p0

    return-void

    .line 932
    .end local v4    # "vpf":J
    .end local v6    # "slot":I
    .end local v7    # "s":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nProgramBindTexture(JIJ)V
    .registers 15
    .param p1, "vpf"    # J
    .param p3, "slot"    # I
    .param p4, "a"    # J

    monitor-enter p0

    .line 928
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 929
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    .end local p1    # "vpf":J
    .end local p3    # "slot":I
    .end local p4    # "a":J
    .local v4, "vpf":J
    .local v6, "slot":I
    .local v7, "a":J
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 930
    monitor-exit p0

    return-void

    .line 927
    .end local v4    # "vpf":J
    .end local v6    # "slot":I
    .end local v7    # "a":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .registers 11
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [J

    monitor-enter p0

    .line 938
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 939
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "shader":Ljava/lang/String;
    .end local p2    # "texNames":[Ljava/lang/String;
    .end local p3    # "params":[J
    .local v4, "shader":Ljava/lang/String;
    .local v5, "texNames":[Ljava/lang/String;
    .local v6, "params":[J
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 937
    .end local v4    # "shader":Ljava/lang/String;
    .end local v5    # "texNames":[Ljava/lang/String;
    .end local v6    # "params":[J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nProgramRasterCreate(ZI)J
    .registers 5
    .param p1, "pointSprite"    # Z
    .param p2, "cullMode"    # I

    monitor-enter p0

    .line 917
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 918
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(JZI)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 916
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "pointSprite":Z
    .end local p2    # "cullMode":I
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramStoreCreate(ZZZZZZIII)J
    .registers 23
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z
    .param p5, "depthMask"    # Z
    .param p6, "dither"    # Z
    .param p7, "srcMode"    # I
    .param p8, "dstMode"    # I
    .param p9, "depthFunc"    # I

    monitor-enter p0

    .line 910
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 911
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(JZZZZZZIII)J

    move-result-wide v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-wide v2

    .line 909
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "r":Z
    .end local p2    # "g":Z
    .end local p3    # "b":Z
    .end local p4    # "a":Z
    .end local p5    # "depthMask":Z
    .end local p6    # "dither":Z
    .end local p7    # "srcMode":I
    .end local p8    # "dstMode":I
    .end local p9    # "depthFunc":I
    :catchall_1d
    move-exception v0

    move-object p1, v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1d

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .registers 11
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [J

    monitor-enter p0

    .line 943
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 944
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "shader":Ljava/lang/String;
    .end local p2    # "texNames":[Ljava/lang/String;
    .end local p3    # "params":[J
    .local v4, "shader":Ljava/lang/String;
    .local v5, "texNames":[Ljava/lang/String;
    .local v6, "params":[J
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 942
    .end local v4    # "shader":Ljava/lang/String;
    .end local v5    # "texNames":[Ljava/lang/String;
    .end local v6    # "params":[J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nSamplerCreate(IIIIIF)J
    .registers 17
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    monitor-enter p0

    .line 900
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 901
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-wide v2

    .line 899
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "magFilter":I
    .end local p2    # "minFilter":I
    .end local p3    # "wrapS":I
    .end local p4    # "wrapT":I
    .end local p5    # "wrapR":I
    .end local p6    # "aniso":F
    :catchall_14
    move-exception v0

    move-object p1, v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_14

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptBindAllocation(JJI)V
    .registers 15
    .param p1, "script"    # J
    .param p3, "alloc"    # J
    .param p5, "slot"    # I

    monitor-enter p0

    .line 738
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 739
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    .end local p1    # "script":J
    .end local p3    # "alloc":J
    .end local p5    # "slot":I
    .local v4, "script":J
    .local v6, "alloc":J
    .local v8, "slot":I
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(JJJI)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 740
    monitor-exit p0

    return-void

    .line 737
    .end local v4    # "script":J
    .end local v6    # "alloc":J
    .end local v8    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .registers 13
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    monitor-enter p0

    .line 844
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 845
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "resName":Ljava/lang/String;
    .end local p2    # "cacheDir":Ljava/lang/String;
    .end local p3    # "script":[B
    .end local p4    # "length":I
    .local v4, "resName":Ljava/lang/String;
    .local v5, "cacheDir":Ljava/lang/String;
    .local v6, "script":[B
    .local v7, "length":I
    :try_start_b
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 843
    .end local v4    # "resName":Ljava/lang/String;
    .end local v5    # "cacheDir":Ljava/lang/String;
    .end local v6    # "script":[B
    .end local v7    # "length":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nScriptFieldIDCreate(JI)J
    .registers 11
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 868
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 869
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "sid":J
    .end local p3    # "slot":I
    .local v4, "sid":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 867
    .end local v4    # "sid":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptForEach(JI[JJ[B[I)V
    .registers 21
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "params"    # [B
    .param p8, "limits"    # [I

    monitor-enter p0

    .line 757
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 758
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 759
    monitor-exit p0

    return-void

    .line 756
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "ains":[J
    .end local p5    # "aout":J
    .end local p7    # "params":[B
    .end local p8    # "limits":[I
    :catchall_16
    move-exception v0

    move-object p1, v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_16

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGetVarD(JI)D
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 814
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 815
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .local v4, "id":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(JJI)D

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 813
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarF(JI)F
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 804
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 805
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .local v4, "id":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(JJI)F

    move-result p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return p1

    .line 803
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarI(JI)I
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 782
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 783
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .local v4, "id":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(JJI)I

    move-result p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return p1

    .line 781
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarJ(JI)J
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 793
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 794
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .local v4, "id":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 792
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarV(JI[B)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B

    monitor-enter p0

    .line 824
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 825
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":[B
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":[B
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(JJI[B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 826
    monitor-exit p0

    return-void

    .line 823
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":[B
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cachePath"    # Ljava/lang/String;
    .param p3, "closures"    # [J

    monitor-enter p0

    .line 381
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 382
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "cachePath":Ljava/lang/String;
    .end local p3    # "closures":[J
    .local v4, "name":Ljava/lang/String;
    .local v5, "cachePath":Ljava/lang/String;
    .local v6, "closures":[J
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_23

    .line 383
    .local p1, "g":J
    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_16

    .line 386
    monitor-exit p0

    return-wide p1

    .line 384
    :cond_16
    :try_start_16
    new-instance p3, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Failed creating script group."

    invoke-direct {p3, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 380
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "cachePath":Ljava/lang/String;
    .end local v6    # "closures":[J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "g":J
    :catchall_1e
    move-exception v0

    move-object v1, p0

    :goto_20
    move-object p1, v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_23

    throw p1

    :catchall_23
    move-exception v0

    goto :goto_20
.end method

.method declared-synchronized greylist-max-o nScriptGroup2Execute(J)V
    .registers 5
    .param p1, "groupID"    # J

    monitor-enter p0

    .line 391
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 392
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 393
    monitor-exit p0

    return-void

    .line 390
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "groupID":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupCreate([J[J[J[J[J)J
    .registers 15
    .param p1, "kernels"    # [J
    .param p2, "src"    # [J
    .param p3, "dstk"    # [J
    .param p4, "dstf"    # [J
    .param p5, "types"    # [J

    monitor-enter p0

    .line 874
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 875
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "kernels":[J
    .end local p2    # "src":[J
    .end local p3    # "dstk":[J
    .end local p4    # "dstf":[J
    .end local p5    # "types":[J
    .local v4, "kernels":[J
    .local v5, "src":[J
    .local v6, "dstk":[J
    .local v7, "dstf":[J
    .local v8, "types":[J
    :try_start_c
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    move-result-wide p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_17

    monitor-exit p0

    return-wide p1

    .line 873
    .end local v4    # "kernels":[J
    .end local v5    # "src":[J
    .end local v6    # "dstk":[J
    .end local v7    # "dstf":[J
    .end local v8    # "types":[J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_12
    move-exception v0

    move-object v1, p0

    :goto_14
    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_17

    throw p1

    :catchall_17
    move-exception v0

    goto :goto_14
.end method

.method declared-synchronized greylist-max-o nScriptGroupExecute(J)V
    .registers 5
    .param p1, "group"    # J

    monitor-enter p0

    .line 892
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 893
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 894
    monitor-exit p0

    return-void

    .line 891
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "group":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupSetInput(JJJ)V
    .registers 17
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    monitor-enter p0

    .line 880
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 881
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 882
    monitor-exit p0

    return-void

    .line 879
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "group":J
    .end local p3    # "kernel":J
    .end local p5    # "alloc":J
    :catchall_f
    move-exception v0

    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_f

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupSetOutput(JJJ)V
    .registers 17
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    monitor-enter p0

    .line 886
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 887
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 888
    monitor-exit p0

    return-void

    .line 885
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "group":J
    .end local p3    # "kernel":J
    .end local p5    # "alloc":J
    :catchall_f
    move-exception v0

    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_f

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V
    .registers 35
    .param p1, "id"    # J
    .param p3, "M"    # I
    .param p4, "N"    # I
    .param p5, "K"    # I
    .param p6, "A"    # J
    .param p8, "a_offset"    # I
    .param p9, "B"    # J
    .param p11, "b_offset"    # I
    .param p12, "C"    # J
    .param p14, "c_offset"    # I
    .param p15, "c_mult_int"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1027
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1028
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 1029
    monitor-exit p0

    return-void

    .line 1026
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "M":I
    .end local p4    # "N":I
    .end local p5    # "K":I
    .end local p6    # "A":J
    .end local p8    # "a_offset":I
    .end local p9    # "B":J
    .end local p11    # "b_offset":I
    .end local p12    # "C":J
    .end local p14    # "c_offset":I
    .end local p15    # "c_mult_int":I
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V
    .registers 55
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alphaX"    # F
    .param p13, "alphaY"    # F
    .param p14, "A"    # J
    .param p16, "B"    # J
    .param p18, "betaX"    # F
    .param p19, "betaY"    # F
    .param p20, "C"    # J
    .param p22, "incX"    # I
    .param p23, "incY"    # I
    .param p24, "KL"    # I
    .param p25, "KU"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1005
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1006
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move/from16 v22, p19

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 1007
    monitor-exit p0

    return-void

    .line 1004
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "func":I
    .end local p4    # "TransA":I
    .end local p5    # "TransB":I
    .end local p6    # "Side":I
    .end local p7    # "Uplo":I
    .end local p8    # "Diag":I
    .end local p9    # "M":I
    .end local p10    # "N":I
    .end local p11    # "K":I
    .end local p12    # "alphaX":F
    .end local p13    # "alphaY":F
    .end local p14    # "A":J
    .end local p16    # "B":J
    .end local p18    # "betaX":F
    .end local p19    # "betaY":F
    .end local p20    # "C":J
    .end local p22    # "incX":I
    .end local p23    # "incY":I
    .end local p24    # "KL":I
    .end local p25    # "KU":I
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V
    .registers 55
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alpha"    # D
    .param p14, "A"    # J
    .param p16, "B"    # J
    .param p18, "beta"    # D
    .param p20, "C"    # J
    .param p22, "incX"    # I
    .param p23, "incY"    # I
    .param p24, "KL"    # I
    .param p25, "KU"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 993
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 994
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 995
    monitor-exit p0

    return-void

    .line 992
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "func":I
    .end local p4    # "TransA":I
    .end local p5    # "TransB":I
    .end local p6    # "Side":I
    .end local p7    # "Uplo":I
    .end local p8    # "Diag":I
    .end local p9    # "M":I
    .end local p10    # "N":I
    .end local p11    # "K":I
    .end local p12    # "alpha":D
    .end local p14    # "A":J
    .end local p16    # "B":J
    .end local p18    # "beta":D
    .end local p20    # "C":J
    .end local p22    # "incX":I
    .end local p23    # "incY":I
    .end local p24    # "KL":I
    .end local p25    # "KU":I
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V
    .registers 51
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alpha"    # F
    .param p13, "A"    # J
    .param p15, "B"    # J
    .param p17, "beta"    # F
    .param p18, "C"    # J
    .param p20, "incX"    # I
    .param p21, "incY"    # I
    .param p22, "KL"    # I
    .param p23, "KU"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 981
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 982
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p17

    move-wide/from16 v21, p18

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 983
    monitor-exit p0

    return-void

    .line 980
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "func":I
    .end local p4    # "TransA":I
    .end local p5    # "TransB":I
    .end local p6    # "Side":I
    .end local p7    # "Uplo":I
    .end local p8    # "Diag":I
    .end local p9    # "M":I
    .end local p10    # "N":I
    .end local p11    # "K":I
    .end local p12    # "alpha":F
    .end local p13    # "A":J
    .end local p15    # "B":J
    .end local p17    # "beta":F
    .end local p18    # "C":J
    .end local p20    # "incX":I
    .end local p21    # "incY":I
    .end local p22    # "KL":I
    .end local p23    # "KU":I
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V
    .registers 63
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alphaX"    # D
    .param p14, "alphaY"    # D
    .param p16, "A"    # J
    .param p18, "B"    # J
    .param p20, "betaX"    # D
    .param p22, "betaY"    # D
    .param p24, "C"    # J
    .param p26, "incX"    # I
    .param p27, "incY"    # I
    .param p28, "KL"    # I
    .param p29, "KU"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1017
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1018
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move-wide/from16 v25, p22

    move-wide/from16 v27, p24

    move/from16 v29, p26

    move/from16 v30, p27

    move/from16 v31, p28

    move/from16 v32, p29

    invoke-virtual/range {v1 .. v32}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 1019
    monitor-exit p0

    return-void

    .line 1016
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "func":I
    .end local p4    # "TransA":I
    .end local p5    # "TransB":I
    .end local p6    # "Side":I
    .end local p7    # "Uplo":I
    .end local p8    # "Diag":I
    .end local p9    # "M":I
    .end local p10    # "N":I
    .end local p11    # "K":I
    .end local p12    # "alphaX":D
    .end local p14    # "alphaY":D
    .end local p16    # "A":J
    .end local p18    # "B":J
    .end local p20    # "betaX":D
    .end local p22    # "betaY":D
    .end local p24    # "C":J
    .end local p26    # "incX":I
    .end local p27    # "incY":I
    .end local p28    # "KL":I
    .end local p29    # "KU":I
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicCreate(IJ)J
    .registers 11
    .param p1, "id"    # I
    .param p2, "eid"    # J

    monitor-enter p0

    .line 850
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 851
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    .end local p1    # "id":I
    .end local p2    # "eid":J
    .local v4, "id":I
    .local v5, "eid":J
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJ)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 849
    .end local v4    # "id":I
    .end local v5    # "eid":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptInvoke(JI)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 748
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 749
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .local v4, "id":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 750
    monitor-exit p0

    return-void

    .line 747
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nScriptInvokeIDCreate(JI)J
    .registers 11
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    monitor-enter p0

    .line 862
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 863
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "sid":J
    .end local p3    # "slot":I
    .local v4, "sid":J
    .local v6, "slot":I
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 861
    .end local v4    # "sid":J
    .end local v6    # "slot":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptInvokeV(JI[B)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "params"    # [B

    monitor-enter p0

    .line 771
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 772
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "params":[B
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "params":[B
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(JJI[B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 773
    monitor-exit p0

    return-void

    .line 770
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "params":[B
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptKernelIDCreate(JII)J
    .registers 13
    .param p1, "sid"    # J
    .param p3, "slot"    # I
    .param p4, "sig"    # I

    monitor-enter p0

    .line 856
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 857
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .end local p1    # "sid":J
    .end local p3    # "slot":I
    .end local p4    # "sig":I
    .local v4, "sid":J
    .local v6, "slot":I
    .local v7, "sig":I
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJII)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 855
    .end local v4    # "sid":J
    .end local v6    # "slot":I
    .end local v7    # "sig":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nScriptReduce(JI[JJ[I)V
    .registers 19
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "limits"    # [I

    monitor-enter p0

    .line 765
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 766
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 767
    monitor-exit p0

    return-void

    .line 764
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "ains":[J
    .end local p5    # "aout":J
    .end local p7    # "limits":[I
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetTimeZone(J[B)V
    .registers 11
    .param p1, "script"    # J
    .param p3, "timeZone"    # [B

    monitor-enter p0

    .line 743
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 744
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "script":J
    .end local p3    # "timeZone":[B
    .local v4, "script":J
    .local v6, "timeZone":[B
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 745
    monitor-exit p0

    return-void

    .line 742
    .end local v4    # "script":J
    .end local v6    # "timeZone":[B
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nScriptSetVarD(JID)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # D

    monitor-enter p0

    .line 809
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 810
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":D
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":D
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(JJID)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 811
    monitor-exit p0

    return-void

    .line 808
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":D
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarF(JIF)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # F

    monitor-enter p0

    .line 799
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 800
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":F
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":F
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(JJIF)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 801
    monitor-exit p0

    return-void

    .line 798
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":F
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarI(JII)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # I

    monitor-enter p0

    .line 777
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 778
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":I
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":I
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(JJII)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 779
    monitor-exit p0

    return-void

    .line 776
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":I
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarJ(JIJ)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J

    monitor-enter p0

    .line 788
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 789
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":J
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":J
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 790
    monitor-exit p0

    return-void

    .line 787
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarObj(JIJ)V
    .registers 15
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J

    monitor-enter p0

    .line 836
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 837
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":J
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":J
    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 838
    monitor-exit p0

    return-void

    .line 835
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarV(JI[B)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B

    monitor-enter p0

    .line 819
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 820
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":[B
    .local v4, "id":J
    .local v6, "slot":I
    .local v7, "val":[B
    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(JJI[B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 821
    monitor-exit p0

    return-void

    .line 818
    .end local v4    # "id":J
    .end local v6    # "slot":I
    .end local v7    # "val":[B
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarVE(JI[BJ[I)V
    .registers 19
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B
    .param p5, "e"    # J
    .param p7, "dims"    # [I

    monitor-enter p0

    .line 831
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 832
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 833
    monitor-exit p0

    return-void

    .line 830
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "id":J
    .end local p3    # "slot":I
    .end local p4    # "val":[B
    .end local p5    # "e":J
    .end local p7    # "dims":[I
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nTypeCreate(JIIIZZI)J
    .registers 21
    .param p1, "eid"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mips"    # Z
    .param p7, "faces"    # Z
    .param p8, "yuv"    # I

    monitor-enter p0

    .line 441
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 442
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    move-result-wide v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-wide v2

    .line 440
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    .end local p1    # "eid":J
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "z":I
    .end local p6    # "mips":Z
    .end local p7    # "faces":Z
    .end local p8    # "yuv":I
    :catchall_19
    move-exception v0

    move-object p1, v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_19

    throw p1
.end method

.method declared-synchronized greylist-max-o nTypeGetNativeData(J[J)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "typeData"    # [J

    monitor-enter p0

    .line 446
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 447
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "id":J
    .end local p3    # "typeData":[J
    .local v4, "id":J
    .local v6, "typeData":[J
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 448
    monitor-exit p0

    return-void

    .line 445
    .end local v4    # "id":J
    .end local v6    # "typeData":[J
    .end local p0    # "this":Landroid/renderscript/RenderScript;
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method native greylist-max-o rsnAllocationAdapterCreate(JJJ)J
.end method

.method native greylist-max-o rsnAllocationAdapterOffset(JJIIIIIIIII)V
.end method

.method native greylist-max-o rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native greylist-max-o rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native greylist-max-o rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationElementData(JJIIIII[BI)V
.end method

.method native greylist-max-o rsnAllocationElementRead(JJIIIII[BI)V
.end method

.method native greylist-max-o rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native greylist-max-o rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;
.end method

.method native greylist-max-o rsnAllocationGetSurface(JJ)Landroid/view/Surface;
.end method

.method native greylist-max-o rsnAllocationGetType(JJ)J
.end method

.method native greylist-max-o rsnAllocationIoReceive(JJ)J
.end method

.method native greylist-max-o rsnAllocationIoSend(JJ)V
.end method

.method native greylist-max-o rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native greylist-max-o rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationResize1D(JJI)V
.end method

.method native greylist-max-o rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native greylist-max-o rsnAllocationSetupBufferQueue(JJI)V
.end method

.method native greylist-max-o rsnAllocationShareBufferQueue(JJJ)V
.end method

.method native greylist-max-o rsnAllocationSyncAll(JJI)V
.end method

.method native greylist-max-o rsnAssignName(JJ[B)V
.end method

.method native greylist-max-o rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native greylist-max-o rsnClosureSetArg(JJIJI)V
.end method

.method native greylist-max-o rsnClosureSetGlobal(JJJJI)V
.end method

.method native greylist-max-o rsnContextBindProgramFragment(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramRaster(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramStore(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramVertex(JJ)V
.end method

.method native greylist-max-o rsnContextBindRootScript(JJ)V
.end method

.method native greylist-max-o rsnContextBindSampler(JII)V
.end method

.method native greylist-max-o rsnContextCreate(JIII)J
.end method

.method native greylist-max-o rsnContextCreateGL(JIIIIIIIIIIIIFI)J
.end method

.method native greylist-max-o rsnContextDestroy(J)V
.end method

.method native greylist-max-o rsnContextDump(JI)V
.end method

.method native greylist-max-o rsnContextFinish(J)V
.end method

.method native greylist-max-o rsnContextPause(J)V
.end method

.method native greylist-max-o rsnContextResume(J)V
.end method

.method native greylist-max-o rsnContextSendMessage(JI[I)V
.end method

.method native greylist-max-o rsnContextSetCacheDir(JLjava/lang/String;)V
.end method

.method native greylist-max-o rsnContextSetPriority(JI)V
.end method

.method native greylist-max-o rsnContextSetSurface(JIILandroid/view/Surface;)V
.end method

.method native greylist-max-o rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
.end method

.method native greylist-max-o rsnElementCreate(JJIZI)J
.end method

.method native greylist-max-o rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native greylist-max-o rsnElementGetNativeData(JJ[I)V
.end method

.method native greylist-max-o rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native greylist-max-o rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method native greylist-max-o rsnFileA3DCreateFromAssetStream(JJ)J
.end method

.method native greylist-max-o rsnFileA3DCreateFromFile(JLjava/lang/String;)J
.end method

.method native greylist-max-o rsnFileA3DGetEntryByIndex(JJI)J
.end method

.method native greylist-max-o rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
.end method

.method native greylist-max-o rsnFileA3DGetNumIndexEntries(JJ)I
.end method

.method native greylist-max-o rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
.end method

.method native greylist-max-o rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
.end method

.method native greylist-max-o rsnFontCreateFromFile(JLjava/lang/String;FI)J
.end method

.method native greylist-max-o rsnGetName(JJ)Ljava/lang/String;
.end method

.method native greylist-max-o rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native greylist-max-o rsnMeshCreate(J[J[J[I)J
.end method

.method native greylist-max-o rsnMeshGetIndexCount(JJ)I
.end method

.method native greylist-max-o rsnMeshGetIndices(JJ[J[II)V
.end method

.method native greylist-max-o rsnMeshGetVertexBufferCount(JJ)I
.end method

.method native greylist-max-o rsnMeshGetVertices(JJ[JI)V
.end method

.method native greylist-max-o rsnObjDestroy(JJ)V
.end method

.method native greylist-max-o rsnProgramBindConstants(JJIJ)V
.end method

.method native greylist-max-o rsnProgramBindSampler(JJIJ)V
.end method

.method native greylist-max-o rsnProgramBindTexture(JJIJ)V
.end method

.method native greylist-max-o rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnProgramRasterCreate(JZI)J
.end method

.method native greylist-max-o rsnProgramStoreCreate(JZZZZZZIII)J
.end method

.method native greylist-max-o rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnSamplerCreate(JIIIIIF)J
.end method

.method native greylist-max-o rsnScriptBindAllocation(JJJI)V
.end method

.method native greylist-max-o rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native greylist-max-o rsnScriptFieldIDCreate(JJI)J
.end method

.method native greylist-max-o rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native greylist-max-o rsnScriptGetVarD(JJI)D
.end method

.method native greylist-max-o rsnScriptGetVarF(JJI)F
.end method

.method native greylist-max-o rsnScriptGetVarI(JJI)I
.end method

.method native greylist-max-o rsnScriptGetVarJ(JJI)J
.end method

.method native greylist-max-o rsnScriptGetVarV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnScriptGroup2Execute(JJ)V
.end method

.method native greylist-max-o rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native greylist-max-o rsnScriptGroupExecute(JJ)V
.end method

.method native greylist-max-o rsnScriptGroupSetInput(JJJJ)V
.end method

.method native greylist-max-o rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicCreate(JIJ)J
.end method

.method native greylist-max-o rsnScriptInvoke(JJI)V
.end method

.method native greylist-max-o rsnScriptInvokeIDCreate(JJI)J
.end method

.method native greylist-max-o rsnScriptInvokeV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptKernelIDCreate(JJII)J
.end method

.method native greylist-max-o rsnScriptReduce(JJI[JJ[I)V
.end method

.method native greylist-max-o rsnScriptSetTimeZone(JJ[B)V
.end method

.method native greylist-max-o rsnScriptSetVarD(JJID)V
.end method

.method native greylist-max-o rsnScriptSetVarF(JJIF)V
.end method

.method native greylist-max-o rsnScriptSetVarI(JJII)V
.end method

.method native greylist-max-o rsnScriptSetVarJ(JJIJ)V
.end method

.method native greylist-max-o rsnScriptSetVarObj(JJIJ)V
.end method

.method native greylist-max-o rsnScriptSetVarV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptSetVarVE(JJI[BJ[I)V
.end method

.method native greylist-max-o rsnTypeCreate(JJIIIZZI)J
.end method

.method native greylist-max-o rsnTypeGetNativeData(JJ[J)V
.end method

.method greylist-max-o safeID(Landroid/renderscript/BaseObj;)J
    .registers 4
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    .line 1669
    if-eqz p1, :cond_7

    .line 1670
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    .line 1672
    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist sendMessage(I[I)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .line 1186
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    .line 1187
    return-void
.end method

.method public whitelist setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .registers 2
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1212
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1213
    return-void
.end method

.method public whitelist setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .registers 2
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1172
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1173
    return-void
.end method

.method public whitelist setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .registers 3
    .param p1, "p"    # Landroid/renderscript/RenderScript$Priority;

    .line 1257
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1258
    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 1259
    return-void
.end method

.method greylist validate()V
    .registers 5

    .line 1245
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1248
    return-void

    .line 1246
    :cond_9
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o validateObject(Landroid/renderscript/BaseObj;)V
    .registers 4
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    .line 1236
    if-eqz p1, :cond_f

    .line 1237
    iget-object v0, p1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-ne v0, p0, :cond_7

    goto :goto_f

    .line 1238
    :cond_7
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Attempting to use an object across contexts."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :cond_f
    :goto_f
    return-void
.end method
