.class public final Landroid/system/virtualmachine/VirtualMachineConfig;
.super Ljava/lang/Object;
.source "VirtualMachineConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineConfig$Builder;,
        Landroid/system/virtualmachine/VirtualMachineConfig$OsName;,
        Landroid/system/virtualmachine/VirtualMachineConfig$CpuTopology;,
        Landroid/system/virtualmachine/VirtualMachineConfig$DebugLevel;
    }
.end annotation


# static fields
.field public static final whitelist CPU_TOPOLOGY_MATCH_HOST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CPU_TOPOLOGY_ONE_CPU:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEBUG_LEVEL_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEBUG_LEVEL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final blacklist KEY_APKPATH:Ljava/lang/String; = "apkPath"

.field private static final blacklist KEY_CONNECT_VM_CONSOLE:Ljava/lang/String; = "connectVmConsole"

.field private static final blacklist KEY_CONSOLE_INPUT_DEVICE:Ljava/lang/String; = "consoleInputDevice"

.field private static final blacklist KEY_CPU_TOPOLOGY:Ljava/lang/String; = "cpuTopology"

.field private static final blacklist KEY_CUSTOMIMAGECONFIG:Ljava/lang/String; = "customImageConfig"

.field private static final blacklist KEY_DEBUGLEVEL:Ljava/lang/String; = "debugLevel"

.field private static final blacklist KEY_ENCRYPTED_STORAGE_BYTES:Ljava/lang/String; = "encryptedStorageBytes"

.field private static final blacklist KEY_EXTRA_APKS:Ljava/lang/String; = "extraApks"

.field private static final blacklist KEY_MEMORY_BYTES:Ljava/lang/String; = "memoryBytes"

.field private static final blacklist KEY_OS:Ljava/lang/String; = "os"

.field private static final blacklist KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final blacklist KEY_PAYLOADBINARYNAME:Ljava/lang/String; = "payloadBinaryPath"

.field private static final blacklist KEY_PAYLOADCONFIGPATH:Ljava/lang/String; = "payloadConfigPath"

.field private static final blacklist KEY_PROTECTED_VM:Ljava/lang/String; = "protectedVm"

.field private static final blacklist KEY_SHOULD_BOOST_UCLAMP:Ljava/lang/String; = "shouldBoostUclamp"

.field private static final blacklist KEY_SHOULD_USE_HUGEPAGES:Ljava/lang/String; = "shouldUseHugepages"

.field private static final blacklist KEY_VENDOR_DISK_IMAGE_PATH:Ljava/lang/String; = "vendorDiskImagePath"

.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist KEY_VM_CONSOLE_INPUT_SUPPORTED:Ljava/lang/String; = "vmConsoleInputSupported"

.field private static final blacklist KEY_VM_OUTPUT_CAPTURED:Ljava/lang/String; = "vmOutputCaptured"

.field public static final blacklist MICRODROID:Ljava/lang/String; = "microdroid"

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualMachineConfig"

.field private static final blacklist U_BOOT_PREBUILT_PATH_ARM:Ljava/lang/String; = "/apex/com.android.virt/etc/u-boot.bin"

.field private static final blacklist U_BOOT_PREBUILT_PATH_X86:Ljava/lang/String; = "/apex/com.android.virt/etc/u-boot.rom"

.field private static final blacklist VERSION:I = 0xa


# instance fields
.field private final blacklist mApkPath:Ljava/lang/String;

.field private final blacklist mConnectVmConsole:Z

.field private final blacklist mConsoleInputDevice:Ljava/lang/String;

.field private final blacklist mCpuTopology:I

.field private final blacklist mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

.field private final blacklist mDebugLevel:I

.field private final blacklist mEncryptedStorageBytes:J

.field private final blacklist mExtraApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMemoryBytes:J

.field private final blacklist mOs:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPayloadBinaryName:Ljava/lang/String;

.field private final blacklist mPayloadConfigPath:Ljava/lang/String;

.field private final blacklist mProtectedVm:Z

.field private final blacklist mShouldBoostUclamp:Z

.field private final blacklist mShouldUseHugepages:Z

.field private final blacklist mVendorDiskImage:Ljava/io/File;

.field private final blacklist mVmConsoleInputSupported:Z

.field private final blacklist mVmOutputCaptured:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3_58sqxSk-2JJhmQ8-cu_a6oMk8(Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->lambda$toVsRawConfig$1(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$dDURXP83uYIGYK3EDa9MGIKOZ-A(Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->lambda$toVsRawConfig$2(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;IZJILjava/lang/String;JZZZLjava/io/File;Ljava/lang/String;ZZ)V
    .registers 38
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p4, "payloadConfigPath"    # Ljava/lang/String;
    .param p5, "payloadBinaryName"    # Ljava/lang/String;
    .param p6, "customImageConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    .param p7, "debugLevel"    # I
    .param p8, "protectedVm"    # Z
    .param p9, "memoryBytes"    # J
    .param p11, "cpuTopology"    # I
    .param p12, "consoleInputDevice"    # Ljava/lang/String;
    .param p13, "encryptedStorageBytes"    # J
    .param p15, "vmOutputCaptured"    # Z
    .param p16, "vmConsoleInputSupported"    # Z
    .param p17, "connectVmConsole"    # Z
    .param p18, "vendorDiskImage"    # Ljava/io/File;
    .param p19, "os"    # Ljava/lang/String;
    .param p20, "shouldBoostUclamp"    # Z
    .param p21, "shouldUseHugepages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;",
            "IZJI",
            "Ljava/lang/String;",
            "JZZZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 256
    .local p3, "extraApks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 258
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    .line 259
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    .line 260
    nop

    .line 261
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v4, p3

    goto :goto_2e

    .line 263
    :cond_1b
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 264
    move-object/from16 v4, p3

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 263
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_2e
    iput-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mExtraApks:Ljava/util/List;

    .line 265
    move-object/from16 v3, p4

    iput-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    .line 266
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    .line 267
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    .line 268
    move/from16 v7, p7

    iput v7, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    .line 269
    move/from16 v8, p8

    iput-boolean v8, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    .line 270
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    .line 271
    move/from16 v11, p11

    iput v11, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    .line 272
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConsoleInputDevice:Ljava/lang/String;

    .line 273
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    .line 274
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    .line 275
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmConsoleInputSupported:Z

    .line 276
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConnectVmConsole:Z

    .line 277
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    .line 278
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mOs:Ljava/lang/String;

    .line 279
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldBoostUclamp:Z

    .line 280
    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldUseHugepages:Z

    .line 281
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;IZJILjava/lang/String;JZZZLjava/io/File;Ljava/lang/String;ZZLandroid/system/virtualmachine/VirtualMachineConfig-IA;)V
    .registers 23

    invoke-direct/range {p0 .. p21}, Landroid/system/virtualmachine/VirtualMachineConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;IZJILjava/lang/String;JZZZLjava/io/File;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private blacklist bytesToMebiBytes(J)I
    .registers 9
    .param p1, "mMemoryBytes"    # J

    .line 953
    const-wide/32 v0, 0x100000

    .line 956
    .local v0, "oneMebi":J
    const-wide/32 v2, 0x7ffffffe

    mul-long/2addr v2, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_f

    .line 957
    const v2, 0x7fffffff

    return v2

    .line 959
    :cond_f
    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method private blacklist findPayloadApk(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 16
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 916
    const-string v0, "VirtualMachineConfig"

    :try_start_2
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    .line 918
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 917
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_aa

    .line 921
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 923
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 924
    .local v2, "splitApkPaths":[Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 928
    .local v3, "abis":[Ljava/lang/String;
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    if-eqz v4, :cond_a7

    if-eqz v2, :cond_a7

    array-length v4, v3

    if-eqz v4, :cond_a7

    .line 929
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 930
    .local v4, "libraryNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    array-length v6, v3

    if-ge v5, v6, :cond_49

    .line 931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 930
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 934
    .end local v5    # "i":I
    :cond_49
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_4c
    if-ge v7, v5, :cond_a7

    aget-object v8, v2, v7

    .line 935
    .local v8, "path":Ljava/lang/String;
    :try_start_50
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_55} :catch_8d

    .line 936
    .local v9, "zip":Ljava/util/zip/ZipFile;
    :try_start_55
    array-length v10, v4

    move v11, v6

    :goto_57
    if-ge v11, v10, :cond_7f

    aget-object v12, v4, v11

    .line 937
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_7c

    .line 938
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found payload in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_83

    .line 939
    nop

    .line 942
    :try_start_78
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 939
    return-object v8

    .line 936
    .end local v12    # "name":Ljava/lang/String;
    :cond_7c
    add-int/lit8 v11, v11, 0x1

    goto :goto_57

    .line 942
    :cond_7f
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_82} :catch_8d

    .line 944
    .end local v9    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_a4

    .line 935
    .restart local v9    # "zip":Ljava/util/zip/ZipFile;
    :catchall_83
    move-exception v10

    :try_start_84
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception v11

    :try_start_89
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "splitApkPaths":[Ljava/lang/String;
    .end local v3    # "abis":[Ljava/lang/String;
    .end local v4    # "libraryNames":[Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineConfig;
    .end local p1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_8c
    throw v10
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8d} :catch_8d

    .line 942
    .end local v9    # "zip":Ljava/util/zip/ZipFile;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "splitApkPaths":[Ljava/lang/String;
    .restart local v3    # "abis":[Ljava/lang/String;
    .restart local v4    # "libraryNames":[Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineConfig;
    .restart local p1    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_8d
    move-exception v9

    .line 943
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to scan split APK: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    :goto_a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 949
    .end local v4    # "libraryNames":[Ljava/lang/String;
    :cond_a7
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0

    .line 919
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "splitApkPaths":[Ljava/lang/String;
    .end local v3    # "abis":[Ljava/lang/String;
    :catch_aa
    move-exception v0

    .line 920
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Package not found"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist from(Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 4
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 297
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_17

    .line 298
    .local v0, "input":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_5
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->fromInputStream(Ljava/io/InputStream;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 299
    :try_start_9
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_17

    .line 298
    return-object v1

    .line 297
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_16
    throw v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_17

    .line 299
    .end local v0    # "input":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local p0    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_17
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to read VM config from file descriptor"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist from(Ljava/io/File;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 286
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_17

    .line 287
    .local v0, "input":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->fromInputStream(Ljava/io/InputStream;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 288
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_17

    .line 287
    return-object v1

    .line 286
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "file":Ljava/io/File;
    :goto_16
    throw v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_17

    .line 288
    .end local v0    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_17
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Failed to read VM config from file"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist fromInputStream(Ljava/io/InputStream;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 308
    invoke-static {p0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 310
    .local v0, "b":Landroid/os/PersistableBundle;
    :try_start_4
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 311
    :catch_9
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Persisted VM config is invalid"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 20
    .param p0, "b"    # Landroid/os/PersistableBundle;

    .line 318
    move-object/from16 v0, p0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    .local v1, "version":I
    const/16 v2, 0xa

    if-gt v1, v2, :cond_118

    .line 324
    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;-><init>(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig-IA;)V

    .line 327
    .local v3, "builder":Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    const-string v4, "apkPath"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "apkPath":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 329
    invoke-virtual {v3, v4}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setApkPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 332
    :cond_23
    const-string v5, "payloadConfigPath"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "payloadConfigPath":Ljava/lang/String;
    const-string v6, "payloadBinaryPath"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "payloadBinaryName":Ljava/lang/String;
    const-string v7, "customImageConfig"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 335
    .local v7, "customImageConfigBundle":Landroid/os/PersistableBundle;
    if-eqz v7, :cond_40

    .line 336
    nop

    .line 337
    invoke-static {v7}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->from(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v8

    .line 336
    invoke-virtual {v3, v8}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setCustomImageConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    goto :goto_49

    .line 338
    :cond_40
    if-eqz v5, :cond_46

    .line 339
    invoke-virtual {v3, v5}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setPayloadConfigPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    goto :goto_49

    .line 341
    :cond_46
    invoke-virtual {v3, v6}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setPayloadBinaryName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 344
    :goto_49
    const-string v8, "debugLevel"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 345
    .local v8, "debugLevel":I
    if-eqz v8, :cond_6e

    const/4 v9, 0x1

    if-ne v8, v9, :cond_55

    goto :goto_6e

    .line 346
    :cond_55
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid debugLevel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 348
    :cond_6e
    :goto_6e
    invoke-virtual {v3, v8}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setDebugLevel(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 349
    const-string v9, "protectedVm"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v3, v9}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setProtectedVm(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 350
    const-string v9, "memoryBytes"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 351
    .local v9, "memoryBytes":J
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_89

    .line 352
    invoke-virtual {v3, v9, v10}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setMemoryBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 354
    :cond_89
    const-string v13, "cpuTopology"

    invoke-virtual {v0, v13}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setCpuTopology(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 355
    const-string v13, "consoleInputDevice"

    invoke-virtual {v0, v13}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 356
    .local v13, "consoleInputDevice":Ljava/lang/String;
    if-eqz v13, :cond_9d

    .line 357
    invoke-virtual {v3, v13}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setConsoleInputDevice(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 359
    :cond_9d
    const-string v14, "encryptedStorageBytes"

    invoke-virtual {v0, v14}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 360
    .local v14, "encryptedStorageBytes":J
    cmp-long v11, v14, v11

    if-eqz v11, :cond_aa

    .line 361
    invoke-virtual {v3, v14, v15}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setEncryptedStorageBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 363
    :cond_aa
    const-string v11, "vmOutputCaptured"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setVmOutputCaptured(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 364
    const-string v11, "vmConsoleInputSupported"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setVmConsoleInputSupported(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 365
    const-string v11, "connectVmConsole"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setConnectVmConsole(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 367
    const-string v11, "vendorDiskImagePath"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 368
    .local v11, "vendorDiskImagePath":Ljava/lang/String;
    if-eqz v11, :cond_d5

    .line 369
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setVendorDiskImage(Ljava/io/File;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 372
    :cond_d5
    const-string v12, "os"

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setOs(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 374
    const-string v12, "extraApks"

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 375
    .local v12, "extraApks":[Ljava/lang/String;
    if-eqz v12, :cond_fd

    .line 376
    move-object/from16 v16, v2

    .end local v2    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    array-length v2, v12

    const/16 v17, 0x0

    move-object/from16 v18, v4

    move/from16 v4, v17

    .end local v4    # "apkPath":Ljava/lang/String;
    .local v18, "apkPath":Ljava/lang/String;
    :goto_ef
    if-ge v4, v2, :cond_101

    move/from16 v17, v2

    aget-object v2, v12, v4

    .line 377
    .local v2, "extraApk":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->addExtraApk(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 376
    .end local v2    # "extraApk":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v17

    goto :goto_ef

    .line 375
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "apkPath":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .restart local v4    # "apkPath":Ljava/lang/String;
    :cond_fd
    move-object/from16 v16, v2

    move-object/from16 v18, v4

    .line 381
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "apkPath":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v18    # "apkPath":Ljava/lang/String;
    :cond_101
    const-string v2, "shouldBoostUclamp"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setShouldBoostUclamp(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 382
    const-string v2, "shouldUseHugepages"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setShouldUseHugepages(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    .line 384
    invoke-virtual {v3}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v2

    return-object v2

    .line 320
    .end local v3    # "builder":Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .end local v5    # "payloadConfigPath":Ljava/lang/String;
    .end local v6    # "payloadBinaryName":Ljava/lang/String;
    .end local v7    # "customImageConfigBundle":Landroid/os/PersistableBundle;
    .end local v8    # "debugLevel":I
    .end local v9    # "memoryBytes":J
    .end local v11    # "vendorDiskImagePath":Ljava/lang/String;
    .end local v12    # "extraApks":[Ljava/lang/String;
    .end local v13    # "consoleInputDevice":Ljava/lang/String;
    .end local v14    # "encryptedStorageBytes":J
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "apkPath":Ljava/lang/String;
    :cond_118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " too high; current is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic blacklist lambda$toVsRawConfig$0(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 698
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 700
    :catch_c
    move-exception v0

    .line 701
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic blacklist lambda$toVsRawConfig$1(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 708
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-direct {p0, v0, v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->openOrNull(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$toVsRawConfig$2(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 712
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-direct {p0, v0, v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->openOrNull(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$3([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "params"    # [Ljava/lang/String;

    .line 725
    const-string v0, " "

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$4([Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;)Ljava/lang/Integer;
    .registers 2
    .param p0, "arr"    # [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    .line 730
    array-length v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$5([Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;)Ljava/lang/Integer;
    .registers 2
    .param p0, "arr"    # [Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    .line 762
    array-length v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$6(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;)Landroid/system/virtualizationservice/DisplayConfig;
    .registers 2
    .param p0, "dc"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    .line 802
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;->toParcelable()Landroid/system/virtualizationservice/DisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$7(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;)Landroid/system/virtualizationservice/GpuConfig;
    .registers 2
    .param p0, "dc"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    .line 806
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;->toParcelable()Landroid/system/virtualizationservice/GpuConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$8(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;)Landroid/system/virtualizationservice/AudioConfig;
    .registers 2
    .param p0, "ac"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    .line 825
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;->toParcelable()Landroid/system/virtualizationservice/AudioConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$toVsRawConfig$9(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;)Landroid/system/virtualizationservice/UsbConfig;
    .registers 3
    .param p0, "uc"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    .line 832
    new-instance v0, Landroid/system/virtualizationservice/UsbConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/UsbConfig;-><init>()V

    .line 833
    .local v0, "usbConfig":Landroid/system/virtualizationservice/UsbConfig;
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;->getUsbController()Z

    move-result v1

    iput-boolean v1, v0, Landroid/system/virtualizationservice/UsbConfig;->controller:Z

    .line 834
    return-object v0
.end method

.method private blacklist openOrNull(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 652
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 653
    :catch_5
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "VirtualMachineConfig"

    const-string v2, "cannot open"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist serializeOutputStream(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 399
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string v1, "version"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 400
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 401
    const-string v1, "packageName"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_17
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 404
    const-string v1, "apkPath"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_22
    const-string v1, "payloadConfigPath"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "payloadBinaryPath"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    if-eqz v1, :cond_3f

    .line 409
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "customImageConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 411
    :cond_3f
    const-string v1, "debugLevel"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 412
    const-string v1, "protectedVm"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    const-string v1, "cpuTopology"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 414
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConsoleInputDevice:Ljava/lang/String;

    if-eqz v1, :cond_5f

    .line 415
    const-string v1, "consoleInputDevice"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConsoleInputDevice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_5f
    iget-wide v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6e

    .line 418
    const-string v1, "memoryBytes"

    iget-wide v5, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 420
    :cond_6e
    iget-wide v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_7b

    .line 421
    const-string v1, "encryptedStorageBytes"

    iget-wide v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 423
    :cond_7b
    const-string v1, "vmOutputCaptured"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    const-string v1, "vmConsoleInputSupported"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmConsoleInputSupported:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    const-string v1, "connectVmConsole"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConnectVmConsole:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    if-eqz v1, :cond_9f

    .line 427
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vendorDiskImagePath"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_9f
    const-string v1, "os"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mOs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mExtraApks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_be

    .line 431
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mExtraApks:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 432
    .local v1, "extraApks":[Ljava/lang/String;
    const-string v2, "extraApks"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 434
    .end local v1    # "extraApks":[Ljava/lang/String;
    :cond_be
    const-string v1, "shouldBoostUclamp"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldBoostUclamp:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v1, "shouldUseHugepages"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldUseHugepages:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 437
    return-void
.end method

.method private blacklist startCrosvmVirtiofs(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V
    .registers 24
    .param p1, "sharedPath"    # Ljava/lang/String;
    .param p2, "host_uid"    # I
    .param p3, "guest_uid"    # I
    .param p4, "guest_gid"    # I
    .param p5, "tagName"    # Ljava/lang/String;
    .param p6, "mask"    # I
    .param p7, "socketPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    nop

    .line 669
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d %d %d %d %d /"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "ugidMapValue":Ljava/lang/String;
    const-string v1, "ugid_map=\'%s\'"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 671
    .local v10, "cfgArg":Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--socket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, p7

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, p5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--shared-dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, p1

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "--disable-sandbox"

    const-string v12, "--skip-pivot-root=true"

    const-string v3, "/apex/com.android.virt/bin/crosvm"

    const-string v4, "device"

    const-string v5, "fs"

    const-string v9, "--cfg"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 684
    .local v1, "pb":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 685
    return-void
.end method


# virtual methods
.method public whitelist getApkPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCpuTopology()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 538
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    return v0
.end method

.method public blacklist getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    return-object v0
.end method

.method public whitelist getDebugLevel()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 505
    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    return v0
.end method

.method public whitelist getEncryptedStorageBytes()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 560
    iget-wide v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    return-wide v0
.end method

.method public blacklist getExtraApks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mExtraApks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMemoryBytes()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 527
    iget-wide v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    return-wide v0
.end method

.method public blacklist getOs()Ljava/lang/String;
    .registers 2

    .line 606
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mOs:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPayloadBinaryName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPayloadConfigPath()Ljava/lang/String;
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isCompatibleWith(Landroid/system/virtualmachine/VirtualMachineConfig;)Z
    .registers 6
    .param p1, "other"    # Landroid/system/virtualmachine/VirtualMachineConfig;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 633
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 634
    return v0

    .line 636
    :cond_4
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    iget v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_70

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    iget-boolean v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    if-ne v1, v2, :cond_70

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    iget-boolean v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    if-ne v1, v2, :cond_70

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmConsoleInputSupported:Z

    iget-boolean v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmConsoleInputSupported:Z

    if-ne v1, v2, :cond_70

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConnectVmConsole:Z

    iget-boolean v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mConnectVmConsole:Z

    if-ne v1, v2, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    if-nez v1, :cond_29

    move v1, v0

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    if-nez v2, :cond_30

    move v2, v0

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    if-ne v1, v2, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConsoleInputDevice:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mConsoleInputDevice:Ljava/lang/String;

    .line 642
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    .line 643
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    .line 644
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    .line 645
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mOs:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mOs:Ljava/lang/String;

    .line 646
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mExtraApks:Ljava/util/List;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mExtraApks:Ljava/util/List;

    .line 647
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_71

    :cond_70
    move v0, v3

    .line 636
    :goto_71
    return v0
.end method

.method public blacklist isConnectVmConsole()Z
    .registers 2

    .line 593
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mConnectVmConsole:Z

    return v0
.end method

.method public whitelist isEncryptedStorageEnabled()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 548
    iget-wide v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isProtectedVm()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 515
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    return v0
.end method

.method public blacklist isVmConsoleInputSupported()Z
    .registers 2

    .line 583
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmConsoleInputSupported:Z

    return v0
.end method

.method public whitelist isVmOutputCaptured()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 572
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    return v0
.end method

.method blacklist serialize(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 389
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_17

    .line 390
    .local v0, "output":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->serializeOutputStream(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 391
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_17

    .line 393
    .end local v0    # "output":Ljava/io/FileOutputStream;
    nop

    .line 394
    return-void

    .line 389
    .restart local v0    # "output":Ljava/io/FileOutputStream;
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineConfig;
    .end local p1    # "file":Ljava/io/File;
    :goto_16
    throw v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_17

    .line 391
    .end local v0    # "output":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineConfig;
    .restart local p1    # "file":Ljava/io/File;
    :catch_17
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to write VM config"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist shouldUseHugepages()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 618
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldUseHugepages:Z

    return v0
.end method

.method blacklist toVsConfig(Landroid/content/pm/PackageManager;)Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    .registers 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    .line 851
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;-><init>()V

    .line 853
    .local v0, "vsConfig":Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    goto :goto_10

    :cond_c
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->findPayloadApk(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "apkPath":Ljava/lang/String;
    :goto_10
    :try_start_10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1d} :catch_cc

    .line 859
    nop

    .line 860
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 861
    new-instance v2, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    invoke-direct {v2}, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;-><init>()V

    .line 862
    .local v2, "payloadConfig":Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    iput-object v4, v2, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;->payloadBinaryName:Ljava/lang/String;

    .line 863
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;->extraApks:Ljava/util/List;

    .line 864
    invoke-static {v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->payloadConfig(Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    move-result-object v4

    iput-object v4, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    .line 865
    .end local v2    # "payloadConfig":Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;
    goto :goto_40

    .line 866
    :cond_38
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->configPath(Ljava/lang/String;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    move-result-object v2

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    .line 868
    :goto_40
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mOs:Ljava/lang/String;

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->osName:Ljava/lang/String;

    .line 869
    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_d6

    .line 874
    const/4 v2, 0x0

    iput-byte v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    goto :goto_51

    .line 871
    :pswitch_4e
    iput-byte v4, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    .line 872
    nop

    .line 877
    :goto_51
    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    iput-boolean v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->protectedVm:Z

    .line 878
    iget-wide v5, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    invoke-direct {p0, v5, v6}, Landroid/system/virtualmachine/VirtualMachineConfig;->bytesToMebiBytes(J)I

    move-result v2

    iput v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->memoryMib:I

    .line 879
    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    packed-switch v2, :pswitch_data_dc

    .line 885
    new-instance v2, Landroid/system/virtualizationservice/CpuOptions;

    invoke-direct {v2}, Landroid/system/virtualizationservice/CpuOptions;-><init>()V

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    .line 886
    iget-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-static {v4}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology;->cpuCount(I)Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    move-result-object v4

    iput-object v4, v2, Landroid/system/virtualizationservice/CpuOptions;->cpuTopology:Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    goto :goto_82

    .line 881
    :pswitch_72
    new-instance v2, Landroid/system/virtualizationservice/CpuOptions;

    invoke-direct {v2}, Landroid/system/virtualizationservice/CpuOptions;-><init>()V

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    .line 882
    iget-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-static {v4}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology;->matchHost(Z)Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    move-result-object v4

    iput-object v4, v2, Landroid/system/virtualizationservice/CpuOptions;->cpuTopology:Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    .line 883
    nop

    .line 890
    :goto_82
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    if-eqz v2, :cond_c3

    .line 891
    new-instance v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

    invoke-direct {v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;-><init>()V

    .line 893
    .local v2, "customConfig":Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;
    sget-object v4, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->devices:[Ljava/lang/String;

    .line 894
    sget-object v4, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->extraKernelCmdlineParams:[Ljava/lang/String;

    .line 895
    sget-object v4, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->teeServices:[Ljava/lang/String;

    .line 897
    :try_start_97
    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    .line 898
    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;->vendorImage:Landroid/os/ParcelFileDescriptor;
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9f} :catch_a3

    .line 903
    nop

    .line 904
    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->customConfig:Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;

    goto :goto_c3

    .line 899
    :catch_a3
    move-exception v3

    .line 900
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open vendor disk image "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVendorDiskImage:Ljava/io/File;

    .line 901
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 907
    .end local v2    # "customConfig":Landroid/system/virtualizationservice/VirtualMachineAppConfig$CustomConfig;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_c3
    :goto_c3
    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldBoostUclamp:Z

    iput-boolean v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->boostUclamp:Z

    .line 908
    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mShouldUseHugepages:Z

    iput-boolean v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->hugePages:Z

    .line 910
    return-object v0

    .line 857
    :catch_cc
    move-exception v2

    .line 858
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "Failed to open APK"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_4e
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_72
    .end packed-switch
.end method

.method blacklist toVsRawConfig()Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineRawConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineRawConfig;-><init>()V

    move-object v1, v0

    .line 689
    .local v1, "config":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getCustomImageConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    move-result-object v2

    .line 690
    .local v2, "customImageConfig":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->name:Ljava/lang/String;

    .line 692
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->instanceId:[B

    .line 693
    nop

    .line 694
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getKernelPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 695
    invoke-virtual {v0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 704
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->kernel:Landroid/os/ParcelFileDescriptor;

    .line 706
    nop

    .line 707
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getInitrdPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda2;-><init>(Landroid/system/virtualmachine/VirtualMachineConfig;)V

    .line 708
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 709
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->initrd:Landroid/os/ParcelFileDescriptor;

    .line 710
    nop

    .line 711
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getBootloaderPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda3;-><init>(Landroid/system/virtualmachine/VirtualMachineConfig;)V

    .line 712
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 713
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    .line 715
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->kernel:Landroid/os/ParcelFileDescriptor;

    const/high16 v5, 0x10000000

    if-nez v0, :cond_ac

    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_ac

    .line 716
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda4;

    const-string v7, "x86_64"

    invoke-direct {v6, v7}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 717
    new-instance v0, Ljava/io/File;

    const-string v6, "/apex/com.android.virt/etc/u-boot.rom"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Landroid/system/virtualmachine/VirtualMachineConfig;->openOrNull(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    goto :goto_ac

    .line 719
    :cond_9f
    new-instance v0, Ljava/io/File;

    const-string v6, "/apex/com.android.virt/etc/u-boot.bin"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Landroid/system/virtualmachine/VirtualMachineConfig;->openOrNull(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->bootloader:Landroid/os/ParcelFileDescriptor;

    .line 723
    :cond_ac
    :goto_ac
    nop

    .line 724
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getParams()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v6, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda5;-><init>()V

    .line 725
    invoke-virtual {v0, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 726
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->params:Ljava/lang/String;

    .line 727
    nop

    .line 729
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getDisks()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda6;-><init>()V

    .line 730
    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 731
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [Landroid/system/virtualizationservice/DiskImage;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ec
    iget-object v6, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    array-length v6, v6

    if-ge v0, v6, :cond_196

    .line 733
    iget-object v6, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    new-instance v7, Landroid/system/virtualizationservice/DiskImage;

    invoke-direct {v7}, Landroid/system/virtualizationservice/DiskImage;-><init>()V

    aput-object v7, v6, v0

    .line 734
    iget-object v6, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    aget-object v6, v6, v0

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getDisks()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->isWritable()Z

    move-result v7

    iput-boolean v7, v6, Landroid/system/virtualizationservice/DiskImage;->writable:Z

    .line 735
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getDisks()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->getImagePath()Ljava/lang/String;

    move-result-object v6

    .line 736
    .local v6, "diskImagePath":Ljava/lang/String;
    const/high16 v7, 0x30000000

    if-eqz v6, :cond_132

    .line 737
    iget-object v8, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    aget-object v8, v8, v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    iget-object v10, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    aget-object v10, v10, v0

    iget-boolean v10, v10, Landroid/system/virtualizationservice/DiskImage;->writable:Z

    if-eqz v10, :cond_12b

    move v10, v7

    goto :goto_12c

    :cond_12b
    move v10, v5

    .line 738
    :goto_12c
    invoke-static {v9, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    iput-object v9, v8, Landroid/system/virtualizationservice/DiskImage;->image:Landroid/os/ParcelFileDescriptor;

    .line 743
    :cond_132
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v8, "partitions":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualizationservice/Partition;>;"
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getDisks()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Disk;->getPartitions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_145
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_184

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;

    .line 746
    .local v10, "p":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;
    new-instance v11, Landroid/system/virtualizationservice/Partition;

    invoke-direct {v11}, Landroid/system/virtualizationservice/Partition;-><init>()V

    .line 747
    .local v11, "part":Landroid/system/virtualizationservice/Partition;
    iget-object v12, v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->name:Ljava/lang/String;

    iput-object v12, v11, Landroid/system/virtualizationservice/Partition;->label:Ljava/lang/String;

    .line 748
    new-instance v12, Ljava/io/File;

    iget-object v13, v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->imagePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    iget-boolean v13, v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->writable:Z

    if-eqz v13, :cond_167

    move v13, v7

    goto :goto_168

    :cond_167
    move v13, v5

    .line 749
    :goto_168
    invoke-static {v12, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    iput-object v12, v11, Landroid/system/virtualizationservice/Partition;->image:Landroid/os/ParcelFileDescriptor;

    .line 752
    iget-boolean v12, v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->writable:Z

    iput-boolean v12, v11, Landroid/system/virtualizationservice/Partition;->writable:Z

    .line 753
    iget-object v12, v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->guid:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_17c

    move-object v12, v4

    goto :goto_17e

    :cond_17c
    iget-object v12, v10, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;->guid:Ljava/lang/String;

    :goto_17e
    iput-object v12, v11, Landroid/system/virtualizationservice/Partition;->guid:Ljava/lang/String;

    .line 754
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    .end local v10    # "p":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$Partition;
    .end local v11    # "part":Landroid/system/virtualizationservice/Partition;
    goto :goto_145

    .line 756
    :cond_184
    iget-object v7, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->disks:[Landroid/system/virtualizationservice/DiskImage;

    aget-object v7, v7, v0

    new-array v9, v3, [Landroid/system/virtualizationservice/Partition;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/system/virtualizationservice/Partition;

    iput-object v9, v7, Landroid/system/virtualizationservice/DiskImage;->partitions:[Landroid/system/virtualizationservice/Partition;

    .line 732
    .end local v6    # "diskImagePath":Ljava/lang/String;
    .end local v8    # "partitions":Ljava/util/List;, "Ljava/util/List<Landroid/system/virtualizationservice/Partition;>;"
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_ec

    .line 759
    .end local v0    # "i":I
    :cond_196
    nop

    .line 761
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getSharedPaths()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda7;-><init>()V

    .line 762
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 763
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [Landroid/system/virtualizationservice/SharedPath;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    .line 764
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_1bc
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    array-length v0, v0

    if-ge v5, v0, :cond_288

    .line 765
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getSharedPaths()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->toParcelable()Landroid/system/virtualizationservice/SharedPath;

    move-result-object v6

    aput-object v6, v0, v5

    .line 766
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget-boolean v0, v0, Landroid/system/virtualizationservice/SharedPath;->appDomain:Z

    if-eqz v0, :cond_283

    .line 768
    :try_start_1d7
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getSharedPaths()[Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$SharedPath;->getSocketPath()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 769
    .local v13, "socketPath":Ljava/lang/String;
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget-object v7, v0, Landroid/system/virtualizationservice/SharedPath;->sharedPath:Ljava/lang/String;

    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget v8, v0, Landroid/system/virtualizationservice/SharedPath;->hostUid:I

    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget v9, v0, Landroid/system/virtualizationservice/SharedPath;->guestUid:I

    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget v10, v0, Landroid/system/virtualizationservice/SharedPath;->guestGid:I

    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget-object v11, v0, Landroid/system/virtualizationservice/SharedPath;->tag:Ljava/lang/String;

    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v0, v0, v5

    iget v12, v0, Landroid/system/virtualizationservice/SharedPath;->mask:I
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_206} :catch_274
    .catch Ljava/lang/InterruptedException; {:try_start_1d7 .. :try_end_206} :catch_274

    move-object v6, p0

    :try_start_207
    invoke-direct/range {v6 .. v13}, Landroid/system/virtualmachine/VirtualMachineConfig;->startCrosvmVirtiofs(Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 778
    .local v7, "startTime":J
    const-wide/16 v9, 0x1388

    add-long/2addr v9, v7

    .line 780
    .local v9, "deadline":J
    :goto_211
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v13, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v11, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v11}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_22d

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-gez v0, :cond_22d

    .line 782
    const-wide/16 v11, 0xc8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_211

    .line 784
    :cond_22d
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v13, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v11, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v11}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_259

    .line 787
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 788
    .local v0, "socket":Landroid/net/LocalSocket;
    new-instance v11, Landroid/net/LocalSocketAddress;

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v11, v13, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 791
    iget-object v11, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->sharedPaths:[Landroid/system/virtualizationservice/SharedPath;

    aget-object v11, v11, v5

    .line 792
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    iput-object v12, v11, Landroid/system/virtualizationservice/SharedPath;->socketFd:Landroid/os/ParcelFileDescriptor;

    .line 796
    .end local v0    # "socket":Landroid/net/LocalSocket;
    .end local v7    # "startTime":J
    .end local v9    # "deadline":J
    .end local v13    # "socketPath":Ljava/lang/String;
    goto :goto_284

    .line 785
    .restart local v7    # "startTime":J
    .restart local v9    # "deadline":J
    .restart local v13    # "socketPath":Ljava/lang/String;
    :cond_259
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "config":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .end local v2    # "customImageConfig":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    .end local v5    # "i":I
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachineConfig;
    throw v0
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_272} :catch_272
    .catch Ljava/lang/InterruptedException; {:try_start_207 .. :try_end_272} :catch_272

    .line 793
    .end local v7    # "startTime":J
    .end local v9    # "deadline":J
    .end local v13    # "socketPath":Ljava/lang/String;
    .restart local v1    # "config":Landroid/system/virtualizationservice/VirtualMachineRawConfig;
    .restart local v2    # "customImageConfig":Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;
    .restart local v5    # "i":I
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachineConfig;
    :catch_272
    move-exception v0

    goto :goto_276

    :catch_274
    move-exception v0

    move-object v6, p0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    :goto_276
    const-string v3, "VirtualMachineConfig"

    const-string v4, "startCrosvmVirtiofs failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 766
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_283
    move-object v6, p0

    .line 764
    :goto_284
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1bc

    :cond_288
    move-object v6, p0

    .line 800
    .end local v5    # "i":I
    nop

    .line 801
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getDisplayConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$DisplayConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda8;-><init>()V

    .line 802
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 803
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualizationservice/DisplayConfig;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->displayConfig:Landroid/system/virtualizationservice/DisplayConfig;

    .line 804
    nop

    .line 805
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getGpuConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$GpuConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda9;-><init>()V

    .line 806
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 807
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualizationservice/GpuConfig;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->gpuConfig:Landroid/system/virtualizationservice/GpuConfig;

    .line 808
    iget-boolean v0, v6, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    iput-boolean v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->protectedVm:Z

    .line 809
    iget-wide v7, v6, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    invoke-direct {p0, v7, v8}, Landroid/system/virtualmachine/VirtualMachineConfig;->bytesToMebiBytes(J)I

    move-result v0

    iput v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->memoryMib:I

    .line 810
    iget v0, v6, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_342

    .line 816
    new-instance v0, Landroid/system/virtualizationservice/CpuOptions;

    invoke-direct {v0}, Landroid/system/virtualizationservice/CpuOptions;-><init>()V

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    .line 817
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-static {v5}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology;->cpuCount(I)Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    move-result-object v5

    iput-object v5, v0, Landroid/system/virtualizationservice/CpuOptions;->cpuTopology:Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    goto :goto_2ef

    .line 812
    :pswitch_2df
    new-instance v0, Landroid/system/virtualizationservice/CpuOptions;

    invoke-direct {v0}, Landroid/system/virtualizationservice/CpuOptions;-><init>()V

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    .line 813
    iget-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->cpuOptions:Landroid/system/virtualizationservice/CpuOptions;

    invoke-static {v5}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology;->matchHost(Z)Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    move-result-object v5

    iput-object v5, v0, Landroid/system/virtualizationservice/CpuOptions;->cpuTopology:Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    .line 814
    nop

    .line 820
    :goto_2ef
    iget-object v0, v6, Landroid/system/virtualmachine/VirtualMachineConfig;->mConsoleInputDevice:Ljava/lang/String;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->consoleInputDevice:Ljava/lang/String;

    .line 821
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Landroid/system/virtualizationservice/AssignedDevices;->devices([Ljava/lang/String;)Landroid/system/virtualizationservice/AssignedDevices;

    move-result-object v0

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->devices:Landroid/system/virtualizationservice/AssignedDevices;

    .line 822
    const-string v0, "~1.0"

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->platformVersion:Ljava/lang/String;

    .line 823
    nop

    .line 824
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getAudioConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$AudioConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda10;-><init>()V

    .line 825
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 826
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualizationservice/AudioConfig;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->audioConfig:Landroid/system/virtualizationservice/AudioConfig;

    .line 827
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->useAutoMemoryBalloon()Z

    move-result v0

    iput-boolean v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->balloon:Z

    .line 828
    nop

    .line 829
    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;->getUsbConfig()Landroid/system/virtualmachine/VirtualMachineCustomImageConfig$UsbConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/system/virtualmachine/VirtualMachineConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 830
    invoke-virtual {v0, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 836
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualizationservice/UsbConfig;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->usbConfig:Landroid/system/virtualizationservice/UsbConfig;

    .line 837
    sget-object v0, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->teeServices:[Ljava/lang/String;

    .line 838
    new-array v0, v3, [Landroid/system/virtualizationservice/CustomMemoryBackingFile;

    iput-object v0, v1, Landroid/system/virtualizationservice/VirtualMachineRawConfig;->customMemoryBackingFiles:[Landroid/system/virtualizationservice/CustomMemoryBackingFile;

    .line 839
    return-object v1

    :pswitch_data_342
    .packed-switch 0x1
        :pswitch_2df
    .end packed-switch
.end method
