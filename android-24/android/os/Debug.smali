.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field public static final MEMINFO_BUFFERS:I = 0x2

.field public static final MEMINFO_CACHED:I = 0x3

.field public static final MEMINFO_COUNT:I = 0xd

.field public static final MEMINFO_FREE:I = 0x1

.field public static final MEMINFO_KERNEL_STACK:I = 0xc

.field public static final MEMINFO_MAPPED:I = 0x9

.field public static final MEMINFO_PAGE_TABLES:I = 0xb

.field public static final MEMINFO_SHMEM:I = 0x4

.field public static final MEMINFO_SLAB:I = 0x5

.field public static final MEMINFO_SWAP_FREE:I = 0x7

.field public static final MEMINFO_SWAP_TOTAL:I = 0x6

.field public static final MEMINFO_TOTAL:I = 0x0

.field public static final MEMINFO_VM_ALLOC_USED:I = 0xa

.field public static final MEMINFO_ZRAM_TOTAL:I = 0x8

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    #@3
    .line 2007
    const/4 v0, 0x0

    #@4
    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    #@6
    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .locals 1
    .param p0, "classAndMethodDesc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1865
    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static changeDebugPort(I)V
    .locals 0
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 848
    return-void
.end method

.method public static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1816
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1775
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    #@3
    .line 1774
    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1789
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    #@3
    .line 1788
    return-void
.end method

.method public static dumpHprofDataDdms()V
    .locals 0

    #@0
    .prologue
    .line 1800
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    #@3
    .line 1799
    return-void
.end method

.method public static native dumpNativeBacktraceToFile(ILjava/lang/String;)V
.end method

.method public static native dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static final dumpReferenceTables()V
    .locals 0

    #@0
    .prologue
    .line 1875
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    #@3
    .line 1874
    return-void
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2206
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4
    move-result-object v1

    #@5
    .line 2207
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@7
    .line 2208
    const-string/jumbo v2, "Debug"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Can\'t find service to dump: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 2209
    return v5

    #@22
    .line 2213
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2214
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 2215
    :catch_0
    move-exception v0

    #@28
    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Debug"

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "Can\'t dump service: "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 2217
    return v5
.end method

.method public static enableEmulatorTraceOutput()V
    .locals 0

    #@0
    .prologue
    .line 941
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    #@3
    .line 940
    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2019
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@5
    move-result-object v2

    #@6
    .line 2020
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p1, :cond_0

    #@8
    .line 2021
    return v5

    #@9
    .line 2029
    :cond_0
    :try_start_0
    const-string/jumbo v4, "TYPE"

    #@c
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    .line 2034
    .local v3, "primitiveTypeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    #@11
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    if-ne v2, v4, :cond_1

    #@19
    move v4, v5

    #@1a
    :goto_0
    return v4

    #@1b
    .line 2030
    .end local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    #@1c
    .line 2031
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    return v6

    #@1d
    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :cond_1
    move v4, v6

    #@1e
    .line 2034
    goto :goto_0

    #@1f
    .line 2035
    :catch_1
    move-exception v0

    #@20
    .line 2036
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    return v6
.end method

.method private static fixTracePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "tracePath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1091
    if-eqz p0, :cond_0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v2

    #@8
    const/16 v3, 0x2f

    #@a
    if-eq v2, v3, :cond_1

    #@c
    .line 1092
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    #@f
    move-result-object v0

    #@10
    .line 1094
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    #@12
    .line 1095
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@15
    move-result-object v1

    #@16
    .line 1100
    .local v1, "dir":Ljava/io/File;
    :goto_0
    if-nez p0, :cond_4

    #@18
    .line 1101
    new-instance v2, Ljava/io/File;

    #@1a
    const-string/jumbo v3, "dmtrace"

    #@1d
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@23
    move-result-object p0

    #@24
    .line 1106
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    :goto_1
    const-string/jumbo v2, ".trace"

    #@27
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_2

    #@2d
    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, ".trace"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    .line 1109
    :cond_2
    return-object p0

    #@42
    .line 1097
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@45
    move-result-object v1

    #@46
    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_0

    #@47
    .line 1103
    :cond_4
    new-instance v2, Ljava/io/File;

    #@49
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4f
    move-result-object p0

    #@50
    goto :goto_1
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getCaller()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 3
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 2244
    add-int/lit8 v1, p1, 0x4

    #@2
    array-length v2, p0

    #@3
    if-lt v1, v2, :cond_0

    #@5
    .line 2245
    const-string/jumbo v1, "<bottom of call stack>"

    #@8
    return-object v1

    #@9
    .line 2247
    :cond_0
    add-int/lit8 v1, p1, 0x4

    #@b
    aget-object v0, p0, v1

    #@d
    .line 2248
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "."

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, ":"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@33
    move-result v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I

    #@0
    .prologue
    .line 2258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@7
    move-result-object v0

    #@8
    .line 2259
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 2260
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    #@10
    .line 2261
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, " "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 2260
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2263
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method public static getCallers(II)Ljava/lang/String;
    .locals 5
    .param p0, "start"    # I
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 2273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@7
    move-result-object v0

    #@8
    .line 2274
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 2275
    .local v2, "sb":Ljava/lang/StringBuffer;
    add-int/2addr p1, p0

    #@e
    .line 2276
    move v1, p0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@11
    .line 2277
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v3

    #@19
    const-string/jumbo v4, " "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 2276
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2279
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    return-object v3
.end method

.method public static getCallers(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I
    .param p1, "linePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@7
    move-result-object v0

    #@8
    .line 2292
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 2293
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    #@10
    .line 2294
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    move-result-object v3

    #@14
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, "\n"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 2293
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 2296
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    return-object v3
.end method

.method public static getGlobalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1208
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getGlobalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1230
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getGlobalClassInitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1319
    const/16 v0, 0x20

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getGlobalClassInitTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1342
    const/16 v0, 0x40

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1362
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1385
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1394
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1410
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getGlobalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1252
    const/4 v0, 0x4

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static getGlobalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1274
    const/16 v0, 0x8

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1296
    const/16 v0, 0x10

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getLoadedClassCount()I
    .locals 1

    #@0
    .prologue
    .line 1763
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native getMemInfo([J)V
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static getMethodTracingMode()I
    .locals 1

    #@0
    .prologue
    .line 1145
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static native getPss()J
.end method

.method public static native getPss(I[J[J)J
.end method

.method public static getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "statName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1621
    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getRuntimeStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1631
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getThreadAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1428
    const/high16 v0, 0x10000

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getThreadAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1451
    const/high16 v0, 0x20000

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1471
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1487
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1505
    const/high16 v0, 0x100000

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static native getUnreachableMemory(IZ)Ljava/lang/String;
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 839
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static isDebuggerConnected()Z
    .locals 1

    #@0
    .prologue
    .line 828
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "properties"    # Lcom/android/internal/util/TypedProperties;
    .param p2, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2047
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    const-class v4, Ljava/lang/String;

    #@6
    if-ne v3, v4, :cond_0

    #@8
    .line 2048
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    .line 2049
    .local v1, "stringInfo":I
    packed-switch v1, :pswitch_data_0

    #@f
    .line 2068
    new-instance v3, Ljava/lang/IllegalStateException;

    #@11
    .line 2069
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "Unexpected getStringInfo("

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, ") return value "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 2068
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 2055
    :pswitch_0
    const/4 v3, 0x0

    #@35
    const/4 v4, 0x0

    #@36
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 2060
    return-void

    #@3a
    .line 2056
    :catch_0
    move-exception v0

    #@3b
    .line 2057
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3d
    .line 2058
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Cannot set field for "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 2057
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@54
    throw v3

    #@55
    .line 2062
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :pswitch_1
    return-void

    #@56
    .line 2064
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@58
    .line 2065
    new-instance v4, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v5, "Type of "

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    const-string/jumbo v5, " "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 2066
    const-string/jumbo v5, " does not match field type ("

    #@72
    .line 2065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 2066
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@79
    move-result-object v5

    #@7a
    .line 2065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 2066
    const-string/jumbo v5, ")"

    #@81
    .line 2065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    .line 2064
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v3

    #@8d
    .line 2073
    .end local v1    # "stringInfo":I
    :cond_0
    :pswitch_3
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    move-result-object v2

    #@91
    .line 2074
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@93
    .line 2075
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@96
    move-result-object v3

    #@97
    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    #@9a
    move-result v3

    #@9b
    if-nez v3, :cond_1

    #@9d
    .line 2076
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9f
    .line 2077
    new-instance v4, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v5, "Type of "

    #@a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    const-string/jumbo v5, " ("

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    const-string/jumbo v5, ") "

    #@c1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    .line 2078
    const-string/jumbo v5, " does not match field type ("

    #@c8
    .line 2077
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v4

    #@cc
    .line 2078
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@cf
    move-result-object v5

    #@d0
    .line 2077
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    .line 2078
    const-string/jumbo v5, ")"

    #@d7
    .line 2077
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v4

    #@df
    .line 2076
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e2
    throw v3

    #@e3
    .line 2081
    :cond_1
    const/4 v3, 0x0

    #@e4
    :try_start_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@e7
    .line 2046
    :cond_2
    return-void

    #@e8
    .line 2082
    :catch_1
    move-exception v0

    #@e9
    .line 2083
    .restart local v0    # "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@eb
    .line 2084
    new-instance v4, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v5, "Cannot set field for "

    #@f3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v4

    #@f7
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v4

    #@fb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v4

    #@ff
    .line 2083
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@102
    throw v3

    #@103
    .line 2049
    nop

    #@104
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .locals 0
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 1755
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    #@3
    .line 1754
    return-void
.end method

.method public static resetAllCounts()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1527
    const/4 v0, -0x1

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@4
    .line 1526
    return-void
.end method

.method public static resetGlobalAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1219
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@4
    .line 1218
    return-void
.end method

.method public static resetGlobalAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1241
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@4
    .line 1240
    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1330
    const/16 v0, 0x20

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1329
    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1353
    const/16 v0, 0x40

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1352
    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1377
    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1370
    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1402
    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1418
    return-void
.end method

.method public static resetGlobalFreedCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1263
    const/4 v0, 0x4

    #@1
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@4
    .line 1262
    return-void
.end method

.method public static resetGlobalFreedSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1285
    const/16 v0, 0x8

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1284
    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1307
    const/16 v0, 0x10

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1306
    return-void
.end method

.method public static resetThreadAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1439
    const/high16 v0, 0x10000

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1438
    return-void
.end method

.method public static resetThreadAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1462
    const/high16 v0, 0x20000

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1461
    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1479
    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1495
    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1516
    const/high16 v0, 0x100000

    #@2
    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    #@5
    .line 1515
    return-void
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1733
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2098
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    #@4
    .line 2097
    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .locals 3
    .param p1, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2177
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "Debug"

    #@3
    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "setFieldsOn("

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    if-nez p0, :cond_0

    #@11
    const-string/jumbo v0, "null"

    #@14
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 2179
    const-string/jumbo v2, ") called in non-DEBUG build"

    #@1b
    .line 2178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 2177
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 2156
    return-void

    #@27
    .line 2178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1746
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public static startAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1187
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    #@3
    .line 1186
    return-void
.end method

.method public static startMethodTracing()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 965
    const/4 v0, 0x0

    #@2
    invoke-static {v0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    #@9
    .line 964
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .locals 1
    .param p0, "tracePath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 994
    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    #@4
    .line 993
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .locals 1
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I

    #@0
    .prologue
    .line 1026
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    #@4
    .line 1025
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .locals 2
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1060
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p1, p2, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    #@8
    .line 1059
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 6
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v5, v4

    #@6
    .line 1123
    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    #@9
    .line 1122
    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 0
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    #@0
    .prologue
    .line 1135
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    #@3
    .line 1134
    return-void
.end method

.method public static startMethodTracingSampling(Ljava/lang/String;II)V
    .locals 3
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "intervalUs"    # I

    #@0
    .prologue
    .line 1084
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    invoke-static {v0, p1, v1, v2, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    #@9
    .line 1083
    return-void
.end method

.method public static startNativeTracing()V
    .locals 5

    #@0
    .prologue
    .line 886
    const/4 v2, 0x0

    #@1
    .line 888
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    #@3
    const-string/jumbo v4, "/sys/qemu_trace/state"

    #@6
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@9
    .line 889
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    #@b
    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 890
    .local v3, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v4, "1"

    #@11
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    .line 893
    if-eqz v3, :cond_0

    #@16
    .line 894
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    #@19
    :cond_0
    move-object v2, v3

    #@1a
    .line 897
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    #@1d
    .line 884
    return-void

    #@1e
    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    #@1f
    .line 893
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    #@21
    .line 894
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    #@24
    goto :goto_0

    #@25
    .line 892
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    #@26
    .line 893
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v2, :cond_2

    #@28
    .line 894
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    #@2b
    .line 892
    :cond_2
    throw v4

    #@2c
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    #@2d
    move-object v2, v3

    #@2e
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    goto :goto_2

    #@2f
    .line 891
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    #@30
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    #@31
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public static stopAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1197
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    #@3
    .line 1196
    return-void
.end method

.method public static stopMethodTracing()V
    .locals 0

    #@0
    .prologue
    .line 1152
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    #@3
    .line 1151
    return-void
.end method

.method public static stopNativeTracing()V
    .locals 5

    #@0
    .prologue
    .line 911
    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    #@3
    .line 914
    const/4 v2, 0x0

    #@4
    .line 916
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    #@6
    const-string/jumbo v4, "/sys/qemu_trace/state"

    #@9
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@c
    .line 917
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    #@e
    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 918
    .local v3, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v4, "0"

    #@14
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@17
    .line 923
    if-eqz v3, :cond_0

    #@19
    .line 924
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    #@1c
    :cond_0
    move-object v2, v3

    #@1d
    .line 910
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    #@1f
    .line 923
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    #@21
    .line 924
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    #@24
    goto :goto_0

    #@25
    .line 922
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    #@26
    .line 923
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v2, :cond_2

    #@28
    .line 924
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    #@2b
    .line 922
    :cond_2
    throw v4

    #@2c
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    #@2d
    move-object v2, v3

    #@2e
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    goto :goto_2

    #@2f
    .line 919
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    #@30
    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    #@31
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public static threadCpuTimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 1167
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static waitForDebugger()V
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 767
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 769
    return-void

    #@9
    .line 771
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 772
    return-void

    #@10
    .line 775
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v6, "Sending WAIT chunk"

    #@15
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 776
    new-array v0, v7, [B

    #@1a
    aput-byte v8, v0, v8

    #@1c
    .line 777
    .local v0, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1e
    const-string/jumbo v5, "WAIT"

    #@21
    invoke-static {v5}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    #@24
    move-result v5

    #@25
    invoke-direct {v4, v5, v0, v8, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@28
    .line 778
    .local v4, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    #@2b
    .line 780
    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    #@2d
    .line 781
    :goto_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_2

    #@33
    .line 782
    const-wide/16 v6, 0xc8

    #@35
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 783
    :catch_0
    move-exception v1

    #@3a
    .local v1, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    #@3b
    .line 785
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    sput-boolean v8, Landroid/os/Debug;->mWaiting:Z

    #@3d
    .line 787
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    const-string/jumbo v6, "Debugger has connected"

    #@42
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 799
    :goto_1
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    #@48
    move-result-wide v2

    #@49
    .line 800
    .local v2, "delta":J
    const-wide/16 v6, 0x0

    #@4b
    cmp-long v5, v2, v6

    #@4d
    if-gez v5, :cond_3

    #@4f
    .line 801
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@51
    const-string/jumbo v6, "debugger detached?"

    #@54
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    .line 766
    :goto_2
    return-void

    #@58
    .line 805
    :cond_3
    const-wide/16 v6, 0x514

    #@5a
    cmp-long v5, v2, v6

    #@5c
    if-gez v5, :cond_4

    #@5e
    .line 806
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@60
    const-string/jumbo v6, "waiting for debugger to settle..."

    #@63
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@66
    .line 807
    const-wide/16 v6, 0xc8

    #@68
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@6b
    goto :goto_1

    #@6c
    .line 808
    :catch_1
    move-exception v1

    #@6d
    .restart local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    #@6e
    .line 810
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@70
    new-instance v6, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v7, "debugger has settled ("

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    const-string/jumbo v7, ")"

    #@83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8e
    goto :goto_2
.end method

.method public static waitingForDebugger()Z
    .locals 1

    #@0
    .prologue
    .line 821
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    #@2
    return v0
.end method
