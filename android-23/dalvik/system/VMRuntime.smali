.class public final Ldalvik/system/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# static fields
.field private static final ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final THE_ONE:Ldalvik/system/VMRuntime;


# instance fields
.field private targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 35
    new-instance v0, Ldalvik/system/VMRuntime;

    #@2
    invoke-direct {v0}, Ldalvik/system/VMRuntime;-><init>()V

    #@5
    sput-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    #@7
    .line 42
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 41
    sput-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@e
    .line 44
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@10
    const-string/jumbo v1, "armeabi"

    #@13
    const-string/jumbo v2, "arm"

    #@16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 45
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@1b
    const-string/jumbo v1, "armeabi-v7a"

    #@1e
    const-string/jumbo v2, "arm"

    #@21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 46
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@26
    const-string/jumbo v1, "mips"

    #@29
    const-string/jumbo v2, "mips"

    #@2c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 47
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@31
    const-string/jumbo v1, "mips64"

    #@34
    const-string/jumbo v2, "mips64"

    #@37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 48
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@3c
    const-string/jumbo v1, "x86"

    #@3f
    const-string/jumbo v2, "x86"

    #@42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 49
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@47
    const-string/jumbo v1, "x86_64"

    #@4a
    const-string/jumbo v2, "x86_64"

    #@4d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 50
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@52
    const-string/jumbo v1, "arm64-v8a"

    #@55
    const-string/jumbo v2, "arm64"

    #@58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native getCurrentInstructionSet()Ljava/lang/String;
.end method

.method public static getInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 362
    sget-object v1, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 363
    .local v0, "instructionSet":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unsupported ABI: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 367
    :cond_0
    return-object v0
.end method

.method public static getRuntime()Ldalvik/system/VMRuntime;
    .locals 1

    #@0
    .prologue
    .line 68
    sget-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    #@2
    return-object v0
.end method

.method public static is64BitAbi(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 377
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static is64BitInstructionSet(Ljava/lang/String;)Z
    .locals 1
    .param p0, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    const-string/jumbo v0, "arm64"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 372
    const-string/jumbo v0, "x86_64"

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 371
    if-nez v0, :cond_0

    #@12
    .line 373
    const-string/jumbo v0, "mips64"

    #@15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    .line 371
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public static native isBootClassPathOnDisk(Ljava/lang/String;)Z
.end method

.method private native nativeSetTargetHeapUtilization(F)V
.end method

.method public static native registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static runFinalization(J)V
    .locals 2
    .param p0, "timeout"    # J

    #@0
    .prologue
    .line 321
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/ref/FinalizerReference;->finalizeAllEnqueued(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 319
    :goto_0
    return-void

    #@4
    .line 322
    :catch_0
    move-exception v0

    #@5
    .line 325
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@c
    goto :goto_0
.end method

.method private native setTargetSdkVersionNative(I)V
.end method


# virtual methods
.method public native addressOf(Ljava/lang/Object;)J
.end method

.method public native bootClassPath()Ljava/lang/String;
.end method

.method public native clampGrowthLimit()V
.end method

.method public native classPath()Ljava/lang/String;
.end method

.method public native clearGrowthLimit()V
.end method

.method public native concurrentGC()V
.end method

.method public native disableJitCompilation()V
.end method

.method public gcSoftReferences()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 197
    return-void
.end method

.method public getExternalBytesAllocated()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 238
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getMinimumHeapSize()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 180
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public native getTargetHeapUtilization()F
.end method

.method public declared-synchronized getTargetSdkVersion()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 169
    :try_start_0
    iget v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public native is64Bit()Z
.end method

.method public native isCheckJniEnabled()Z
.end method

.method public native isDebuggerActive()Z
.end method

.method public native newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native preloadDexCaches()V
.end method

.method public native properties()[Ljava/lang/String;
.end method

.method public native registerNativeAllocation(I)V
.end method

.method public native registerNativeFree(I)V
.end method

.method public native requestConcurrentGC()V
.end method

.method public native requestHeapTrim()V
.end method

.method public runFinalizationSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 205
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    #@3
    .line 204
    return-void
.end method

.method public native runHeapTasks()V
.end method

.method public setMinimumHeapSize(J)J
    .locals 2
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 189
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public setTargetHeapUtilization(F)F
    .locals 4
    .param p1, "newTarget"    # F

    #@0
    .prologue
    .line 136
    const/4 v1, 0x0

    #@1
    cmpg-float v1, p1, v1

    #@3
    if-lez v1, :cond_0

    #@5
    const/high16 v1, 0x3f800000    # 1.0f

    #@7
    cmpl-float v1, p1, v1

    #@9
    if-ltz v1, :cond_1

    #@b
    .line 137
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 138
    const-string/jumbo v3, " out of range (0,1)"

    #@19
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 144
    :cond_1
    monitor-enter p0

    #@26
    .line 145
    :try_start_0
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    #@29
    move-result v0

    #@2a
    .line 146
    .local v0, "oldTarget":F
    invoke-direct {p0, p1}, Ldalvik/system/VMRuntime;->nativeSetTargetHeapUtilization(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    .line 147
    return v0

    #@2f
    .line 144
    .end local v0    # "oldTarget":F
    :catchall_0
    move-exception v1

    #@30
    monitor-exit p0

    #@31
    throw v1
.end method

.method public declared-synchronized setTargetSdkVersion(I)V
    .locals 1
    .param p1, "targetSdkVersion"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    iput p1, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    #@3
    .line 161
    iget v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    #@5
    invoke-direct {p0, v0}, Ldalvik/system/VMRuntime;->setTargetSdkVersionNative(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 159
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public native startHeapTaskProcessor()V
.end method

.method public native startJitCompilation()V
.end method

.method public native stopHeapTaskProcessor()V
.end method

.method public trackExternalAllocation(J)Z
    .locals 1
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 222
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public trackExternalFree(J)V
    .locals 0
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 230
    return-void
.end method

.method public native trimHeap()V
.end method

.method public native updateProcessState(I)V
.end method

.method public native vmInstructionSet()Ljava/lang/String;
.end method

.method public native vmLibrary()Ljava/lang/String;
.end method

.method public native vmVersion()Ljava/lang/String;
.end method
