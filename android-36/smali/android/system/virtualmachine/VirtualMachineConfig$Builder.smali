.class public final Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist DEFAULT_OS:Ljava/lang/String;

.field private blacklist mApkPath:Ljava/lang/String;

.field private blacklist mConnectVmConsole:Z

.field private blacklist mConsoleInputDevice:Ljava/lang/String;

.field private blacklist mCpuTopology:I

.field private blacklist mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

.field private blacklist mDebugLevel:I

.field private blacklist mEncryptedStorageBytes:J

.field private final blacklist mExtraApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMemoryBytes:J

.field private blacklist mOs:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPayloadBinaryName:Ljava/lang/String;

.field private blacklist mPayloadConfigPath:Ljava/lang/String;

.field private blacklist mProtectedVm:Z

.field private blacklist mProtectedVmSet:Z

.field private blacklist mShouldBoostUclamp:Z

.field private blacklist mShouldUseHugepages:Z

.field private blacklist mVendorDiskImage:Ljava/io/File;

.field private blacklist mVmConsoleInputSupported:Z

.field private blacklist mVmOutputCaptured:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-string v0, "microdroid"

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->DEFAULT_OS:Ljava/lang/String;

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mExtraApks:Ljava/util/List;

    .line 977
    const/4 v1, 0x0

    iput v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    .line 981
    iput v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    .line 984
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    .line 985
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmConsoleInputSupported:Z

    .line 986
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConnectVmConsole:Z

    .line 988
    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mOs:Ljava/lang/String;

    .line 989
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldBoostUclamp:Z

    .line 990
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldUseHugepages:Z

    .line 999
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    .line 1000
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-string v0, "microdroid"

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->DEFAULT_OS:Ljava/lang/String;

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mExtraApks:Ljava/util/List;

    .line 977
    const/4 v1, 0x0

    iput v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    .line 981
    iput v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    .line 984
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    .line 985
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmConsoleInputSupported:Z

    .line 986
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConnectVmConsole:Z

    .line 988
    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mOs:Ljava/lang/String;

    .line 989
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldBoostUclamp:Z

    .line 990
    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldUseHugepages:Z

    .line 1007
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    .line 1008
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addExtraApk(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mExtraApks:Ljava/util/List;

    const-string v1, "extra APK package name must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    return-object p0
.end method

.method public whitelist build()Landroid/system/virtualmachine/VirtualMachineConfig;
    .registers 27
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1018
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1019
    .local v1, "apkPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1021
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mApkPath:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 1022
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mApkPath:Ljava/lang/String;

    move-object v5, v1

    move-object v4, v2

    goto :goto_15

    .line 1023
    :cond_d
    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_d1

    .line 1024
    iget-object v2, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    move-object v5, v1

    move-object v4, v2

    .line 1029
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "apkPath":Ljava/lang/String;
    :goto_15
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    if-eqz v1, :cond_2a

    .line 1030
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    if-nez v1, :cond_22

    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    if-nez v1, :cond_22

    goto :goto_4f

    .line 1031
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setCustomImageConfig and (setPayloadBinaryName or setPayloadConfigPath) may not both be called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1035
    :cond_2a
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    if-nez v1, :cond_4b

    .line 1036
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 1039
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mExtraApks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_4f

    .line 1040
    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setPayloadConfigPath and addExtraApk may not both be called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1037
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setPayloadBinaryName must be called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1044
    :cond_4b
    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    if-nez v1, :cond_c9

    .line 1050
    :goto_4f
    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVmSet:Z

    if-eqz v1, :cond_c1

    .line 1054
    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_65

    iget v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    if-ne v1, v2, :cond_5d

    goto :goto_65

    .line 1055
    :cond_5d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "debug level must be FULL to capture output"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1058
    :cond_65
    :goto_65
    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmConsoleInputSupported:Z

    if-eqz v1, :cond_76

    iget v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    if-ne v1, v2, :cond_6e

    goto :goto_76

    .line 1059
    :cond_6e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "debug level must be FULL to use console input"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1062
    :cond_76
    :goto_76
    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConnectVmConsole:Z

    if-eqz v1, :cond_87

    iget v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    if-ne v1, v2, :cond_7f

    goto :goto_87

    .line 1063
    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "debug level must be FULL to connect to the console"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1067
    :cond_87
    :goto_87
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineConfig;

    iget-object v6, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mExtraApks:Ljava/util/List;

    iget-object v7, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    iget-object v8, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    iget-object v9, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    iget v10, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    iget-boolean v11, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVm:Z

    iget-wide v12, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mMemoryBytes:J

    iget v14, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    iget-object v15, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConsoleInputDevice:Ljava/lang/String;

    iget-wide v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mEncryptedStorageBytes:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    iget-boolean v2, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmConsoleInputSupported:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConnectVmConsole:Z

    move/from16 v20, v1

    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVendorDiskImage:Ljava/io/File;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mOs:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldBoostUclamp:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldUseHugepages:Z

    const/16 v25, 0x0

    move/from16 v24, v1

    move/from16 v19, v2

    invoke-direct/range {v3 .. v25}, Landroid/system/virtualmachine/VirtualMachineConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;IZJILjava/lang/String;JZZZLjava/io/File;Ljava/lang/String;ZZLandroid/system/virtualmachine/VirtualMachineConfig-IA;)V

    return-object v3

    .line 1051
    :cond_c1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setProtectedVm must be called explicitly"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1045
    :cond_c9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setPayloadBinaryName and setPayloadConfigPath may not both be called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1027
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "apkPath":Ljava/lang/String;
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_d1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "apkPath or packageName must be specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist setApkPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1099
    const-string v0, "apkPath must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1100
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1103
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mApkPath:Ljava/lang/String;

    .line 1104
    return-object p0

    .line 1101
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APK path must be an absolute path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setConnectVmConsole(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 1357
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConnectVmConsole:Z

    .line 1358
    return-object p0
.end method

.method public blacklist setConsoleInputDevice(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "consoleInputDevice"    # Ljava/lang/String;

    .line 1270
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mConsoleInputDevice:Ljava/lang/String;

    .line 1271
    return-object p0
.end method

.method public whitelist setCpuTopology(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 5
    .param p1, "cpuTopology"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1256
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1257
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid cpuTopology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_1f
    :goto_1f
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    .line 1260
    return-object p0
.end method

.method public blacklist setCustomImageConfig(Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "customImageConfig"    # Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    .line 1147
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCustomImageConfig:Landroid/system/virtualmachine/VirtualMachineCustomImageConfig;

    .line 1148
    return-object p0
.end method

.method public whitelist setDebugLevel(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 5
    .param p1, "debugLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1188
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1189
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid debugLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_1f
    :goto_1f
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    .line 1192
    return-object p0
.end method

.method public whitelist setEncryptedStorageBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 5
    .param p1, "encryptedStorageBytes"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1293
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 1296
    iput-wide p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mEncryptedStorageBytes:J

    .line 1297
    return-object p0

    .line 1294
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encrypted Storage size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMemoryBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 5
    .param p1, "memoryBytes"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1237
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 1240
    iput-wide p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mMemoryBytes:J

    .line 1241
    return-object p0

    .line 1238
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Memory size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setOs(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 3
    .param p1, "os"    # Ljava/lang/String;

    .line 1386
    const-string v0, "os must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mOs:Ljava/lang/String;

    .line 1387
    return-object p0
.end method

.method public whitelist setPayloadBinaryName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 5
    .param p1, "payloadBinaryName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1163
    const-string v0, "payloadBinaryName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1168
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    .line 1169
    return-object p0

    .line 1165
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid binary file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPayloadConfigPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 3
    .param p1, "payloadConfigPath"    # Ljava/lang/String;

    .line 1133
    nop

    .line 1134
    const-string v0, "payloadConfigPath must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    .line 1135
    return-object p0
.end method

.method public whitelist setProtectedVm(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 4
    .param p1, "protectedVm"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1212
    const/4 v0, 0x0

    .line 1218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1212
    if-eqz p1, :cond_20

    .line 1213
    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_protected_vm_supported()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_30

    .line 1214
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Protected VMs are not supported on this device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_20
    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_vm_supported()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1223
    :goto_30
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVm:Z

    .line 1224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVmSet:Z

    .line 1225
    return-object p0

    .line 1219
    :cond_36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Non-protected VMs are not supported on this device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setShouldBoostUclamp(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "shouldBoostUclamp"    # Z

    .line 1392
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldBoostUclamp:Z

    .line 1393
    return-object p0
.end method

.method public whitelist setShouldUseHugepages(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "shouldUseHugepages"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1417
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mShouldUseHugepages:Z

    .line 1418
    return-object p0
.end method

.method public blacklist setVendorDiskImage(Ljava/io/File;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 3
    .param p1, "vendorDiskImage"    # Ljava/io/File;

    .line 1370
    nop

    .line 1371
    const-string v0, "vendor disk image must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVendorDiskImage:Ljava/io/File;

    .line 1372
    return-object p0
.end method

.method public blacklist setVmConsoleInputSupported(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 1340
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmConsoleInputSupported:Z

    .line 1341
    return-object p0
.end method

.method public whitelist setVmOutputCaptured(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .registers 2
    .param p1, "captured"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1322
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    .line 1323
    return-object p0
.end method
