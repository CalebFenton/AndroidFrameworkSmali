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
.field private static final greylist-max-o DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final greylist-max-o DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field private static final blacklist FRAMEWORK_FEATURES:[Ljava/lang/String;

.field public static final blacklist MEMINFO_ACTIVE:I = 0x10

.field public static final blacklist MEMINFO_ACTIVE_ANON:I = 0x14

.field public static final blacklist MEMINFO_ACTIVE_FILE:I = 0x16

.field public static final blacklist MEMINFO_AVAILABLE:I = 0x13

.field public static final greylist-max-o MEMINFO_BUFFERS:I = 0x2

.field public static final greylist-max-o MEMINFO_CACHED:I = 0x3

.field public static final blacklist MEMINFO_CMA_FREE:I = 0x19

.field public static final blacklist MEMINFO_CMA_TOTAL:I = 0x18

.field public static final greylist-max-o MEMINFO_COUNT:I = 0x1a

.field public static final greylist-max-o MEMINFO_FREE:I = 0x1

.field public static final blacklist MEMINFO_INACTIVE:I = 0x11

.field public static final blacklist MEMINFO_INACTIVE_ANON:I = 0x15

.field public static final blacklist MEMINFO_INACTIVE_FILE:I = 0x17

.field public static final greylist-max-o MEMINFO_KERNEL_STACK:I = 0xe

.field public static final blacklist MEMINFO_KRECLAIMABLE:I = 0xf

.field public static final greylist-max-o MEMINFO_MAPPED:I = 0xb

.field public static final greylist-max-o MEMINFO_PAGE_TABLES:I = 0xd

.field public static final greylist-max-o MEMINFO_SHMEM:I = 0x4

.field public static final greylist-max-o MEMINFO_SLAB:I = 0x5

.field public static final greylist-max-o MEMINFO_SLAB_RECLAIMABLE:I = 0x6

.field public static final greylist-max-o MEMINFO_SLAB_UNRECLAIMABLE:I = 0x7

.field public static final greylist-max-o MEMINFO_SWAP_FREE:I = 0x9

.field public static final greylist-max-o MEMINFO_SWAP_TOTAL:I = 0x8

.field public static final greylist-max-o MEMINFO_TOTAL:I = 0x0

.field public static final blacklist MEMINFO_UNEVICTABLE:I = 0x12

.field public static final greylist-max-o MEMINFO_VM_ALLOC_USED:I = 0xc

.field public static final greylist-max-o MEMINFO_ZRAM_TOTAL:I = 0xa

.field private static final greylist-max-o MIN_DEBUGGER_IDLE:I = 0x514

.field public static final whitelist SHOW_CLASSLOADER:I = 0x2

.field public static final whitelist SHOW_FULL_DETAIL:I = 0x1

.field public static final whitelist SHOW_INITIALIZED:I = 0x4

.field private static final greylist-max-o SPIN_DELAY:I = 0xc8

.field private static final greylist-max-o SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Debug"

.field public static final whitelist TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile greylist-max-o mWaiting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 114
    const-string/jumbo v0, "support_boot_stages"

    const-string v1, "app_info"

    const-string/jumbo v2, "opengl-tracing"

    const-string/jumbo v3, "view-hierarchy"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Debug;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    .line 2357
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 2359
    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p0, "library"    # Ljava/lang/String;
    .param p1, "options"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2690
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2693
    if-nez p1, :cond_14

    .line 2694
    invoke-static {p0, p2}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_2c

    .line 2696
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2698
    :goto_2c
    return-void
.end method

.method public static whitelist changeDebugPort(I)V
    .registers 1
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1143
    return-void
.end method

.method public static greylist countInstancesOfClass(Ljava/lang/Class;)J
    .registers 3
    .param p0, "cls"    # Ljava/lang/Class;

    .line 2216
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist dumpHprofData(Ljava/lang/String;)V
    .registers 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 2126
    return-void
.end method

.method public static greylist-max-o dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2139
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 2140
    return-void
.end method

.method public static blacklist dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bitmapFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2172
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 2173
    :try_start_3
    invoke-static {p2}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2175
    :cond_6
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 2177
    if-eqz p2, :cond_e

    .line 2178
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2181
    :cond_e
    return-void

    .line 2177
    :catchall_f
    move-exception v1

    if-eqz p2, :cond_15

    .line 2178
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2180
    :cond_15
    throw v1
.end method

.method public static blacklist dumpHprofData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "bitmapFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2151
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2152
    :try_start_3
    invoke-static {p1}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2154
    :cond_6
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 2156
    if-eqz p1, :cond_e

    .line 2157
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2160
    :cond_e
    return-void

    .line 2156
    :catchall_f
    move-exception v1

    if-eqz p1, :cond_15

    .line 2157
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2159
    :cond_15
    throw v1
.end method

.method public static greylist-max-o dumpHprofDataDdms()V
    .registers 0

    .line 2191
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 2192
    return-void
.end method

.method public static native greylist-max-o dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native greylist-max-o dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native greylist-max-r dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static native greylist-max-o dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static final greylist dumpReferenceTables()V
    .registers 0

    .line 2257
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 2258
    return-void
.end method

.method public static whitelist dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2556
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2557
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    const-string v2, "Debug"

    if-nez v0, :cond_20

    .line 2558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find service to dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return v1

    .line 2563
    :cond_20
    :try_start_20
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25

    .line 2564
    const/4 v1, 0x1

    return v1

    .line 2565
    :catch_25
    move-exception v3

    .line 2566
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t dump service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2567
    return v1
.end method

.method public static whitelist enableEmulatorTraceOutput()V
    .registers 2

    .line 1234
    const-string v0, "Debug"

    const-string v1, "Unimplemented"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void
.end method

.method private static greylist-max-o fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .registers 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2369
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2370
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    .line 2371
    return v1

    .line 2379
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    const-string v3, "TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_f} :catch_1e

    .line 2382
    .local v3, "primitiveTypeField":Ljava/lang/reflect/Field;
    nop

    .line 2384
    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_17} :catch_1c

    if-ne v0, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1

    .line 2385
    :catch_1c
    move-exception v1

    .line 2386
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    return v2

    .line 2380
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :catch_1e
    move-exception v1

    .line 2381
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    return v2
.end method

.method private static greylist-max-o fixTracePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "tracePath"    # Ljava/lang/String;

    .line 1384
    if-eqz p0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_32

    .line 1385
    :cond_b
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1387
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_17

    .line 1388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .local v1, "dir":Ljava/io/File;
    goto :goto_1b

    .line 1390
    .end local v1    # "dir":Ljava/io/File;
    :cond_17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1393
    .restart local v1    # "dir":Ljava/io/File;
    :goto_1b
    if-nez p0, :cond_29

    .line 1394
    new-instance v2, Ljava/io/File;

    const-string v3, "dmtrace"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1396
    :cond_29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1399
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    :cond_32
    :goto_32
    const-string v0, ".trace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1402
    :cond_4b
    return-object p0
.end method

.method public static final native whitelist getBinderDeathObjectCount()I
.end method

.method public static final native whitelist getBinderLocalObjectCount()I
.end method

.method public static final native whitelist getBinderProxyObjectCount()I
.end method

.method public static native whitelist getBinderReceivedTransactions()I
.end method

.method public static native whitelist getBinderSentTransactions()I
.end method

.method public static greylist getCaller()Ljava/lang/String;
    .registers 2

    .line 2671
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 5
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    .line 2609
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-lt v0, v1, :cond_8

    .line 2610
    const-string v0, "<bottom of call stack>"

    return-object v0

    .line 2612
    :cond_8
    add-int/lit8 v0, p1, 0x4

    aget-object v0, p0, v0

    .line 2613
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getCallers(I)Ljava/lang/String;
    .registers 6
    .param p0, "depth"    # I

    .line 2624
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2625
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2626
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p0, :cond_20

    .line 2627
    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2629
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getCallers(II)Ljava/lang/String;
    .registers 7
    .param p0, "start"    # I
    .param p1, "depth"    # I

    .line 2639
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2640
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2641
    .local v1, "sb":Ljava/lang/StringBuilder;
    add-int/2addr p1, p0

    .line 2642
    move v2, p0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_21

    .line 2643
    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2645
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getCallers(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "depth"    # I
    .param p1, "linePrefix"    # Ljava/lang/String;

    .line 2657
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2658
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2659
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p0, :cond_24

    .line 2660
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2662
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static native blacklist getDmabufHeapPoolsSizeKb()J
.end method

.method public static native blacklist getDmabufHeapTotalExportedKb()J
.end method

.method public static native blacklist getDmabufMappedSizeKb()J
.end method

.method public static native blacklist getDmabufTotalExportedKb()J
.end method

.method public static blacklist getFeatureList()[Ljava/lang/String;
    .registers 1

    .line 1134
    sget-object v0, Landroid/os/Debug;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getGlobalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1501
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1523
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalClassInitCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1612
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalClassInitTime()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1635
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1655
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1678
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1687
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1703
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1545
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalGcInvocationCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1589
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native blacklist getGpuPrivateMemoryKb()J
.end method

.method public static native blacklist getGpuTotalUsageKb()J
.end method

.method public static native blacklist getIonHeapsSizeKb()J
.end method

.method public static native blacklist getIonPoolsSizeKb()J
.end method

.method public static native blacklist getKernelCmaUsageKb()J
.end method

.method public static whitelist getLoadedClassCount()I
    .registers 1

    .line 2113
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native greylist getMemInfo([J)V
.end method

.method public static native whitelist getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static native greylist getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z
.end method

.method public static greylist-max-o getMethodTracingMode()I
    .registers 1

    .line 1438
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native whitelist getNativeHeapAllocatedSize()J
.end method

.method public static native whitelist getNativeHeapFreeSize()J
.end method

.method public static native whitelist getNativeHeapSize()J
.end method

.method public static native whitelist getPss()J
.end method

.method public static native greylist-max-o getPss(I[J[J)J
.end method

.method public static native whitelist getRss()J
.end method

.method public static native blacklist getRss(I[J)J
.end method

.method public static whitelist getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "statName"    # Ljava/lang/String;

    .line 1916
    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRuntimeStats()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1926
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThreadAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1721
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getThreadAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1744
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getThreadExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1764
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getThreadExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1780
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getThreadGcInvocationCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1798
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native greylist-max-o getUnreachableMemory(IZ)Ljava/lang/String;
.end method

.method public static greylist-max-o getVmFeatureList()[Ljava/lang/String;
    .registers 1

    .line 1113
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist getZramFreeKb()J
.end method

.method public static whitelist isDebuggerConnected()Z
    .registers 1

    .line 1102
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static native blacklist isVmapStack()Z
.end method

.method public static native blacklist logAllocatorStats()Z
.end method

.method private static greylist-max-o modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .registers 9
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "properties"    # Lcom/android/internal/util/TypedProperties;
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 2397
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "Cannot set field for "

    const-string v3, ")"

    const-string v4, "Type of "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_81

    .line 2398
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v0

    .line 2399
    .local v0, "stringInfo":I
    packed-switch v0, :pswitch_data_e6

    .line 2418
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected getStringInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2402
    :pswitch_39
    goto :goto_81

    .line 2405
    :pswitch_3a
    :try_start_3a
    invoke-virtual {p0, v5, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3d} :catch_3f

    .line 2409
    nop

    .line 2410
    return-void

    .line 2406
    :catch_3f
    move-exception v1

    .line 2407
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2412
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :pswitch_57
    return-void

    .line 2414
    :pswitch_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  does not match field type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2416
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2423
    .end local v0    # "stringInfo":I
    :cond_81
    :goto_81
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2424
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_e4

    .line 2425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2431
    :try_start_91
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_91 .. :try_end_94} :catch_95

    .line 2435
    goto :goto_e4

    .line 2432
    :catch_95
    move-exception v1

    .line 2433
    .restart local v1    # "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2426
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :cond_ad
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")  does not match field type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2428
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2437
    :cond_e4
    :goto_e4
    return-void

    nop

    :pswitch_data_e6
    .packed-switch -0x2
        :pswitch_58
        :pswitch_57
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static whitelist printLoadedClasses(I)V
    .registers 1
    .param p0, "flags"    # I

    .line 2105
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 2106
    return-void
.end method

.method public static whitelist resetAllCounts()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1820
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1821
    return-void
.end method

.method public static whitelist resetGlobalAllocCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1512
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1513
    return-void
.end method

.method public static whitelist resetGlobalAllocSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1534
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1535
    return-void
.end method

.method public static whitelist resetGlobalClassInitCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1623
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1624
    return-void
.end method

.method public static whitelist resetGlobalClassInitTime()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1646
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1647
    return-void
.end method

.method public static whitelist resetGlobalExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1670
    return-void
.end method

.method public static whitelist resetGlobalExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1663
    return-void
.end method

.method public static whitelist resetGlobalExternalFreedCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1695
    return-void
.end method

.method public static whitelist resetGlobalExternalFreedSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1711
    return-void
.end method

.method public static whitelist resetGlobalFreedCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1556
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1557
    return-void
.end method

.method public static whitelist resetGlobalFreedSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1578
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1579
    return-void
.end method

.method public static whitelist resetGlobalGcInvocationCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1600
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1601
    return-void
.end method

.method public static whitelist resetThreadAllocCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1732
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1733
    return-void
.end method

.method public static whitelist resetThreadAllocSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1755
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1756
    return-void
.end method

.method public static whitelist resetThreadExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1772
    return-void
.end method

.method public static whitelist resetThreadExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1788
    return-void
.end method

.method public static whitelist resetThreadGcInvocationCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1809
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1810
    return-void
.end method

.method public static whitelist setAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2083
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o setFieldsOn(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2448
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 2449
    return-void
.end method

.method public static greylist-max-o setFieldsOn(Ljava/lang/Class;Z)V
    .registers 4
    .param p1, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2527
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFieldsOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2528
    if-nez p0, :cond_12

    const-string/jumbo v1, "null"

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") called in non-DEBUG build"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2527
    const-string v1, "Debug"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    return-void
.end method

.method public static whitelist setGlobalAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2096
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist setWaitingForDebugger(Z)V
    .registers 1
    .param p0, "waiting"    # Z

    .line 1122
    sput-boolean p0, Landroid/os/Debug;->mWaiting:Z

    .line 1123
    invoke-static {p0}, Ldalvik/system/VMDebug;->setWaitingForDebugger(Z)V

    .line 1124
    return-void
.end method

.method public static whitelist startAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1480
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 1481
    return-void
.end method

.method public static whitelist startMethodTracing()V
    .registers 2

    .line 1258
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1259
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;)V
    .registers 2
    .param p0, "tracePath"    # Ljava/lang/String;

    .line 1287
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1288
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;I)V
    .registers 3
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I

    .line 1319
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1320
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;II)V
    .registers 5
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    .line 1353
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1354
    return-void
.end method

.method public static greylist-max-o startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)V
    .registers 12
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I
    .param p4, "streamOutput"    # Z

    .line 1416
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .end local p0    # "traceName":Ljava/lang/String;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bufferSize":I
    .end local p3    # "flags":I
    .end local p4    # "streamOutput":Z
    .local v0, "traceName":Ljava/lang/String;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .local v2, "bufferSize":I
    .local v3, "flags":I
    .local v6, "streamOutput":Z
    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1417
    return-void
.end method

.method public static greylist-max-o startMethodTracingDdms(IIZI)V
    .registers 4
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    .line 1428
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    .line 1429
    return-void
.end method

.method public static whitelist startMethodTracingSampling(Ljava/lang/String;II)V
    .registers 6
    .param p0, "tracePath"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "intervalUs"    # I

    .line 1377
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1378
    return-void
.end method

.method public static whitelist startNativeTracing()V
    .registers 3

    .line 1181
    const/4 v0, 0x0

    .line 1183
    .local v0, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/qemu_trace/state"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1185
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1f
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 1188
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 1189
    :goto_14
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_23

    .line 1188
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_1e

    .line 1189
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1190
    :cond_1e
    throw v1

    .line 1186
    :catch_1f
    move-exception v1

    .line 1188
    if-eqz v0, :cond_23

    .line 1189
    goto :goto_14

    .line 1191
    :cond_23
    :goto_23
    return-void
.end method

.method public static whitelist stopAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1490
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 1491
    return-void
.end method

.method public static whitelist stopMethodTracing()V
    .registers 0

    .line 1445
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 1446
    return-void
.end method

.method public static whitelist stopNativeTracing()V
    .registers 3

    .line 1205
    const/4 v0, 0x0

    .line 1207
    .local v0, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/qemu_trace/state"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1209
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1f
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 1214
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 1215
    :goto_14
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_23

    .line 1214
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_1e

    .line 1215
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1216
    :cond_1e
    throw v1

    .line 1210
    :catch_1f
    move-exception v1

    .line 1214
    if-eqz v0, :cond_23

    .line 1215
    goto :goto_14

    .line 1217
    :cond_23
    :goto_23
    return-void
.end method

.method public static blacklist suspendAllAndSendVmStart()V
    .registers 6

    .line 1003
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1004
    return-void

    .line 1008
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sending WAIT chunk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 1010
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 1011
    .local v3, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 1019
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Waiting for debugger first packet"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    invoke-static {v0}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1022
    :goto_2c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1024
    const-wide/16 v4, 0x64

    :try_start_34
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    .line 1026
    :goto_37
    goto :goto_2c

    .line 1025
    :catch_38
    move-exception v0

    goto :goto_37

    .line 1028
    :cond_3a
    invoke-static {v2}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1030
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Debug.suspendAllAndSentVmStart"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1031
    invoke-static {}, Ldalvik/system/VMDebug;->suspendAllAndSendVmStart()V

    .line 1032
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Debug.suspendAllAndSendVmStart, resumed"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public static whitelist threadCpuTimeNanos()J
    .registers 2

    .line 1460
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist waitForDebugger()V
    .registers 10

    .line 1041
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1043
    return-void

    .line 1045
    :cond_7
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1046
    return-void

    .line 1049
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sending WAIT chunk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1050
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 1051
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 1052
    .local v3, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 1054
    invoke-static {v0}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1055
    :goto_2c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    const-wide/16 v4, 0xc8

    if-nez v0, :cond_3a

    .line 1056
    :try_start_34
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    .line 1057
    :goto_37
    goto :goto_2c

    :catch_38
    move-exception v0

    goto :goto_37

    .line 1059
    :cond_3a
    invoke-static {v2}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1061
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Debugger has connected"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1073
    :goto_44
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v6

    .line 1074
    .local v6, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_56

    .line 1075
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "debugger detached?"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1076
    goto :goto_8a

    .line 1079
    :cond_56
    const-wide/16 v8, 0x514

    cmp-long v0, v6, v8

    if-gez v0, :cond_6b

    .line 1080
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "waiting for debugger to settle..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1081
    :try_start_64
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_68

    .line 1082
    :goto_67
    goto :goto_6a

    :catch_68
    move-exception v0

    goto :goto_67

    .line 1087
    .end local v6    # "delta":J
    :goto_6a
    goto :goto_44

    .line 1084
    .restart local v6    # "delta":J
    :cond_6b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debugger has settled ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1085
    nop

    .line 1088
    .end local v6    # "delta":J
    :goto_8a
    return-void
.end method

.method public static whitelist waitingForDebugger()Z
    .registers 1

    .line 1095
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
