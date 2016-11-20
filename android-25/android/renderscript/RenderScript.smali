.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$ContextType;,
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;
    }
.end annotation


# static fields
.field public static final CREATE_FLAG_LOW_LATENCY:I = 0x2

.field public static final CREATE_FLAG_LOW_POWER:I = 0x4

.field public static final CREATE_FLAG_NONE:I = 0x0

.field public static final CREATE_FLAG_WAIT_FOR_ATTACH:I = 0x8

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final TRACE_TAG:J = 0x8000L

.field private static mCachePath:Ljava/lang/String; = null

.field private static mProcessContextList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static registerNativeFree:Ljava/lang/reflect/Method; = null

.field static sInitialized:Z = false

.field static final sMinorVersion:J = 0x1L

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroid/renderscript/RenderScript$ContextType;

.field private mDestroyed:Z

.field volatile mElement_ALLOCATION:Landroid/renderscript/Element;

.field volatile mElement_A_8:Landroid/renderscript/Element;

.field volatile mElement_BOOLEAN:Landroid/renderscript/Element;

.field volatile mElement_CHAR_2:Landroid/renderscript/Element;

.field volatile mElement_CHAR_3:Landroid/renderscript/Element;

.field volatile mElement_CHAR_4:Landroid/renderscript/Element;

.field volatile mElement_DOUBLE_2:Landroid/renderscript/Element;

.field volatile mElement_DOUBLE_3:Landroid/renderscript/Element;

.field volatile mElement_DOUBLE_4:Landroid/renderscript/Element;

.field volatile mElement_ELEMENT:Landroid/renderscript/Element;

.field volatile mElement_F16:Landroid/renderscript/Element;

.field volatile mElement_F32:Landroid/renderscript/Element;

.field volatile mElement_F64:Landroid/renderscript/Element;

.field volatile mElement_FLOAT_2:Landroid/renderscript/Element;

.field volatile mElement_FLOAT_3:Landroid/renderscript/Element;

.field volatile mElement_FLOAT_4:Landroid/renderscript/Element;

.field volatile mElement_FONT:Landroid/renderscript/Element;

.field volatile mElement_HALF_2:Landroid/renderscript/Element;

.field volatile mElement_HALF_3:Landroid/renderscript/Element;

.field volatile mElement_HALF_4:Landroid/renderscript/Element;

.field volatile mElement_I16:Landroid/renderscript/Element;

.field volatile mElement_I32:Landroid/renderscript/Element;

.field volatile mElement_I64:Landroid/renderscript/Element;

.field volatile mElement_I8:Landroid/renderscript/Element;

.field volatile mElement_INT_2:Landroid/renderscript/Element;

.field volatile mElement_INT_3:Landroid/renderscript/Element;

.field volatile mElement_INT_4:Landroid/renderscript/Element;

.field volatile mElement_LONG_2:Landroid/renderscript/Element;

.field volatile mElement_LONG_3:Landroid/renderscript/Element;

.field volatile mElement_LONG_4:Landroid/renderscript/Element;

.field volatile mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field volatile mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field volatile mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field volatile mElement_MESH:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field volatile mElement_RGBA_4444:Landroid/renderscript/Element;

.field volatile mElement_RGBA_5551:Landroid/renderscript/Element;

.field volatile mElement_RGBA_8888:Landroid/renderscript/Element;

.field volatile mElement_RGB_565:Landroid/renderscript/Element;

.field volatile mElement_RGB_888:Landroid/renderscript/Element;

.field volatile mElement_SAMPLER:Landroid/renderscript/Element;

.field volatile mElement_SCRIPT:Landroid/renderscript/Element;

.field volatile mElement_SHORT_2:Landroid/renderscript/Element;

.field volatile mElement_SHORT_3:Landroid/renderscript/Element;

.field volatile mElement_SHORT_4:Landroid/renderscript/Element;

.field volatile mElement_TYPE:Landroid/renderscript/Element;

.field volatile mElement_U16:Landroid/renderscript/Element;

.field volatile mElement_U32:Landroid/renderscript/Element;

.field volatile mElement_U64:Landroid/renderscript/Element;

.field volatile mElement_U8:Landroid/renderscript/Element;

.field volatile mElement_UCHAR_2:Landroid/renderscript/Element;

.field volatile mElement_UCHAR_3:Landroid/renderscript/Element;

.field volatile mElement_UCHAR_4:Landroid/renderscript/Element;

.field volatile mElement_UINT_2:Landroid/renderscript/Element;

.field volatile mElement_UINT_3:Landroid/renderscript/Element;

.field volatile mElement_UINT_4:Landroid/renderscript/Element;

.field volatile mElement_ULONG_2:Landroid/renderscript/Element;

.field volatile mElement_ULONG_3:Landroid/renderscript/Element;

.field volatile mElement_ULONG_4:Landroid/renderscript/Element;

.field volatile mElement_USHORT_2:Landroid/renderscript/Element;

.field volatile mElement_USHORT_3:Landroid/renderscript/Element;

.field volatile mElement_USHORT_4:Landroid/renderscript/Element;

.field volatile mElement_YUV:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field private mIsProcessContext:Z

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field volatile mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field volatile mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field volatile mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@6
    sput-object v4, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    #@8
    .line 109
    sput-boolean v5, Landroid/renderscript/RenderScript;->sInitialized:Z

    #@a
    .line 110
    const-string/jumbo v4, "config.disable_renderscript"

    #@d
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_0

    #@13
    .line 112
    :try_start_0
    const-string/jumbo v4, "dalvik.system.VMRuntime"

    #@16
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@19
    move-result-object v3

    #@1a
    .line 113
    .local v3, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getRuntime"

    #@1d
    const/4 v5, 0x0

    #@1e
    new-array v5, v5, [Ljava/lang/Class;

    #@20
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v2

    #@24
    .line 114
    .local v2, "get_runtime":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    #@25
    new-array v4, v4, [Ljava/lang/Object;

    #@27
    const/4 v5, 0x0

    #@28
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    sput-object v4, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    #@2e
    .line 115
    const-string/jumbo v4, "registerNativeAllocation"

    #@31
    const/4 v5, 0x1

    #@32
    new-array v5, v5, [Ljava/lang/Class;

    #@34
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@36
    const/4 v7, 0x0

    #@37
    aput-object v6, v5, v7

    #@39
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3c
    move-result-object v4

    #@3d
    sput-object v4, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    #@3f
    .line 116
    const-string/jumbo v4, "registerNativeFree"

    #@42
    const/4 v5, 0x1

    #@43
    new-array v5, v5, [Ljava/lang/Class;

    #@45
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@47
    const/4 v7, 0x0

    #@48
    aput-object v6, v5, v7

    #@4a
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@4d
    move-result-object v4

    #@4e
    sput-object v4, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 122
    :try_start_1
    const-string/jumbo v4, "rs_jni"

    #@53
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@56
    .line 123
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    #@59
    .line 124
    const/4 v4, 0x1

    #@5a
    sput-boolean v4, Landroid/renderscript/RenderScript;->sInitialized:Z

    #@5c
    .line 125
    invoke-static {}, Landroid/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    #@5f
    move-result v4

    #@60
    sput v4, Landroid/renderscript/RenderScript;->sPointerSize:I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    #@62
    .line 47
    :cond_0
    return-void

    #@63
    .line 117
    .end local v2    # "get_runtime":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@64
    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RenderScript_jni"

    #@67
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v6, "Error loading GC methods: "

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 119
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@80
    new-instance v5, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v6, "Error loading GC methods: "

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@97
    throw v4

    #@98
    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "get_runtime":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    #@99
    .line 127
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v4, "RenderScript_jni"

    #@9c
    new-instance v5, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v6, "Error loading RS jni library: "

    #@a4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v5

    #@b0
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    .line 128
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@b5
    new-instance v5, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v6, "Error loading RS jni library: "

    #@bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v4
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 56
    iput-boolean v1, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    #@7
    .line 57
    iput v1, p0, Landroid/renderscript/RenderScript;->mContextFlags:I

    #@9
    .line 58
    iput v1, p0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    #@b
    .line 1027
    iput-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    #@d
    .line 1161
    iput-object v2, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@f
    .line 1201
    iput-object v2, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@11
    .line 1357
    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    #@13
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    #@15
    .line 1358
    if-eqz p1, :cond_0

    #@17
    .line 1359
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    #@1d
    .line 1361
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@1f
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #@22
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@24
    .line 1363
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    #@26
    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    #@28
    const/4 v3, 0x1

    #@29
    new-array v3, v3, [Ljava/lang/Object;

    #@2b
    const/high16 v4, 0x400000

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    const/4 v5, 0x0

    #@32
    aput-object v4, v3, v5

    #@34
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 1356
    return-void

    #@38
    .line 1364
    :catch_0
    move-exception v0

    #@39
    .line 1365
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RenderScript_jni"

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1366
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@55
    new-instance v2, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v1
.end method

.method static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1446
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    #@2
    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    #@0
    .prologue
    .line 1499
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1512
    const/16 v2, 0x17

    #@2
    if-ge p1, v2, :cond_0

    #@4
    .line 1513
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 1516
    :cond_0
    sget-object v3, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    #@b
    monitor-enter v3

    #@c
    .line 1517
    :try_start_0
    sget-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "prs$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_2

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/renderscript/RenderScript;

    #@1e
    .line 1518
    .local v0, "prs":Landroid/renderscript/RenderScript;
    iget-object v2, v0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    #@20
    if-ne v2, p2, :cond_1

    #@22
    .line 1519
    iget v2, v0, Landroid/renderscript/RenderScript;->mContextFlags:I

    #@24
    if-ne v2, p3, :cond_1

    #@26
    .line 1520
    iget v2, v0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    if-ne v2, p1, :cond_1

    #@2a
    monitor-exit v3

    #@2b
    .line 1522
    return-object v0

    #@2c
    .line 1526
    .end local v0    # "prs":Landroid/renderscript/RenderScript;
    :cond_2
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    #@2f
    move-result-object v0

    #@30
    .line 1527
    .restart local v0    # "prs":Landroid/renderscript/RenderScript;
    const/4 v2, 0x1

    #@31
    iput-boolean v2, v0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    #@33
    .line 1528
    sget-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v3

    #@39
    .line 1529
    return-object v0

    #@3a
    .line 1516
    .end local v0    # "prs":Landroid/renderscript/RenderScript;
    .end local v1    # "prs$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;

    #@0
    .prologue
    .line 1459
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1484
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v1

    #@4
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    .line 1485
    .local v0, "v":I
    invoke-static {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public static createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I
    .param p3, "API_number"    # I

    #@0
    .prologue
    .line 1574
    invoke-static {p0, p3, p1, p2}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static declared-synchronized getCachePath()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const-class v3, Landroid/renderscript/RenderScript;

    #@2
    monitor-enter v3

    #@3
    .line 1389
    :try_start_0
    sget-object v2, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    #@5
    if-nez v2, :cond_1

    #@7
    .line 1390
    const-string/jumbo v0, "com.android.renderscript.cache"

    #@a
    .line 1391
    .local v0, "CACHE_PATH":Ljava/lang/String;
    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1392
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@10
    const-string/jumbo v4, "RenderScript code cache directory uninitialized."

    #@13
    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :catchall_0
    move-exception v2

    #@18
    monitor-exit v3

    #@19
    throw v2

    #@1a
    .line 1394
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@1c
    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    #@1e
    const-string/jumbo v4, "com.android.renderscript.cache"

    #@21
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@24
    .line 1395
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    sput-object v2, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    #@2a
    .line 1396
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@2d
    .line 1398
    :cond_1
    sget-object v2, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    return-object v2
.end method

.method public static getMinorID()J
    .locals 2

    #@0
    .prologue
    .line 157
    const-wide/16 v0, 0x1

    #@2
    return-wide v0
.end method

.method public static getMinorVersion()J
    .locals 2

    #@0
    .prologue
    .line 169
    const-wide/16 v0, 0x1

    #@2
    return-wide v0
.end method

.method private helpDestroy()V
    .locals 6

    #@0
    .prologue
    .line 1598
    const/4 v3, 0x0

    #@1
    .line 1599
    .local v3, "shouldDestroy":Z
    monitor-enter p0

    #@2
    .line 1600
    :try_start_0
    iget-boolean v4, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1601
    const/4 v3, 0x1

    #@7
    .line 1602
    const/4 v4, 0x1

    #@8
    iput-boolean v4, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 1606
    if-eqz v3, :cond_3

    #@d
    .line 1607
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    #@10
    .line 1609
    iget-wide v4, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@12
    invoke-virtual {p0, v4, v5}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(J)V

    #@15
    .line 1610
    iget-object v4, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    #@17
    const/4 v5, 0x0

    #@18
    iput-boolean v5, v4, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    #@1a
    .line 1614
    const/4 v1, 0x0

    #@1b
    .local v1, "hasJoined":Z
    const/4 v2, 0x0

    #@1c
    .line 1615
    .local v2, "interrupted":Z
    :goto_0
    if-nez v1, :cond_1

    #@1e
    .line 1617
    :try_start_1
    iget-object v4, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    #@20
    invoke-virtual {v4}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@23
    .line 1618
    const/4 v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1599
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :catchall_0
    move-exception v4

    #@26
    monitor-exit p0

    #@27
    throw v4

    #@28
    .line 1619
    .restart local v1    # "hasJoined":Z
    .restart local v2    # "interrupted":Z
    :catch_0
    move-exception v0

    #@29
    .line 1620
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1623
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    if-eqz v2, :cond_2

    #@2d
    .line 1624
    const-string/jumbo v4, "RenderScript_jni"

    #@30
    const-string/jumbo v5, "Interrupted during wait for MessageThread to join"

    #@33
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1625
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    #@3d
    .line 1628
    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    #@40
    .line 1597
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :cond_3
    return-void
.end method

.method private static internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1408
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1409
    const-string/jumbo v0, "RenderScript_jni"

    #@7
    const-string/jumbo v4, "RenderScript.create() called when disabled; someone is likely to crash"

    #@a
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1410
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 1413
    :cond_0
    and-int/lit8 v0, p3, -0xf

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1415
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@15
    const-string/jumbo v4, "Invalid flags passed."

    #@18
    invoke-direct {v0, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1418
    :cond_1
    new-instance v1, Landroid/renderscript/RenderScript;

    #@1e
    invoke-direct {v1, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    #@21
    .line 1420
    .local v1, "rs":Landroid/renderscript/RenderScript;
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nDeviceCreate()J

    #@24
    move-result-wide v2

    #@25
    .line 1421
    .local v2, "device":J
    iget v6, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    #@27
    move v4, p3

    #@28
    move v5, p1

    #@29
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nContextCreate(JIII)J

    #@2c
    move-result-wide v4

    #@2d
    iput-wide v4, v1, Landroid/renderscript/RenderScript;->mContext:J

    #@2f
    .line 1422
    iput-object p2, v1, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    #@31
    .line 1423
    iput p3, v1, Landroid/renderscript/RenderScript;->mContextFlags:I

    #@33
    .line 1424
    iput p1, v1, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    #@35
    .line 1425
    iget-wide v4, v1, Landroid/renderscript/RenderScript;->mContext:J

    #@37
    const-wide/16 v6, 0x0

    #@39
    cmp-long v0, v4, v6

    #@3b
    if-nez v0, :cond_2

    #@3d
    .line 1426
    new-instance v0, Landroid/renderscript/RSDriverException;

    #@3f
    const-string/jumbo v4, "Failed to create RS context."

    #@42
    invoke-direct {v0, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 1430
    :cond_2
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v1, v0}, Landroid/renderscript/RenderScript;->nContextSetCacheDir(Ljava/lang/String;)V

    #@4d
    .line 1432
    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    #@4f
    invoke-direct {v0, v1}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    #@52
    iput-object v0, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    #@54
    .line 1433
    iget-object v0, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    #@56
    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    #@59
    .line 1434
    return-object v1
.end method

.method public static releaseAllContexts()V
    .locals 5

    #@0
    .prologue
    .line 1547
    sget-object v4, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 1548
    :try_start_0
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    #@5
    .line 1549
    .local v0, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/RenderScript;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    sput-object v3, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v4

    #@d
    .line 1552
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "prs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/renderscript/RenderScript;

    #@1d
    .line 1553
    .local v1, "prs":Landroid/renderscript/RenderScript;
    const/4 v3, 0x0

    #@1e
    iput-boolean v3, v1, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    #@20
    .line 1554
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    #@23
    goto :goto_0

    #@24
    .line 1547
    .end local v1    # "prs":Landroid/renderscript/RenderScript;
    .end local v2    # "prs$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v4

    #@26
    throw v3

    #@27
    .line 1556
    .restart local v2    # "prs$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2a
    .line 1545
    return-void
.end method

.method static native rsnSystemGetPointerSize()I
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    #@0
    .prologue
    .line 1584
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 1585
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    #@7
    .line 1583
    return-void
.end method

.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 1649
    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1651
    return-void

    #@5
    .line 1653
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@8
    .line 1654
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    #@b
    .line 1648
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1633
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    #@3
    .line 1634
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 1632
    return-void
.end method

.method public finish()V
    .locals 0

    #@0
    .prologue
    .line 1594
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    #@3
    .line 1593
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 1377
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@2
    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    #@0
    .prologue
    .line 1167
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@2
    return-object v0
.end method

.method isAlive()Z
    .locals 4

    #@0
    .prologue
    .line 1658
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method declared-synchronized nAllocationAdapterCreate(JJ)J
    .locals 9
    .param p1, "allocId"    # J
    .param p3, "typeId"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 670
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 671
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-wide v6, p3

    #@9
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterCreate(JJJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nAllocationAdapterOffset(JIIIIIIIII)V
    .locals 15
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 678
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 679
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide/from16 v4, p1

    #@9
    move/from16 v6, p3

    #@b
    move/from16 v7, p4

    #@d
    move/from16 v8, p5

    #@f
    move/from16 v9, p6

    #@11
    move/from16 v10, p7

    #@13
    move/from16 v11, p8

    #@15
    move/from16 v12, p9

    #@17
    move/from16 v13, p10

    #@19
    move/from16 v14, p11

    #@1b
    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterOffset(JJIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 677
    return-void

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 530
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 531
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 529
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 476
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 477
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 475
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 454
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 455
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    move v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .locals 7
    .param p1, "type"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 466
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)J
    .locals 7
    .param p1, "mips"    # I
    .param p2, "assetStream"    # I
    .param p3, "usage"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 470
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 471
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move v4, p1

    #@8
    move v5, p2

    #@9
    move v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(JIII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 448
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 449
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    move v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(JIIJ)J
    .locals 11
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "usage"    # I
    .param p5, "pointer"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 443
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 444
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move v7, p4

    #@a
    move-wide/from16 v8, p5

    #@c
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-wide v0

    #@10
    monitor-exit p0

    #@11
    return-wide v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 460
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 461
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    move v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 17
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 539
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 540
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v0, p8

    #@a
    iget v13, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c
    move-object/from16 v3, p0

    #@e
    move-wide/from16 v6, p1

    #@10
    move/from16 v8, p3

    #@12
    move/from16 v9, p4

    #@14
    move/from16 v10, p5

    #@16
    move-object/from16 v11, p6

    #@18
    move/from16 v12, p7

    #@1a
    move/from16 v14, p9

    #@1c
    move/from16 v15, p10

    #@1e
    invoke-virtual/range {v3 .. v15}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 538
    return-void

    #@23
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .locals 21
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 560
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 561
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v3, p0

    #@a
    move-wide/from16 v6, p1

    #@c
    move/from16 v8, p3

    #@e
    move/from16 v9, p4

    #@10
    move/from16 v10, p5

    #@12
    move/from16 v11, p6

    #@14
    move/from16 v12, p7

    #@16
    move/from16 v13, p8

    #@18
    move-wide/from16 v14, p9

    #@1a
    move/from16 v16, p11

    #@1c
    move/from16 v17, p12

    #@1e
    move/from16 v18, p13

    #@20
    move/from16 v19, p14

    #@22
    invoke-virtual/range {v3 .. v19}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 559
    return-void

    #@27
    :catchall_0
    move-exception v2

    #@28
    monitor-exit p0

    #@29
    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 19
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 575
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 576
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v0, p11

    #@a
    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c
    move/from16 v16, v0

    #@e
    move-object/from16 v3, p0

    #@10
    move-wide/from16 v6, p1

    #@12
    move/from16 v8, p3

    #@14
    move/from16 v9, p4

    #@16
    move/from16 v10, p5

    #@18
    move/from16 v11, p6

    #@1a
    move/from16 v12, p7

    #@1c
    move/from16 v13, p8

    #@1e
    move-object/from16 v14, p9

    #@20
    move/from16 v15, p10

    #@22
    move/from16 v17, p12

    #@24
    move/from16 v18, p13

    #@26
    invoke-virtual/range {v3 .. v18}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 574
    return-void

    #@2b
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit p0

    #@2d
    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 581
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 582
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move v7, p4

    #@a
    move/from16 v8, p5

    #@c
    move/from16 v9, p6

    #@e
    move-object/from16 v10, p7

    #@10
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 580
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .locals 21
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 596
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 597
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v3, p0

    #@a
    move-wide/from16 v6, p1

    #@c
    move/from16 v8, p3

    #@e
    move/from16 v9, p4

    #@10
    move/from16 v10, p5

    #@12
    move/from16 v11, p6

    #@14
    move/from16 v12, p7

    #@16
    move/from16 v13, p8

    #@18
    move/from16 v14, p9

    #@1a
    move-wide/from16 v15, p10

    #@1c
    move/from16 v17, p12

    #@1e
    move/from16 v18, p13

    #@20
    move/from16 v19, p14

    #@22
    move/from16 v20, p15

    #@24
    invoke-virtual/range {v3 .. v20}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 595
    return-void

    #@29
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit p0

    #@2b
    throw v2
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 21
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 609
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 610
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    .line 611
    move-object/from16 v0, p12

    #@a
    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c
    move/from16 v17, v0

    #@e
    move-object/from16 v3, p0

    #@10
    move-wide/from16 v6, p1

    #@12
    move/from16 v8, p3

    #@14
    move/from16 v9, p4

    #@16
    move/from16 v10, p5

    #@18
    move/from16 v11, p6

    #@1a
    move/from16 v12, p7

    #@1c
    move/from16 v13, p8

    #@1e
    move/from16 v14, p9

    #@20
    move-object/from16 v15, p10

    #@22
    move/from16 v16, p11

    #@24
    move/from16 v18, p13

    #@26
    move/from16 v19, p14

    #@28
    .line 610
    invoke-virtual/range {v3 .. v19}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 608
    return-void

    #@2d
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit p0

    #@2f
    throw v2
.end method

.method declared-synchronized nAllocationElementData(JIIIII[BI)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "compIdx"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 546
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move/from16 v6, p3

    #@a
    move/from16 v7, p4

    #@c
    move/from16 v8, p5

    #@e
    move/from16 v9, p6

    #@10
    move/from16 v10, p7

    #@12
    move-object/from16 v11, p8

    #@14
    move/from16 v12, p9

    #@16
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementData(JJIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 544
    return-void

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method declared-synchronized nAllocationElementRead(JIIIII[BI)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "compIdx"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 632
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 633
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move/from16 v6, p3

    #@a
    move/from16 v7, p4

    #@c
    move/from16 v8, p5

    #@e
    move/from16 v9, p6

    #@10
    move/from16 v10, p7

    #@12
    move-object/from16 v11, p8

    #@14
    move/from16 v12, p9

    #@16
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementRead(JJIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 631
    return-void

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(J)V
    .locals 3
    .param p1, "alloc"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 525
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 526
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 524
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "alloc"    # J
    .param p3, "stride"    # [J
    .param p4, "xBytesSize"    # I
    .param p5, "dimY"    # I
    .param p6, "dimZ"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 488
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 489
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    move v7, p4

    #@a
    move/from16 v8, p5

    #@c
    move/from16 v9, p6

    #@e
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    monitor-exit p0

    #@13
    return-object v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method declared-synchronized nAllocationGetSurface(J)Landroid/view/Surface;
    .locals 3
    .param p1, "alloc"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 504
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 505
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(JJ)Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nAllocationGetType(J)J
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 658
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 659
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nAllocationIoReceive(J)J
    .locals 3
    .param p1, "alloc"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 519
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 520
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nAllocationIoSend(J)V
    .locals 3
    .param p1, "alloc"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 514
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 515
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 513
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "d"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "mSize"    # I
    .param p6, "usePadding"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 616
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 617
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    iget v7, p4, Landroid/renderscript/Element$DataType;->mID:I

    #@8
    move-object v1, p0

    #@9
    move-wide v4, p1

    #@a
    move-object v6, p3

    #@b
    move/from16 v8, p5

    #@d
    move/from16 v9, p6

    #@f
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 615
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 17
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 624
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 625
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v0, p8

    #@a
    iget v13, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c
    move-object/from16 v3, p0

    #@e
    move-wide/from16 v6, p1

    #@10
    move/from16 v8, p3

    #@12
    move/from16 v9, p4

    #@14
    move/from16 v10, p5

    #@16
    move-object/from16 v11, p6

    #@18
    move/from16 v12, p7

    #@1a
    move/from16 v14, p9

    #@1c
    move/from16 v15, p10

    #@1e
    invoke-virtual/range {v3 .. v15}, Landroid/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 623
    return-void

    #@23
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 19
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 642
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 643
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v0, p11

    #@a
    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c
    move/from16 v16, v0

    #@e
    move-object/from16 v3, p0

    #@10
    move-wide/from16 v6, p1

    #@12
    move/from16 v8, p3

    #@14
    move/from16 v9, p4

    #@16
    move/from16 v10, p5

    #@18
    move/from16 v11, p6

    #@1a
    move/from16 v12, p7

    #@1c
    move/from16 v13, p8

    #@1e
    move-object/from16 v14, p9

    #@20
    move/from16 v15, p10

    #@22
    move/from16 v17, p12

    #@24
    move/from16 v18, p13

    #@26
    invoke-virtual/range {v3 .. v18}, Landroid/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 641
    return-void

    #@2b
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit p0

    #@2d
    throw v2
.end method

.method declared-synchronized nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 21
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 652
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 653
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v0, p12

    #@a
    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    #@c
    move/from16 v17, v0

    #@e
    move-object/from16 v3, p0

    #@10
    move-wide/from16 v6, p1

    #@12
    move/from16 v8, p3

    #@14
    move/from16 v9, p4

    #@16
    move/from16 v10, p5

    #@18
    move/from16 v11, p6

    #@1a
    move/from16 v12, p7

    #@1c
    move/from16 v13, p8

    #@1e
    move/from16 v14, p9

    #@20
    move-object/from16 v15, p10

    #@22
    move/from16 v16, p11

    #@24
    move/from16 v18, p13

    #@26
    move/from16 v19, p14

    #@28
    invoke-virtual/range {v3 .. v19}, Landroid/renderscript/RenderScript;->rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 651
    return-void

    #@2d
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit p0

    #@2f
    throw v2
.end method

.method declared-synchronized nAllocationResize1D(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "dimX"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 664
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 665
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 663
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "sur"    # Landroid/view/Surface;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 509
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 510
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 508
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAllocationSetupBufferQueue(JI)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "numAlloc"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 494
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 495
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSetupBufferQueue(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 493
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAllocationShareBufferQueue(JJ)V
    .locals 9
    .param p1, "alloc1"    # J
    .param p3, "alloc2"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 499
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 500
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-wide v6, p3

    #@9
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationShareBufferQueue(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 498
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(JI)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "src"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 482
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 483
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 481
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nAssignName(J[B)V
    .locals 7
    .param p1, "obj"    # J
    .param p3, "name"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 388
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 389
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAssignName(JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 387
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .locals 19
    .param p1, "kernelID"    # J
    .param p3, "returnValue"    # J
    .param p5, "fieldIDs"    # [J
    .param p6, "values"    # [J
    .param p7, "sizes"    # [I
    .param p8, "depClosures"    # [J
    .param p9, "depFieldIDs"    # [J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 329
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 330
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v3, p0

    #@a
    move-wide/from16 v6, p1

    #@c
    move-wide/from16 v8, p3

    #@e
    move-object/from16 v10, p5

    #@10
    move-object/from16 v11, p6

    #@12
    move-object/from16 v12, p7

    #@14
    move-object/from16 v13, p8

    #@16
    move-object/from16 v14, p9

    #@18
    invoke-virtual/range {v3 .. v14}, Landroid/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    #@1b
    move-result-wide v16

    #@1c
    .line 332
    .local v16, "c":J
    const-wide/16 v2, 0x0

    #@1e
    cmp-long v2, v16, v2

    #@20
    if-nez v2, :cond_0

    #@22
    .line 333
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@24
    const-string/jumbo v3, "Failed creating closure."

    #@27
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .end local v16    # "c":J
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit p0

    #@2d
    throw v2

    #@2e
    .restart local v16    # "c":J
    :cond_0
    monitor-exit p0

    #@2f
    .line 335
    return-wide v16
.end method

.method declared-synchronized nClosureSetArg(JIJI)V
    .locals 10
    .param p1, "closureID"    # J
    .param p3, "index"    # I
    .param p4, "value"    # J
    .param p6, "size"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 355
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 356
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    move/from16 v9, p6

    #@c
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 354
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nClosureSetGlobal(JJJI)V
    .locals 11
    .param p1, "closureID"    # J
    .param p3, "fieldID"    # J
    .param p5, "value"    # J
    .param p7, "size"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 364
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 365
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-wide v6, p3

    #@9
    move-wide/from16 v8, p5

    #@b
    move/from16 v10, p7

    #@d
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 363
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method declared-synchronized nContextBindProgramFragment(J)V
    .locals 3
    .param p1, "pf"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 300
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 298
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextBindProgramRaster(J)V
    .locals 3
    .param p1, "pr"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 309
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 310
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 308
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextBindProgramStore(J)V
    .locals 3
    .param p1, "pfs"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 294
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 295
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 293
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextBindProgramVertex(J)V
    .locals 3
    .param p1, "pv"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 304
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 305
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 303
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextBindRootScript(J)V
    .locals 3
    .param p1, "script"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 285
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 283
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextBindSampler(II)V
    .locals 2
    .param p1, "sampler"    # I
    .param p2, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 290
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 288
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextCreate(JIII)J
    .locals 3
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "contextType"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 227
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/RenderScript;->rsnContextCreate(JIII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-wide v0

    #@5
    monitor-exit p0

    #@6
    return-wide v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method declared-synchronized nContextCreateGL(JIIIIIIIIIIIIFI)J
    .locals 3
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 220
    :try_start_0
    invoke-virtual/range {p0 .. p16}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(JIIIIIIIIIIIIFI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-wide v0

    #@5
    monitor-exit p0

    #@6
    return-wide v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method native nContextDeinitToClient(J)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 231
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 235
    iget-object v3, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@9
    move-result-object v2

    #@a
    .line 236
    .local v2, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@d
    .line 238
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@f
    .line 240
    .local v0, "curCon":J
    const-wide/16 v4, 0x0

    #@11
    iput-wide v4, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@13
    .line 242
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@16
    .line 243
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 230
    return-void

    #@1b
    .end local v0    # "curCon":J
    .end local v2    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit p0

    #@1d
    throw v3
.end method

.method declared-synchronized nContextDump(I)V
    .locals 2
    .param p1, "bits"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 267
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 268
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 266
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 272
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 273
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 271
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(J[I)I
.end method

.method native nContextInitToClient(J)V
.end method

.method declared-synchronized nContextPause()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 314
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 315
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextPause(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 313
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method native nContextPeekMessage(J[I)I
.end method

.method declared-synchronized nContextResume()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 320
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextResume(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 318
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "data"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 279
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 277
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextSetCacheDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 262
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 263
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetCacheDir(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 261
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 2
    .param p1, "p"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 257
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 258
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 256
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 247
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 248
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move v4, p1

    #@8
    move v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(JIILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 246
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 253
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move v4, p1

    #@8
    move v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 251
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method native nDeviceCreate()J
.end method

.method native nDeviceDestroy(J)V
.end method

.method native nDeviceSetConfig(JII)V
.end method

.method declared-synchronized nElementCreate(JIZI)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "kind"    # I
    .param p4, "norm"    # Z
    .param p5, "vecSize"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 410
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 411
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move v7, p4

    #@a
    move v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnElementCreate(JJIZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 7
    .param p1, "elements"    # [J
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 415
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 416
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nElementGetNativeData(J[I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "elementData"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 420
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 421
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 419
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "IDs"    # [J
    .param p4, "names"    # [Ljava/lang/String;
    .param p5, "arraySizes"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 426
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 427
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    move-object v7, p4

    #@a
    move-object v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 425
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .locals 2
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 694
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 695
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAssetStream(J)J
    .locals 3
    .param p1, "assetStream"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 684
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 685
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 689
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 690
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(JLjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nFileA3DGetEntryByIndex(JI)J
    .locals 7
    .param p1, "fileA3D"    # J
    .param p3, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 709
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 710
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(JJI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V
    .locals 9
    .param p1, "fileA3D"    # J
    .param p3, "numEntries"    # I
    .param p4, "IDs"    # [I
    .param p5, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 704
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 705
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    move-object v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 703
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nFileA3DGetNumIndexEntries(J)I
    .locals 3
    .param p1, "fileA3D"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 699
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 700
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J
    .locals 8
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "dpi"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 725
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 726
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move v6, p3

    #@a
    move v7, p4

    #@b
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I
    .param p4, "assetStream"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 720
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 721
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v0, p0

    #@7
    move-object v3, p1

    #@8
    move v4, p2

    #@9
    move v5, p3

    #@a
    move-wide v6, p4

    #@b
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)J
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 715
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 716
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move v5, p2

    #@9
    move v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(JLjava/lang/String;FI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nGetName(J)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 393
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 394
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnGetName(JJ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .locals 13
    .param p1, "invokeID"    # J
    .param p3, "params"    # [B
    .param p4, "fieldIDs"    # [J
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 343
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object/from16 v6, p3

    #@a
    move-object/from16 v7, p4

    #@c
    move-object/from16 v8, p5

    #@e
    move-object/from16 v9, p6

    #@10
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    #@13
    move-result-wide v10

    #@14
    .line 345
    .local v10, "c":J
    const-wide/16 v0, 0x0

    #@16
    cmp-long v0, v10, v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 346
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@1c
    const-string/jumbo v1, "Failed creating closure."

    #@1f
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .end local v10    # "c":J
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0

    #@26
    .restart local v10    # "c":J
    :cond_0
    monitor-exit p0

    #@27
    .line 348
    return-wide v10
.end method

.method declared-synchronized nMeshCreate([J[J[I)J
    .locals 7
    .param p1, "vtx"    # [J
    .param p2, "idx"    # [J
    .param p3, "prim"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 942
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 943
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnMeshCreate(J[J[J[I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nMeshGetIndexCount(J)I
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 952
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 953
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nMeshGetIndices(J[J[II)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "idxIds"    # [J
    .param p4, "primitives"    # [I
    .param p5, "vtxIdCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 962
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 963
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    move-object v7, p4

    #@a
    move v8, p5

    #@b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(JJ[J[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 961
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nMeshGetVertexBufferCount(J)I
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 947
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 948
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nMeshGetVertices(J[JI)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "vtxIds"    # [J
    .param p4, "vtxIdCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 957
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 958
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    move v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(JJ[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 956
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method nObjDestroy(J)V
    .locals 5
    .param p1, "id"    # J

    #@0
    .prologue
    .line 403
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 404
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@a
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    #@d
    .line 399
    :cond_0
    return-void
.end method

.method declared-synchronized nProgramBindConstants(JIJ)V
    .locals 9
    .param p1, "pv"    # J
    .param p3, "slot"    # I
    .param p4, "mID"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 916
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 917
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 915
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nProgramBindSampler(JIJ)V
    .locals 9
    .param p1, "vpf"    # J
    .param p3, "slot"    # I
    .param p4, "s"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 926
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 927
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 925
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nProgramBindTexture(JIJ)V
    .locals 9
    .param p1, "vpf"    # J
    .param p3, "slot"    # I
    .param p4, "a"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 921
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 922
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 920
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 7
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 931
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 932
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nProgramRasterCreate(ZI)J
    .locals 2
    .param p1, "pointSprite"    # Z
    .param p2, "cullMode"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 910
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 911
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(JZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized nProgramStoreCreate(ZZZZZZIII)J
    .locals 13
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z
    .param p5, "depthMask"    # Z
    .param p6, "dither"    # Z
    .param p7, "srcMode"    # I
    .param p8, "dstMode"    # I
    .param p9, "depthFunc"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 903
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 904
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move v4, p1

    #@8
    move v5, p2

    #@9
    move/from16 v6, p3

    #@b
    move/from16 v7, p4

    #@d
    move/from16 v8, p5

    #@f
    move/from16 v9, p6

    #@11
    move/from16 v10, p7

    #@13
    move/from16 v11, p8

    #@15
    move/from16 v12, p9

    #@17
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(JZZZZZZIII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-wide v0

    #@1b
    monitor-exit p0

    #@1c
    return-wide v0

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method declared-synchronized nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 7
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 936
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 937
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)J
    .locals 10
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 893
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 894
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move v4, p1

    #@8
    move v5, p2

    #@9
    move v6, p3

    #@a
    move v7, p4

    #@b
    move v8, p5

    #@c
    move/from16 v9, p6

    #@e
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-wide v0

    #@12
    monitor-exit p0

    #@13
    return-wide v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(JJI)V
    .locals 9
    .param p1, "script"    # J
    .param p3, "alloc"    # J
    .param p5, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 732
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 733
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-wide v6, p3

    #@9
    move v8, p5

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(JJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 731
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 8
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 837
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 838
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    move v7, p4

    #@b
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-wide v0

    #@f
    monitor-exit p0

    #@10
    return-wide v0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized nScriptFieldIDCreate(JI)J
    .locals 7
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 861
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 862
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptForEach(JI[JJ[B[I)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "params"    # [B
    .param p8, "limits"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 751
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 752
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move/from16 v6, p3

    #@a
    move-object/from16 v7, p4

    #@c
    move-wide/from16 v8, p5

    #@e
    move-object/from16 v10, p7

    #@10
    move-object/from16 v11, p8

    #@12
    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 750
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method declared-synchronized nScriptGetVarD(JI)D
    .locals 7
    .param p1, "id"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 808
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 809
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(JJI)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptGetVarF(JI)F
    .locals 7
    .param p1, "id"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 798
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 799
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(JJI)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit p0

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptGetVarI(JI)I
    .locals 7
    .param p1, "id"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 776
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 777
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(JJI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit p0

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptGetVarJ(JI)J
    .locals 7
    .param p1, "id"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 787
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 788
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(JJI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptGetVarV(JI[B)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 818
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 819
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 817
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cachePath"    # Ljava/lang/String;
    .param p3, "closures"    # [J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 372
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 373
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    #@d
    move-result-wide v8

    #@e
    .line 374
    .local v8, "g":J
    const-wide/16 v0, 0x0

    #@10
    cmp-long v0, v8, v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 375
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@16
    const-string/jumbo v1, "Failed creating script group."

    #@19
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .end local v8    # "g":J
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0

    #@20
    .restart local v8    # "g":J
    :cond_0
    monitor-exit p0

    #@21
    .line 377
    return-wide v8
.end method

.method declared-synchronized nScriptGroup2Execute(J)V
    .locals 3
    .param p1, "groupID"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 383
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 381
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .locals 9
    .param p1, "kernels"    # [J
    .param p2, "src"    # [J
    .param p3, "dstk"    # [J
    .param p4, "dstf"    # [J
    .param p5, "types"    # [J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 867
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 868
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move-object v5, p2

    #@9
    move-object v6, p3

    #@a
    move-object v7, p4

    #@b
    move-object v8, p5

    #@c
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-wide v0

    #@10
    monitor-exit p0

    #@11
    return-wide v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method declared-synchronized nScriptGroupExecute(J)V
    .locals 3
    .param p1, "group"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 885
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 886
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 884
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized nScriptGroupSetInput(JJJ)V
    .locals 11
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 873
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 874
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-wide v6, p3

    #@9
    move-wide/from16 v8, p5

    #@b
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 872
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nScriptGroupSetOutput(JJJ)V
    .locals 11
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 879
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 880
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-wide v6, p3

    #@9
    move-wide/from16 v8, p5

    #@b
    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 878
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V
    .locals 21
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1020
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 1021
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v3, p0

    #@a
    move-wide/from16 v6, p1

    #@c
    move/from16 v8, p3

    #@e
    move/from16 v9, p4

    #@10
    move/from16 v10, p5

    #@12
    move-wide/from16 v11, p6

    #@14
    move/from16 v13, p8

    #@16
    move-wide/from16 v14, p9

    #@18
    move/from16 v16, p11

    #@1a
    move-wide/from16 v17, p12

    #@1c
    move/from16 v19, p14

    #@1e
    move/from16 v20, p15

    #@20
    invoke-virtual/range {v3 .. v20}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 1019
    return-void

    #@25
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V
    .locals 30
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 998
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 999
    move-object/from16 v0, p0

    #@6
    iget-wide v3, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v2, p0

    #@a
    move-wide/from16 v5, p1

    #@c
    move/from16 v7, p3

    #@e
    move/from16 v8, p4

    #@10
    move/from16 v9, p5

    #@12
    move/from16 v10, p6

    #@14
    move/from16 v11, p7

    #@16
    move/from16 v12, p8

    #@18
    move/from16 v13, p9

    #@1a
    move/from16 v14, p10

    #@1c
    move/from16 v15, p11

    #@1e
    move/from16 v16, p12

    #@20
    move/from16 v17, p13

    #@22
    move-wide/from16 v18, p14

    #@24
    move-wide/from16 v20, p16

    #@26
    move/from16 v22, p18

    #@28
    move/from16 v23, p19

    #@2a
    move-wide/from16 v24, p20

    #@2c
    move/from16 v26, p22

    #@2e
    move/from16 v27, p23

    #@30
    move/from16 v28, p24

    #@32
    move/from16 v29, p25

    #@34
    invoke-virtual/range {v2 .. v29}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 997
    return-void

    #@39
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit p0

    #@3b
    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V
    .locals 30
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 986
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 987
    move-object/from16 v0, p0

    #@6
    iget-wide v3, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v2, p0

    #@a
    move-wide/from16 v5, p1

    #@c
    move/from16 v7, p3

    #@e
    move/from16 v8, p4

    #@10
    move/from16 v9, p5

    #@12
    move/from16 v10, p6

    #@14
    move/from16 v11, p7

    #@16
    move/from16 v12, p8

    #@18
    move/from16 v13, p9

    #@1a
    move/from16 v14, p10

    #@1c
    move/from16 v15, p11

    #@1e
    move-wide/from16 v16, p12

    #@20
    move-wide/from16 v18, p14

    #@22
    move-wide/from16 v20, p16

    #@24
    move-wide/from16 v22, p18

    #@26
    move-wide/from16 v24, p20

    #@28
    move/from16 v26, p22

    #@2a
    move/from16 v27, p23

    #@2c
    move/from16 v28, p24

    #@2e
    move/from16 v29, p25

    #@30
    invoke-virtual/range {v2 .. v29}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 985
    return-void

    #@35
    :catchall_0
    move-exception v2

    #@36
    monitor-exit p0

    #@37
    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V
    .locals 29
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 974
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 975
    move-object/from16 v0, p0

    #@6
    iget-wide v4, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v3, p0

    #@a
    move-wide/from16 v6, p1

    #@c
    move/from16 v8, p3

    #@e
    move/from16 v9, p4

    #@10
    move/from16 v10, p5

    #@12
    move/from16 v11, p6

    #@14
    move/from16 v12, p7

    #@16
    move/from16 v13, p8

    #@18
    move/from16 v14, p9

    #@1a
    move/from16 v15, p10

    #@1c
    move/from16 v16, p11

    #@1e
    move/from16 v17, p12

    #@20
    move-wide/from16 v18, p13

    #@22
    move-wide/from16 v20, p15

    #@24
    move/from16 v22, p17

    #@26
    move-wide/from16 v23, p18

    #@28
    move/from16 v25, p20

    #@2a
    move/from16 v26, p21

    #@2c
    move/from16 v27, p22

    #@2e
    move/from16 v28, p23

    #@30
    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 973
    return-void

    #@35
    :catchall_0
    move-exception v2

    #@36
    monitor-exit p0

    #@37
    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V
    .locals 34
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

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1010
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 1011
    move-object/from16 v0, p0

    #@6
    iget-wide v3, v0, Landroid/renderscript/RenderScript;->mContext:J

    #@8
    move-object/from16 v2, p0

    #@a
    move-wide/from16 v5, p1

    #@c
    move/from16 v7, p3

    #@e
    move/from16 v8, p4

    #@10
    move/from16 v9, p5

    #@12
    move/from16 v10, p6

    #@14
    move/from16 v11, p7

    #@16
    move/from16 v12, p8

    #@18
    move/from16 v13, p9

    #@1a
    move/from16 v14, p10

    #@1c
    move/from16 v15, p11

    #@1e
    move-wide/from16 v16, p12

    #@20
    move-wide/from16 v18, p14

    #@22
    move-wide/from16 v20, p16

    #@24
    move-wide/from16 v22, p18

    #@26
    move-wide/from16 v24, p20

    #@28
    move-wide/from16 v26, p22

    #@2a
    move-wide/from16 v28, p24

    #@2c
    move/from16 v30, p26

    #@2e
    move/from16 v31, p27

    #@30
    move/from16 v32, p28

    #@32
    move/from16 v33, p29

    #@34
    invoke-virtual/range {v2 .. v33}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 1009
    return-void

    #@39
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit p0

    #@3b
    throw v2
.end method

.method declared-synchronized nScriptIntrinsicCreate(IJ)J
    .locals 6
    .param p1, "id"    # I
    .param p2, "eid"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 843
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 844
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v0, p0

    #@7
    move v3, p1

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptInvoke(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 742
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 743
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 741
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nScriptInvokeIDCreate(JI)J
    .locals 7
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 855
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 856
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v0

    #@d
    monitor-exit p0

    #@e
    return-wide v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptInvokeV(JI[B)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "params"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 765
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 766
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 764
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptKernelIDCreate(JII)J
    .locals 9
    .param p1, "sid"    # J
    .param p3, "slot"    # I
    .param p4, "sig"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 849
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 850
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v0

    #@e
    monitor-exit p0

    #@f
    return-wide v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method declared-synchronized nScriptReduce(JI[JJ[I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "limits"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 759
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 760
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    move-wide/from16 v8, p5

    #@c
    move-object/from16 v10, p7

    #@e
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 758
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(J[B)V
    .locals 7
    .param p1, "script"    # J
    .param p3, "timeZone"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 737
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 738
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 736
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized nScriptSetVarD(JID)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # D

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 803
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 804
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(JJID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 802
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptSetVarF(JIF)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # F

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 793
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 794
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(JJIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 792
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptSetVarI(JII)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 771
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 772
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 770
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(JIJ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 782
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 783
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 781
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(JIJ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 830
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 831
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-wide v7, p4

    #@a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 829
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptSetVarV(JI[B)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 813
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 814
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 812
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method declared-synchronized nScriptSetVarVE(JI[BJ[I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B
    .param p5, "e"    # J
    .param p7, "dims"    # [I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 825
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 826
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move v6, p3

    #@9
    move-object v7, p4

    #@a
    move-wide/from16 v8, p5

    #@c
    move-object/from16 v10, p7

    #@e
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 824
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method declared-synchronized nTypeCreate(JIIIZZI)J
    .locals 13
    .param p1, "eid"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mips"    # Z
    .param p7, "faces"    # Z
    .param p8, "yuv"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 432
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 433
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move/from16 v6, p3

    #@a
    move/from16 v7, p4

    #@c
    move/from16 v8, p5

    #@e
    move/from16 v9, p6

    #@10
    move/from16 v10, p7

    #@12
    move/from16 v11, p8

    #@14
    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-wide v0

    #@18
    monitor-exit p0

    #@19
    return-wide v0

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(J[J)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "typeData"    # [J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 437
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@4
    .line 438
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 436
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method native rsnAllocationAdapterCreate(JJJ)J
.end method

.method native rsnAllocationAdapterOffset(JJIIIIIIIII)V
.end method

.method native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationElementData(JJIIIII[BI)V
.end method

.method native rsnAllocationElementRead(JJIIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;
.end method

.method native rsnAllocationGetSurface(JJ)Landroid/view/Surface;
.end method

.method native rsnAllocationGetType(JJ)J
.end method

.method native rsnAllocationIoReceive(JJ)J
.end method

.method native rsnAllocationIoSend(JJ)V
.end method

.method native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationResize1D(JJI)V
.end method

.method native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native rsnAllocationSetupBufferQueue(JJI)V
.end method

.method native rsnAllocationShareBufferQueue(JJJ)V
.end method

.method native rsnAllocationSyncAll(JJI)V
.end method

.method native rsnAssignName(JJ[B)V
.end method

.method native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native rsnClosureSetArg(JJIJI)V
.end method

.method native rsnClosureSetGlobal(JJJJI)V
.end method

.method native rsnContextBindProgramFragment(JJ)V
.end method

.method native rsnContextBindProgramRaster(JJ)V
.end method

.method native rsnContextBindProgramStore(JJ)V
.end method

.method native rsnContextBindProgramVertex(JJ)V
.end method

.method native rsnContextBindRootScript(JJ)V
.end method

.method native rsnContextBindSampler(JII)V
.end method

.method native rsnContextCreate(JIII)J
.end method

.method native rsnContextCreateGL(JIIIIIIIIIIIIFI)J
.end method

.method native rsnContextDestroy(J)V
.end method

.method native rsnContextDump(JI)V
.end method

.method native rsnContextFinish(J)V
.end method

.method native rsnContextPause(J)V
.end method

.method native rsnContextResume(J)V
.end method

.method native rsnContextSendMessage(JI[I)V
.end method

.method native rsnContextSetCacheDir(JLjava/lang/String;)V
.end method

.method native rsnContextSetPriority(JI)V
.end method

.method native rsnContextSetSurface(JIILandroid/view/Surface;)V
.end method

.method native rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
.end method

.method native rsnElementCreate(JJIZI)J
.end method

.method native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native rsnElementGetNativeData(JJ[I)V
.end method

.method native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method native rsnFileA3DCreateFromAssetStream(JJ)J
.end method

.method native rsnFileA3DCreateFromFile(JLjava/lang/String;)J
.end method

.method native rsnFileA3DGetEntryByIndex(JJI)J
.end method

.method native rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DGetNumIndexEntries(JJ)I
.end method

.method native rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
.end method

.method native rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
.end method

.method native rsnFontCreateFromFile(JLjava/lang/String;FI)J
.end method

.method native rsnGetName(JJ)Ljava/lang/String;
.end method

.method native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native rsnMeshCreate(J[J[J[I)J
.end method

.method native rsnMeshGetIndexCount(JJ)I
.end method

.method native rsnMeshGetIndices(JJ[J[II)V
.end method

.method native rsnMeshGetVertexBufferCount(JJ)I
.end method

.method native rsnMeshGetVertices(JJ[JI)V
.end method

.method native rsnObjDestroy(JJ)V
.end method

.method native rsnProgramBindConstants(JJIJ)V
.end method

.method native rsnProgramBindSampler(JJIJ)V
.end method

.method native rsnProgramBindTexture(JJIJ)V
.end method

.method native rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native rsnProgramRasterCreate(JZI)J
.end method

.method native rsnProgramStoreCreate(JZZZZZZIII)J
.end method

.method native rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native rsnSamplerCreate(JIIIIIF)J
.end method

.method native rsnScriptBindAllocation(JJJI)V
.end method

.method native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native rsnScriptFieldIDCreate(JJI)J
.end method

.method native rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native rsnScriptGetVarD(JJI)D
.end method

.method native rsnScriptGetVarF(JJI)F
.end method

.method native rsnScriptGetVarI(JJI)I
.end method

.method native rsnScriptGetVarJ(JJI)J
.end method

.method native rsnScriptGetVarV(JJI[B)V
.end method

.method native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native rsnScriptGroup2Execute(JJ)V
.end method

.method native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native rsnScriptGroupExecute(JJ)V
.end method

.method native rsnScriptGroupSetInput(JJJJ)V
.end method

.method native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
.end method

.method native rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
.end method

.method native rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
.end method

.method native rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
.end method

.method native rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
.end method

.method native rsnScriptIntrinsicCreate(JIJ)J
.end method

.method native rsnScriptInvoke(JJI)V
.end method

.method native rsnScriptInvokeIDCreate(JJI)J
.end method

.method native rsnScriptInvokeV(JJI[B)V
.end method

.method native rsnScriptKernelIDCreate(JJII)J
.end method

.method native rsnScriptReduce(JJI[JJ[I)V
.end method

.method native rsnScriptSetTimeZone(JJ[B)V
.end method

.method native rsnScriptSetVarD(JJID)V
.end method

.method native rsnScriptSetVarF(JJIF)V
.end method

.method native rsnScriptSetVarI(JJII)V
.end method

.method native rsnScriptSetVarJ(JJIJ)V
.end method

.method native rsnScriptSetVarObj(JJIJ)V
.end method

.method native rsnScriptSetVarV(JJI[B)V
.end method

.method native rsnScriptSetVarVE(JJI[BJ[I)V
.end method

.method native rsnTypeCreate(JJIIIZZI)J
.end method

.method native rsnTypeGetNativeData(JJ[J)V
.end method

.method safeID(Landroid/renderscript/BaseObj;)J
    .locals 2
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    #@0
    .prologue
    .line 1662
    if-eqz p1, :cond_0

    #@2
    .line 1663
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0

    #@7
    .line 1665
    :cond_0
    const-wide/16 v0, 0x0

    #@9
    return-wide v0
.end method

.method public sendMessage(I[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "data"    # [I

    #@0
    .prologue
    .line 1178
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    #@3
    .line 1177
    return-void
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSErrorHandler;

    #@0
    .prologue
    .line 1204
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@2
    .line 1203
    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSMessageHandler;

    #@0
    .prologue
    .line 1164
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@2
    .line 1163
    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 1
    .param p1, "p"    # Landroid/renderscript/RenderScript$Priority;

    #@0
    .prologue
    .line 1248
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    #@3
    .line 1249
    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    #@5
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    #@8
    .line 1247
    return-void
.end method

.method validate()V
    .locals 4

    #@0
    .prologue
    .line 1236
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1237
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    #@a
    const-string/jumbo v1, "Calling RS with no Context active."

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1235
    :cond_0
    return-void
.end method

.method validateObject(Landroid/renderscript/BaseObj;)V
    .locals 2
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    #@0
    .prologue
    .line 1228
    if-eqz p1, :cond_0

    #@2
    .line 1229
    iget-object v0, p1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    #@4
    if-eq v0, p0, :cond_0

    #@6
    .line 1230
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@8
    const-string/jumbo v1, "Attempting to use an object across contexts."

    #@b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1227
    :cond_0
    return-void
.end method
