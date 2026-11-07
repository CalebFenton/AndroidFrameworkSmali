.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final blacklist ALLOWLISTED_DATA_INFO_MAP:Ljava/lang/String; = "--allowlisted-data-info-map"

.field private static final blacklist ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final blacklist API_ENFORCEMENT_POLICY_MASK:I = 0x3000

.field public static final blacklist API_ENFORCEMENT_POLICY_SHIFT:I

.field public static final blacklist BIND_MOUNT_APP_DATA_DIRS:Ljava/lang/String; = "--bind-mount-data-dirs"

.field public static final blacklist BIND_MOUNT_APP_STORAGE_DIRS:Ljava/lang/String; = "--bind-mount-storage-dirs"

.field public static final blacklist BIND_MOUNT_SYSPROP_OVERRIDES:Ljava/lang/String; = "--bind-mount-sysprop-overrides"

.field public static final blacklist CHILD_ZYGOTE_ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static final blacklist CHILD_ZYGOTE_SOCKET_NAME_ARG:Ljava/lang/String; = "--zygote-socket="

.field public static final blacklist CHILD_ZYGOTE_UID_RANGE_END:Ljava/lang/String; = "--uid-range-end="

.field public static final blacklist CHILD_ZYGOTE_UID_RANGE_START:Ljava/lang/String; = "--uid-range-start="

.field public static final blacklist DEBUG_ALWAYS_JIT:I = 0x40

.field public static final blacklist DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final blacklist DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final blacklist DEBUG_ENABLE_JDWP:I = 0x1

.field public static final blacklist DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final blacklist DEBUG_ENABLE_PTRACE:I = 0x2000000

.field public static final blacklist DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final blacklist DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final blacklist DEBUG_GENERATE_MINI_DEBUG_INFO:I = 0x800

.field public static final blacklist DEBUG_IGNORE_APP_SIGNAL_HANDLER:I = 0x20000

.field public static final blacklist DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final blacklist DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final blacklist DISABLE_TEST_API_ENFORCEMENT_POLICY:I = 0x40000

.field public static final blacklist DISABLE_VERIFIER:I = 0x200

.field private static final blacklist ENABLE_JDWP:Z

.field public static final blacklist ENABLE_PAGE_SIZE_APP_COMPAT:I = 0x4000000

.field private static final blacklist ENABLE_PTRACE:Z

.field private static final blacklist GWP_ASAN:J = 0x8159f9eL

.field public static final blacklist GWP_ASAN_LEVEL_ALWAYS:I = 0x400000

.field public static final blacklist GWP_ASAN_LEVEL_DEFAULT:I = 0x600000

.field public static final blacklist GWP_ASAN_LEVEL_LOTTERY:I = 0x200000

.field public static final blacklist GWP_ASAN_LEVEL_MASK:I = 0x600000

.field public static final blacklist GWP_ASAN_LEVEL_NEVER:I = 0x0

.field static final blacklist INT_ARRAY_2D:[[I

.field public static final blacklist MEMORY_TAG_LEVEL_ASYNC:I = 0x100000

.field public static final blacklist MEMORY_TAG_LEVEL_MASK:I = 0x180000

.field public static final blacklist MEMORY_TAG_LEVEL_NONE:I = 0x0

.field public static final blacklist MEMORY_TAG_LEVEL_SYNC:I = 0x180000

.field public static final blacklist MEMORY_TAG_LEVEL_TBI:I = 0x80000

.field public static final blacklist MOUNT_EXTERNAL_ANDROID_WRITABLE:I = 0x4

.field public static final blacklist MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final blacklist MOUNT_EXTERNAL_INSTALLER:I = 0x2

.field public static final blacklist MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final blacklist MOUNT_EXTERNAL_PASS_THROUGH:I = 0x3

.field private static final blacklist NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field private static final blacklist NATIVE_HEAP_POINTER_TAGGING_SECONDARY_ZYGOTE:J = 0xc5f142dL

.field private static final blacklist NATIVE_HEAP_ZERO_INIT:J = 0xa9ca600L

.field public static final blacklist NATIVE_HEAP_ZERO_INIT_ENABLED:I = 0x800000

.field private static final blacklist NATIVE_MEMTAG_ASYNC:J = 0x817bb2cL

.field private static final blacklist NATIVE_MEMTAG_SYNC:J = 0xa937ebaL

.field public static final blacklist ONLY_USE_SYSTEM_OAT_FILES:I = 0x400

.field public static final blacklist PKG_DATA_INFO_MAP:Ljava/lang/String; = "--pkg-data-info-map"

.field public static final blacklist PRIMARY_SOCKET_NAME:Ljava/lang/String; = "zygote"

.field private static final blacklist PRIORITY_MAX:I = -0x14

.field public static final blacklist PROFILEABLE:I = 0x1000000

.field public static final blacklist PROFILE_FROM_SHELL:I = 0x8000

.field public static final blacklist PROFILE_SYSTEM_SERVER:I = 0x4000

.field public static final blacklist PROPERTY_CHECK_INTERVAL:J = 0xea60L

.field public static final blacklist SECONDARY_SOCKET_NAME:Ljava/lang/String; = "zygote_secondary"

.field public static final blacklist SOCKET_BUFFER_SIZE:I = 0x100

.field public static final blacklist START_AS_TOP_APP_ARG:Ljava/lang/String; = "--is-top-app"

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist USAP_ERROR_PREFIX:Ljava/lang/String; = "Invalid command to USAP: "

.field static final blacklist USAP_MANAGEMENT_MESSAGE_BYTES:I = 0x8

.field public static final blacklist USAP_POOL_PRIMARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_primary"

.field public static final blacklist USAP_POOL_SECONDARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_secondary"

.field public static final blacklist USE_APP_IMAGE_STARTUP_CACHE:I = 0x10000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 102
    nop

    .line 103
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    .line 1037
    const-string/jumbo v0, "persist.debug.dalvik.vm.jdwp.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_JDWP:Z

    .line 1044
    const-string/jumbo v0, "persist.debug.ptrace.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_PTRACE:Z

    .line 1044
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 531
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 532
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 531
    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 534
    :cond_10
    return-void
.end method

.method static blacklist allowFilesOpenedByPreload()V
    .registers 0

    .line 561
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeAllowFilesOpenedByPreload()V

    .line 562
    return-void
.end method

.method static blacklist appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 8
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1200
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    .line 1201
    .local v2, "arg":Ljava/lang/String;
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\\\'\'"

    const-string v5, "\'"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1203
    :cond_1e
    return-void
.end method

.method static blacklist applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 1063
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/high16 v1, 0x2000000

    if-nez v0, :cond_e

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_JDWP:Z

    if-eqz v0, :cond_19

    .line 1064
    :cond_e
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1067
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1069
    :cond_19
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_25

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_PTRACE:Z

    if-eqz v0, :cond_2a

    .line 1070
    :cond_25
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1072
    :cond_2a
    return-void
.end method

.method static blacklist applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1090
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 1092
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget v1, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const v2, 0x2000001

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1095
    :cond_13
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is permitted to specify an explicit invoke-with wrapper command only for debuggable applications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_1b
    :goto_1b
    return-void
.end method

.method static blacklist applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 1126
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1127
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    .line 1129
    :cond_c
    return-void
.end method

.method static blacklist applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1016
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_15

    .line 1017
    :cond_d
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v1, "System UID may not launch process with UID < 1000"

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 1024
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 1025
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 1027
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v0, :cond_2e

    .line 1028
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 1029
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 1031
    :cond_2e
    return-void
.end method

.method private static blacklist blockSigTerm()V
    .registers 0

    .line 903
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBlockSigTerm()V

    .line 904
    return-void
.end method

.method private static blacklist boostUsapPriority()V
    .registers 0

    .line 915
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBoostUsapPriority()V

    .line 916
    return-void
.end method

.method private static blacklist callPostForkChildHooks(IZZLjava/lang/String;)V
    .registers 4
    .param p0, "runtimeFlags"    # I
    .param p1, "isSystemServer"    # Z
    .param p2, "isZygote"    # Z
    .param p3, "instructionSet"    # Ljava/lang/String;

    .line 1171
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->postForkChild(IZZLjava/lang/String;)V

    .line 1172
    return-void
.end method

.method private static blacklist callPostForkSystemServerHooks(I)V
    .registers 1
    .param p0, "runtimeFlags"    # I

    .line 1164
    invoke-static {p0}, Ldalvik/system/ZygoteHooks;->postForkSystemServer(I)V

    .line 1165
    return-void
.end method

.method private static blacklist childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .registers 30
    .param p0, "argBuffer"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p1, "usapPoolSocket"    # Landroid/net/LocalServerSocket;
    .param p2, "writePipe"    # Ljava/io/FileDescriptor;

    .line 756
    move-object/from16 v1, p2

    const-string v2, "Failed to close USAP pool socket"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 758
    .local v3, "pid":I
    const/4 v4, 0x0

    .line 759
    .local v4, "usapOutputStream":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 761
    .local v5, "args":Lcom/android/internal/os/ZygoteArguments;
    const/4 v6, 0x0

    .line 762
    .local v6, "sessionSocket":Landroid/net/LocalSocket;
    const-string v7, "USAP"

    if-nez p0, :cond_5f

    .line 765
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "usap64"

    goto :goto_1c

    :cond_19
    const-string/jumbo v0, "usap32"

    :goto_1c
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lcom/android/internal/os/Zygote;->boostUsapPriority()V

    .line 773
    :goto_22
    const/4 v8, 0x0

    .line 775
    .local v8, "tmpArgBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :try_start_23
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    move-object v6, v0

    .line 779
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 781
    new-instance v0, Ljava/io/DataOutputStream;

    .line 782
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 783
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    .line 784
    .local v0, "peerCredentials":Landroid/net/Credentials;
    new-instance v9, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v9, v6}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    move-object v8, v9

    .line 785
    invoke-static {v8}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v9
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_43} :catch_4d

    .line 786
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .local v9, "args":Lcom/android/internal/os/ZygoteArguments;
    :try_start_43
    invoke-static {v9, v0}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 788
    invoke-static {v9}, Lcom/android/internal/os/Zygote;->validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_4a

    .line 789
    goto :goto_68

    .line 790
    .end local v0    # "peerCredentials":Landroid/net/Credentials;
    :catch_4a
    move-exception v0

    move-object v5, v9

    goto :goto_4e

    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    :catch_4d
    move-exception v0

    .line 791
    .local v0, "ex":Ljava/lang/Exception;
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 795
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 796
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 797
    .end local v8    # "tmpArgBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    goto :goto_22

    .line 800
    :cond_5f
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 802
    :try_start_62
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_183

    move-object v9, v0

    .line 806
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    nop

    .line 809
    :goto_68
    if-eqz v9, :cond_17b

    .line 816
    :try_start_6a
    invoke-static {v9}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, "rlimits":[[I
    iget-object v5, v9, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-eqz v5, :cond_7f

    .line 821
    iget-object v5, v9, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I
    :try_end_7c
    .catchall {:try_start_6a .. :try_end_7c} :catchall_176

    move-object v0, v5

    move-object v14, v0

    goto :goto_80

    .line 820
    :cond_7f
    move-object v14, v0

    .line 824
    .end local v0    # "rlimits":[[I
    .local v14, "rlimits":[[I
    :goto_80
    if-nez p0, :cond_d4

    .line 830
    :try_start_82
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_9c
    .catchall {:try_start_82 .. :try_end_85} :catchall_9a

    .line 843
    :try_start_85
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 844
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 845
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8f
    .catch Landroid/system/ErrnoException; {:try_start_85 .. :try_end_8f} :catch_90
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8f} :catch_90
    .catchall {:try_start_85 .. :try_end_8f} :catchall_176

    .line 849
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    goto :goto_d4

    .line 846
    :catch_90
    move-exception v0

    .line 847
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_91
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_99
    throw v2
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_176

    .line 836
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :catchall_9a
    move-exception v0

    goto :goto_bd

    .line 831
    :catch_9c
    move-exception v0

    .line 832
    .local v0, "ioEx":Ljava/io/IOException;
    :try_start_9d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write response to session socket: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 832
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v14    # "rlimits":[[I
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v5
    :try_end_bd
    .catchall {:try_start_9d .. :try_end_bd} :catchall_9a

    .line 843
    .end local v0    # "ioEx":Ljava/io/IOException;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v14    # "rlimits":[[I
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_bd
    :try_start_bd
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 844
    .local v5, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 845
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_c7
    .catch Landroid/system/ErrnoException; {:try_start_bd .. :try_end_c7} :catch_ca
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c7} :catch_ca
    .catchall {:try_start_bd .. :try_end_c7} :catchall_176

    .line 849
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 850
    nop

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    :try_start_c9
    throw v0

    .line 846
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :catch_ca
    move-exception v0

    .line 847
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_176

    goto :goto_99

    .line 853
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_d4
    :goto_d4
    if-eqz v1, :cond_124

    .line 855
    :try_start_d6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 857
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 864
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 865
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 866
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    const/4 v10, 0x0

    invoke-static {v1, v5, v10, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f5} :catch_fb
    .catchall {:try_start_d6 .. :try_end_f5} :catchall_f9

    .line 873
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    :try_start_f5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_176

    .line 874
    goto :goto_124

    .line 873
    :catchall_f9
    move-exception v0

    goto :goto_11f

    .line 867
    :catch_fb
    move-exception v0

    .line 868
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_fc
    const-string v2, "Failed to write PID (%d) to pipe (%d): %s"

    .line 870
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v8, v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 869
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 868
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v14    # "rlimits":[[I
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v2
    :try_end_11f
    .catchall {:try_start_fc .. :try_end_11f} :catchall_f9

    .line 873
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v14    # "rlimits":[[I
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_11f
    :try_start_11f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 874
    nop

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v0

    .line 877
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :cond_124
    :goto_124
    iget v10, v9, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v11, v9, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v12, v9, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v13, v9, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v15, v9, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v0, v9, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget-boolean v5, v9, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    iget-object v7, v9, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-boolean v0, v9, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    move/from16 v21, v0

    iget-object v0, v9, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v9, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    move-object/from16 v23, v0

    iget-boolean v0, v9, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move/from16 v24, v0

    iget-boolean v0, v9, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v25, v0

    iget-boolean v0, v9, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    move/from16 v26, v0

    move-object/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v10 .. v26}, Lcom/android/internal/os/Zygote;->specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    .line 888
    const-string v0, "Zygote"

    invoke-static {v9, v0}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    .line 890
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 892
    iget v0, v9, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v2, v9, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v5, v9, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v2, v5, v7}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_172
    .catchall {:try_start_11f .. :try_end_172} :catchall_176

    .line 898
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 892
    return-object v0

    .line 898
    .end local v14    # "rlimits":[[I
    :catchall_176
    move-exception v0

    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 899
    throw v0

    .line 810
    :cond_17b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Empty command line"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 803
    .end local v9    # "args":Lcom/android/internal/os/ZygoteArguments;
    .local v5, "args":Lcom/android/internal/os/ZygoteArguments;
    :catch_183
    move-exception v0

    .line 804
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v2, "AppStartup"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v2, Ljava/lang/AssertionError;

    const-string v7, "Failed to parse application start command"

    invoke-direct {v2, v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist containsInetGid([I)Z
    .registers 4
    .param p0, "gids"    # [I

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    .line 321
    aget v1, p0, v0

    const/16 v2, 0xbbb

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    return v1

    .line 320
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;
    .registers 7
    .param p0, "socketName"    # Ljava/lang/String;

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "fullSocketName":Ljava/lang/String;
    :try_start_13
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "env":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1b} :catch_44

    .line 1148
    .end local v1    # "env":Ljava/lang/String;
    .local v2, "fileDesc":I
    nop

    .line 1151
    :try_start_1c
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 1152
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v1, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1153
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_29} :catch_2a

    return-object v3

    .line 1154
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_2a
    move-exception v1

    .line 1155
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error building socket from file descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1146
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "fileDesc":I
    :catch_44
    move-exception v1

    .line 1147
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket unset or invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 9
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1406
    const/4 v0, -0x1

    const/high16 v1, 0x400000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    iget v4, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v4, v0, :cond_12

    .line 1407
    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v2, :cond_10

    .line 1408
    goto :goto_11

    .line 1409
    :cond_10
    move v1, v3

    .line 1407
    :goto_11
    return v1

    .line 1412
    :cond_12
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v4

    if-eq v4, v0, :cond_21

    .line 1413
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 1414
    goto :goto_20

    .line 1415
    :cond_1f
    move v1, v3

    .line 1413
    :goto_20
    return v1

    .line 1417
    :cond_21
    const-wide/32 v4, 0x8159f9e

    invoke-static {v4, v5, p0, p2, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1418
    return v1

    .line 1420
    :cond_2b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_33

    .line 1421
    const/high16 v0, 0x200000

    return v0

    .line 1423
    :cond_33
    const/high16 v0, 0x600000

    return v0
.end method

.method private static blacklist decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1368
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/Zygote;->getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1371
    .local v0, "level":I
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    const/high16 v2, 0x100000

    if-eqz v1, :cond_12

    .line 1374
    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_22

    .line 1375
    const/4 v0, 0x0

    goto :goto_22

    .line 1377
    :cond_12
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1381
    if-eq v0, v2, :cond_1e

    const/high16 v1, 0x180000

    if-ne v0, v1, :cond_22

    .line 1382
    :cond_1e
    const/high16 v0, 0x80000

    goto :goto_22

    .line 1386
    :cond_21
    const/4 v0, 0x0

    .line 1392
    :cond_22
    :goto_22
    if-ne v0, v2, :cond_3e

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_2c

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_3e

    .line 1394
    :cond_2c
    const-string/jumbo v1, "persist.arm64.memtag.default"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sync"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1395
    const/high16 v0, 0x180000

    .line 1398
    :cond_3e
    return v0
.end method

.method static blacklist emptyUsapPool()V
    .registers 0

    .line 607
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeEmptyUsapPool()V

    .line 608
    return-void
.end method

.method private static blacklist enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z
    .registers 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1431
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    iget v3, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-eq v3, v0, :cond_f

    .line 1433
    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    return v1

    .line 1436
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v3

    if-eq v3, v0, :cond_1d

    .line 1437
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-ne v0, v2, :cond_1c

    move v1, v2

    :cond_1c
    return v1

    .line 1440
    :cond_1d
    const-wide/32 v3, 0xa9ca600

    invoke-static {v3, v4, p0, p2, v1}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1441
    return v2

    .line 1443
    :cond_27
    return v1
.end method

.method static blacklist execShell(Ljava/lang/String;)V
    .registers 4
    .param p0, "command"    # Ljava/lang/String;

    .line 1182
    const-string v0, "/system/bin/sh"

    const-string v1, "-c"

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_9
    aget-object v1, v0, v1

    invoke-static {v1, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1187
    nop

    .line 1188
    return-void

    .line 1185
    :catch_10
    move-exception v1

    .line 1186
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I
    .registers 23
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "fdsToClose"    # [I
    .param p9, "fdsToIgnore"    # [I
    .param p10, "startChildZygote"    # Z
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "isTopApp"    # Z
    .param p14, "pkgDataInfoList"    # [Ljava/lang/String;
    .param p15, "allowlistedDataInfoList"    # [Ljava/lang/String;
    .param p16, "bindMountAppDataDirs"    # Z
    .param p17, "bindMountAppStorageDirs"    # Z
    .param p18, "bindMountSyspropOverrides"    # Z

    .line 374
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 376
    invoke-static/range {p0 .. p18}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I

    move-result v0

    .line 381
    .local v0, "pid":I
    if-nez v0, :cond_1c

    .line 383
    const-wide/16 v1, 0x40

    const-string v3, "PostFork"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 386
    if-eqz p2, :cond_1c

    array-length v1, p2

    if-lez v1, :cond_1c

    .line 387
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 392
    :cond_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 394
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 395
    return v0
.end method

.method static blacklist forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;)Ljava/lang/Runnable;
    .registers 7
    .param p0, "argBuffer"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p1, "zygoteSocket"    # Ljava/io/FileDescriptor;
    .param p2, "expectedUid"    # I
    .param p3, "minUid"    # I
    .param p4, "firstNiceName"    # Ljava/lang/String;

    .line 734
    nop

    .line 735
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/ZygoteCommandBuffer;->forkRepeatedly(Ljava/io/FileDescriptor;IILjava/lang/String;)Z

    move-result v0

    .line 736
    .local v0, "in_child":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 737
    invoke-static {p0, v1, v1}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 739
    :cond_d
    return-object v1
.end method

.method static blacklist forkSystemServer(II[II[[IJJ)I
    .registers 12
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .line 503
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 505
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 510
    .local v0, "pid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 512
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 513
    return v0
.end method

.method static blacklist forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;
    .registers 8
    .param p0, "usapPoolSocket"    # Landroid/net/LocalServerSocket;
    .param p1, "sessionSocketRawFDs"    # [I
    .param p2, "isPriorityFork"    # Z

    .line 675
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 676
    .local v0, "pipeFDs":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 677
    .local v2, "readFD":Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    aget-object v3, v0, v3
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_c} :catch_33

    .line 680
    .end local v0    # "pipeFDs":[Ljava/io/FileDescriptor;
    .local v3, "writeFD":Ljava/io/FileDescriptor;
    nop

    .line 682
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v0, v4, p1, v1, p2}, Lcom/android/internal/os/Zygote;->nativeForkApp(II[IZZ)I

    move-result v0

    .line 684
    .local v0, "pid":I
    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 685
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 686
    invoke-static {v1, p0, v3}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 687
    :cond_24
    const/4 v4, -0x1

    if-ne v0, v4, :cond_28

    .line 689
    return-object v1

    .line 692
    :cond_28
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 693
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/internal/os/Zygote;->nativeAddUsapTableEntry(II)V

    .line 694
    return-object v1

    .line 678
    .end local v0    # "pid":I
    .end local v2    # "readFD":Ljava/io/FileDescriptor;
    .end local v3    # "writeFD":Ljava/io/FileDescriptor;
    :catch_33
    move-exception v0

    .line 679
    .local v0, "errnoEx":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create USAP pipe."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 598
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 599
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getConfigurationPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Boolean;

    .line 626
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 627
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 626
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1455
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1466
    .local v0, "runtimeFlags":I
    if-eqz p2, :cond_e

    const-string v1, "arm64"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1467
    :cond_e
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1469
    :cond_13
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1470
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1472
    :cond_1c
    return v0
.end method

.method public static blacklist getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I
    .registers 7
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;

    .line 1481
    nop

    .line 1483
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1482
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1484
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    nop

    .line 1485
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v1

    .line 1489
    .local v1, "runtimeFlags":I
    const/high16 v2, 0x180000

    and-int/2addr v2, v1

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_2a

    .line 1490
    const-wide/32 v2, 0xc5f142d

    const/16 v4, 0x1f

    invoke-static {v2, v3, p0, v0, v4}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1496
    const v2, -0x180001

    and-int/2addr v1, v2

    .line 1497
    or-int/lit8 v1, v1, 0x0

    .line 1499
    :cond_2a
    return v1
.end method

.method private static blacklist getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 12
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.arm64.memtag.app."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, "appOverride":Ljava/lang/String;
    const-string/jumbo v1, "sync"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x180000

    if-eqz v2, :cond_26

    .line 1317
    return v3

    .line 1318
    :cond_26
    const-string v2, "async"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x100000

    if-eqz v4, :cond_31

    .line 1319
    return v5

    .line 1320
    :cond_31
    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3b

    .line 1321
    return v6

    .line 1325
    :cond_3b
    const/4 v4, -0x1

    if-eqz p1, :cond_49

    iget v7, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v7, v4, :cond_49

    .line 1326
    iget v1, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result v1

    return v1

    .line 1330
    :cond_49
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v7

    if-eq v7, v4, :cond_58

    .line 1331
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result v1

    return v1

    .line 1334
    :cond_58
    const-wide/32 v7, 0xa937eba

    invoke-static {v7, v8, p0, p2, v6}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1335
    return v3

    .line 1338
    :cond_62
    const-wide/32 v7, 0x817bb2c

    invoke-static {v7, v8, p0, p2, v6}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1339
    return v5

    .line 1343
    :cond_6c
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v4

    if-nez v4, :cond_73

    .line 1344
    return v6

    .line 1347
    :cond_73
    const-string/jumbo v4, "persist.arm64.memtag.app_default"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    .local v4, "defaultLevel":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1349
    return v3

    .line 1350
    :cond_81
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1351
    return v5

    .line 1355
    :cond_88
    const-wide/32 v1, 0x81774ca

    const/16 v3, 0x1d

    invoke-static {v1, v2, p0, p2, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1357
    const/high16 v1, 0x80000

    return v1

    .line 1360
    :cond_96
    return v6
.end method

.method static blacklist getUsapPipeFDs()[I
    .registers 1

    .line 970
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPipeFDs()[I

    move-result-object v0

    return-object v0
.end method

.method static blacklist getUsapPoolCount()I
    .registers 1

    .line 638
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolCount()I

    move-result v0

    return v0
.end method

.method static blacklist getUsapPoolEventFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 648
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 649
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolEventFD()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 651
    return-object v0
.end method

.method public static blacklist getWrapProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "appName"    # Ljava/lang/String;

    .line 1109
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2c

    .line 1113
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1115
    return-object v1

    .line 1117
    :cond_2b
    return-object v0

    .line 1110
    .end local v1    # "propertyValue":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method static blacklist initNativeState(Z)V
    .registers 1
    .param p0, "isPrimary"    # Z

    .line 583
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeInitNativeState(Z)V

    .line 584
    return-void
.end method

.method private static blacklist isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z
    .registers 6
    .param p0, "change"    # J
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;
    .param p4, "enabledAfter"    # I

    .line 1304
    if-eqz p3, :cond_9

    :try_start_2
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    .line 1305
    :catch_7
    move-exception v0

    goto :goto_a

    .line 1306
    :cond_9
    nop

    .line 1307
    :goto_a
    if-lez p4, :cond_12

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v0, p4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static blacklist markOpenedFilesBeforePreload()V
    .registers 0

    .line 547
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeMarkOpenedFilesBeforePreload()V

    .line 548
    return-void
.end method

.method private static blacklist memtagModeToZygoteMemtagLevel(I)I
    .registers 2
    .param p0, "memtagMode"    # I

    .line 1288
    packed-switch p0, :pswitch_data_c

    .line 1294
    const/4 v0, 0x0

    return v0

    .line 1292
    :pswitch_5
    const/high16 v0, 0x180000

    return v0

    .line 1290
    :pswitch_8
    const/high16 v0, 0x100000

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static blacklist minChildUid(Landroid/net/Credentials;)I
    .registers 3
    .param p0, "peer"    # Landroid/net/Credentials;

    .line 995
    invoke-virtual {p0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 996
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    if-nez v0, :cond_f

    .line 1000
    return v1

    .line 1002
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static native blacklist nativeAddUsapTableEntry(II)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method protected static native blacklist nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeAllowFilesOpenedByPreload()V
.end method

.method private static native blacklist nativeBlockSigTerm()V
.end method

.method private static native blacklist nativeBoostUsapPriority()V
.end method

.method public static native blacklist nativeCurrentTaggingLevel()I
.end method

.method private static native blacklist nativeEmptyUsapPool()V
.end method

.method private static native blacklist nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I
.end method

.method private static native blacklist nativeForkApp(II[IZZ)I
.end method

.method private static native blacklist nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static native blacklist nativeGetUsapPipeFDs()[I
.end method

.method private static native blacklist nativeGetUsapPoolCount()I
.end method

.method private static native blacklist nativeGetUsapPoolEventFD()I
.end method

.method protected static native blacklist nativeInitNativeState(Z)V
.end method

.method protected static native blacklist nativeInstallSeccompUidGidFilter(II)V
.end method

.method private static native blacklist nativeMarkOpenedFilesBeforePreload()V
.end method

.method public static native blacklist nativeParseSigChld([BI[I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native blacklist nativePreApplicationInit()V
.end method

.method private static native blacklist nativeRemoveUsapTableEntry(I)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V
.end method

.method public static native blacklist nativeSupportsMemoryTagging()Z
.end method

.method public static native blacklist nativeSupportsTaggedPointers()Z
.end method

.method private static native blacklist nativeUnblockSigTerm()V
.end method

.method static blacklist removeUsapTableEntry(I)Z
    .registers 2
    .param p0, "usapPID"    # I

    .line 982
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeRemoveUsapTableEntry(I)Z

    move-result v0

    return v0
.end method

.method static blacklist setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "loggingTag"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 922
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    .line 923
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 924
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    .line 926
    :cond_14
    const-string v0, "Unable to set package name."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_19
    return-void
.end method

.method private static blacklist specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V
    .registers 20
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "startChildZygote"    # Z
    .param p9, "instructionSet"    # Ljava/lang/String;
    .param p10, "appDataDir"    # Ljava/lang/String;
    .param p11, "isTopApp"    # Z
    .param p12, "pkgDataInfoList"    # [Ljava/lang/String;
    .param p13, "allowlistedDataInfoList"    # [Ljava/lang/String;
    .param p14, "bindMountAppDataDirs"    # Z
    .param p15, "bindMountAppStorageDirs"    # Z
    .param p16, "bindMountSyspropOverrides"    # Z

    .line 442
    invoke-static/range {p0 .. p16}, Lcom/android/internal/os/Zygote;->nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    .line 448
    const-wide/16 v0, 0x40

    const-string v2, "PostFork"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 450
    if-eqz p2, :cond_16

    array-length v0, p2

    if-lez v0, :cond_16

    .line 451
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 455
    :cond_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 463
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 464
    return-void
.end method

.method private static blacklist unblockSigTerm()V
    .registers 0

    .line 909
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnblockSigTerm()V

    .line 910
    return-void
.end method

.method private static blacklist validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 938
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v0, :cond_a3

    .line 940
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-nez v0, :cond_9b

    .line 942
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-nez v0, :cond_93

    .line 944
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-nez v0, :cond_8b

    .line 946
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_83

    .line 948
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v0, :cond_7b

    .line 951
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_73

    .line 954
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-ne v0, v1, :cond_6b

    .line 957
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_63

    .line 959
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 964
    return-void

    .line 960
    :cond_34
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 961
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 962
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --invoke-with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-statslog-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-log-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --set-api-denylist-exemptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --start-child-zygote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --get-pid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --query-abi-list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
