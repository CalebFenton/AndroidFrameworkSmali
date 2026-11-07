.class public final Ldalvik/system/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/VMRuntime$HiddenApiUsageLogger;,
        Ldalvik/system/VMRuntime$SdkVersionContainer;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALLOW_TEST_API_ACCESS:J = 0x9e8918aL

.field public static final blacklist test-api CODE_PATH_TYPE_PRIMARY_APK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api CODE_PATH_TYPE_SECONDARY_DEX:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api CODE_PATH_TYPE_SPLIT_APK:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final blacklist HIDE_MAXTARGETSDK_P_HIDDEN_APIS:J = 0x8f0c6c3L

.field private static final blacklist HIDE_MAXTARGETSDK_Q_HIDDEN_APIS:J = 0x8f0ba44L

.field private static final blacklist PREVENT_META_REFLECTION_BLOCKLIST_ACCESS:J = 0x87c52aeL

.field public static final greylist-max-o test-api SDK_VERSION_CUR_DEVELOPMENT:I = 0x2710
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final greylist-max-o THE_ONE:Ldalvik/system/VMRuntime;

.field static blacklist hiddenApiUsageLogger:Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

.field private static greylist-max-o nonSdkApiUsageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist postCleanupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist allocationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist disabledCompatChanges:[J

.field private blacklist notifyNativeInterval:I

.field private greylist-max-o targetSdkVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetIntSystemProperty(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Ldalvik/system/VMRuntime;->getIntSystemProperty(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSdkVersionNative(I)I
    .registers 1

    invoke-static {p0}, Ldalvik/system/VMRuntime;->getSdkVersionNative(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Ldalvik/system/VMRuntime;

    invoke-direct {v0}, Ldalvik/system/VMRuntime;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    .line 66
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "armeabi"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "x86"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "x86_64"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "arm64-v8a"

    const-string v2, "arm64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "arm64-v8a-hwasan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    const-string v1, "riscv64"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x0

    sput-object v0, Ldalvik/system/VMRuntime;->nonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/16 v0, 0x2710

    iput v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ldalvik/system/VMRuntime;->allocationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 224
    new-array v0, v1, [J

    iput-object v0, p0, Ldalvik/system/VMRuntime;->disabledCompatChanges:[J

    .line 232
    return-void
.end method

.method public static blacklist test-api addPostCleanupCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1052
    sget-object v0, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1053
    :try_start_3
    sget-object v1, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native blacklist test-api bootCompleted()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist getBaseApkOptimizationInfo()Ldalvik/system/DexFile$OptimizationInfo;
.end method

.method public static native greylist test-api getCurrentInstructionSet()Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist getFullGcCount()J
.end method

.method public static greylist test-api getInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "abi"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 939
    sget-object v0, Ldalvik/system/VMRuntime;->ABI_TO_INSTRUCTION_SET_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 940
    .local v0, "instructionSet":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 944
    return-object v0

    .line 941
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist getIntSystemProperty(Ljava/lang/String;I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist getNotifyNativeInterval()I
.end method

.method public static greylist test-api getRuntime()Ldalvik/system/VMRuntime;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 244
    sget-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method public static blacklist getSdkExtensionSLevel()I
    .registers 1

    .line 458
    invoke-static {}, Ldalvik/system/VMRuntime$SdkVersionContainer;->-$$Nest$sfgetsdkExtensionS()I

    move-result v0

    return v0
.end method

.method public static blacklist getSdkVersion()I
    .registers 1

    .line 441
    invoke-static {}, Ldalvik/system/VMRuntime$SdkVersionContainer;->-$$Nest$sfgetsdkVersion()I

    move-result v0

    return v0
.end method

.method private static native blacklist getSdkVersionNative(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static blacklist hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 12
    .param p0, "sampledValue"    # I
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accessType"    # I
    .param p4, "accessDenied"    # Z

    .line 197
    sget-object v0, Ldalvik/system/VMRuntime;->hiddenApiUsageLogger:Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

    if-eqz v0, :cond_f

    .line 198
    sget-object v1, Ldalvik/system/VMRuntime;->hiddenApiUsageLogger:Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "sampledValue":I
    .end local p1    # "appPackageName":Ljava/lang/String;
    .end local p2    # "signature":Ljava/lang/String;
    .end local p3    # "accessType":I
    .end local p4    # "accessDenied":Z
    .local v2, "sampledValue":I
    .local v3, "appPackageName":Ljava/lang/String;
    .local v4, "signature":Ljava/lang/String;
    .local v5, "accessType":I
    .local v6, "accessDenied":Z
    invoke-interface/range {v1 .. v6}, Ldalvik/system/VMRuntime$HiddenApiUsageLogger;->hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_14

    .line 197
    .end local v2    # "sampledValue":I
    .end local v3    # "appPackageName":Ljava/lang/String;
    .end local v4    # "signature":Ljava/lang/String;
    .end local v5    # "accessType":I
    .end local v6    # "accessDenied":Z
    .restart local p0    # "sampledValue":I
    .restart local p1    # "appPackageName":Ljava/lang/String;
    .restart local p2    # "signature":Ljava/lang/String;
    .restart local p3    # "accessType":I
    .restart local p4    # "accessDenied":Z
    :cond_f
    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 201
    .end local p0    # "sampledValue":I
    .end local p1    # "appPackageName":Ljava/lang/String;
    .end local p2    # "signature":Ljava/lang/String;
    .end local p3    # "accessType":I
    .end local p4    # "accessDenied":Z
    .restart local v2    # "sampledValue":I
    .restart local v3    # "appPackageName":Ljava/lang/String;
    .restart local v4    # "signature":Ljava/lang/String;
    .restart local v5    # "accessType":I
    .restart local v6    # "accessDenied":Z
    :goto_14
    return-void
.end method

.method public static greylist test-api is64BitAbi(Ljava/lang/String;)Z
    .registers 2
    .param p0, "abi"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 973
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o test-api is64BitInstructionSet(Ljava/lang/String;)Z
    .registers 2
    .param p0, "instructionSet"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 958
    if-eqz p0, :cond_c

    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isArtTestFlagEnabled()Z
    .registers 1

    .line 1146
    invoke-static {}, Lcom/android/art/flags/Flags;->test()Z

    move-result v0

    return v0
.end method

.method public static native greylist-max-o isBootClassPathOnDisk(Ljava/lang/String;)Z
.end method

.method public static blacklist isVTrunkStableFlagEnabled()Z
    .registers 1

    .line 1139
    invoke-static {}, Lcom/android/libcore/Flags;->vApis()Z

    move-result v0

    return v0
.end method

.method public static native blacklist test-api isValidClassLoaderContext(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method private native greylist-max-o nativeSetTargetHeapUtilization(F)V
.end method

.method public static blacklist onPostCleanup()V
    .registers 3

    .line 1074
    sget-object v0, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1075
    :try_start_3
    sget-object v1, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1076
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1077
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_9

    .line 1078
    :cond_19
    monitor-exit v0

    .line 1079
    return-void

    .line 1078
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static native blacklist test-api registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api registerSensitiveThread()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static blacklist test-api removePostCleanupCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1065
    sget-object v0, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1066
    :try_start_3
    sget-object v1, Ldalvik/system/VMRuntime;->postCleanupCallbacks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native blacklist test-api resetJitCounters()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static greylist runFinalization(J)V
    .registers 4
    .param p0, "timeout"    # J

    .line 795
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/ref/FinalizerReference;->finalizeAllEnqueued(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 800
    goto :goto_c

    .line 796
    :catch_4
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 801
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_c
    return-void
.end method

.method public static native greylist-max-o test-api setDedupeHiddenApiWarnings(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method private native blacklist setDisabledCompatChangesNative([J)V
.end method

.method public static blacklist test-api setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .registers 1
    .param p0, "hiddenApiUsageLogger"    # Ldalvik/system/VMRuntime$HiddenApiUsageLogger;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 187
    sput-object p0, Ldalvik/system/VMRuntime;->hiddenApiUsageLogger:Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

    .line 188
    return-void
.end method

.method public static greylist-max-o test-api setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1040
    .local p0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    sput-object p0, Ldalvik/system/VMRuntime;->nonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    .line 1041
    return-void
.end method

.method public static native blacklist test-api setProcessDataDirectory(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o test-api setProcessPackageName(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native greylist-max-o setSystemDaemonThreadPriority()V
.end method

.method private native blacklist setTargetSdkVersionNative(I)V
.end method


# virtual methods
.method public native greylist test-api addressOf(Ljava/lang/Object;)J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-o bootClassPath()Ljava/lang/String;
.end method

.method public native greylist-max-o test-api clampGrowthLimit()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist-max-o classPath()Ljava/lang/String;
.end method

.method public native greylist test-api clearGrowthLimit()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist gcSoftReferences()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    return-void
.end method

.method public greylist getExternalBytesAllocated()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native blacklist getFinalizerTimeoutMs()J
.end method

.method public greylist getMinimumHeapSize()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native greylist-max-o getTargetHeapUtilization()F
.end method

.method public declared-synchronized greylist-max-o test-api getTargetSdkVersion()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    monitor-enter p0

    .line 471
    :try_start_1
    iget v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 471
    .end local p0    # "this":Ldalvik/system/VMRuntime;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public native greylist test-api is64Bit()Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-o test-api isCheckJniEnabled()Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-o isJavaDebuggable()Z
.end method

.method public native greylist-max-o test-api isNativeDebuggable()Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist test-api newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native greylist-max-o test-api newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public blacklist notifyNativeAllocation()V
    .registers 4

    .line 755
    iget v0, p0, Ldalvik/system/VMRuntime;->notifyNativeInterval:I

    .line 756
    .local v0, "myNotifyNativeInterval":I
    if-nez v0, :cond_b

    .line 758
    invoke-static {}, Ldalvik/system/VMRuntime;->getNotifyNativeInterval()I

    move-result v1

    iput v1, p0, Ldalvik/system/VMRuntime;->notifyNativeInterval:I

    move v0, v1

    .line 762
    :cond_b
    iget-object v1, p0, Ldalvik/system/VMRuntime;->allocationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    rem-int/2addr v1, v0

    if-nez v1, :cond_18

    .line 763
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->notifyNativeAllocationsInternal()V

    .line 765
    :cond_18
    return-void
.end method

.method public native blacklist notifyNativeAllocationsInternal()V
.end method

.method public native blacklist test-api notifyStartupCompleted()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist-max-o test-api preloadDexCaches()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist-max-o properties()[Ljava/lang/String;
.end method

.method public greylist test-api registerNativeAllocation(I)V
    .registers 4
    .param p1, "bytes"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V

    .line 710
    return-void
.end method

.method public native greylist test-api registerNativeAllocation(J)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist test-api registerNativeFree(I)V
    .registers 4
    .param p1, "bytes"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 735
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 736
    return-void
.end method

.method public native greylist test-api registerNativeFree(J)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist-max-o test-api requestConcurrentGC()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist-max-o requestHeapTrim()V
.end method

.method public greylist runFinalizationSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 524
    return-void
.end method

.method public native greylist-max-o runHeapTasks()V
.end method

.method public declared-synchronized blacklist test-api setDisabledCompatChanges([J)V
    .registers 3
    .param p1, "disabledCompatChanges"    # [J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    monitor-enter p0

    .line 406
    :try_start_1
    iput-object p1, p0, Ldalvik/system/VMRuntime;->disabledCompatChanges:[J

    .line 407
    iget-object v0, p0, Ldalvik/system/VMRuntime;->disabledCompatChanges:[J

    invoke-direct {p0, v0}, Ldalvik/system/VMRuntime;->setDisabledCompatChangesNative([J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 408
    monitor-exit p0

    return-void

    .line 405
    .end local p0    # "this":Ldalvik/system/VMRuntime;
    .end local p1    # "disabledCompatChanges":[J
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public native greylist-max-o test-api setHiddenApiAccessLogSamplingRate(I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native blacklist test-api setHiddenApiExemptions([Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist setMinimumHeapSize(J)J
    .registers 5
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist setTargetHeapUtilization(F)F
    .registers 5
    .param p1, "newTarget"    # F

    .line 360
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_25

    .line 364
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_17

    .line 365
    const p1, 0x3dcccccd    # 0.1f

    move v0, p1

    goto :goto_18

    .line 364
    :cond_17
    move v0, p1

    .line 370
    .end local p1    # "newTarget":F
    .local v0, "newTarget":F
    :goto_18
    monitor-enter p0

    .line 371
    :try_start_19
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result p1

    .line 372
    .local p1, "oldTarget":F
    invoke-direct {p0, v0}, Ldalvik/system/VMRuntime;->nativeSetTargetHeapUtilization(F)V

    .line 373
    monitor-exit p0

    return p1

    .line 374
    .end local p1    # "oldTarget":F
    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_22

    throw p1

    .line 361
    .end local v0    # "newTarget":F
    .local p1, "newTarget":F
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range (0,1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist test-api setTargetSdkVersion(I)V
    .registers 3
    .param p1, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    monitor-enter p0

    .line 390
    :try_start_1
    iput p1, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    .line 391
    iget v0, p0, Ldalvik/system/VMRuntime;->targetSdkVersion:I

    invoke-direct {p0, v0}, Ldalvik/system/VMRuntime;->setTargetSdkVersionNative(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 392
    monitor-exit p0

    return-void

    .line 389
    .end local p0    # "this":Ldalvik/system/VMRuntime;
    .end local p1    # "targetSdkVersion":I
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public native greylist-max-o startHeapTaskProcessor()V
.end method

.method public native greylist-max-o stopHeapTaskProcessor()V
.end method

.method public greylist trackExternalAllocation(J)Z
    .registers 4
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public greylist trackExternalFree(J)V
    .registers 3
    .param p1, "size"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    return-void
.end method

.method public native greylist-max-o trimHeap()V
.end method

.method public native greylist-max-o test-api updateProcessState(I)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist test-api vmInstructionSet()Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist test-api vmLibrary()Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public native greylist-max-o vmVersion()Ljava/lang/String;
.end method
