.class final Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# static fields
.field static final DEX_OPT_DEFERRED:I = 0x2

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private mDeferredDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@5
    .line 61
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@7
    .line 62
    const-string/jumbo v2, "power"

    #@a
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/PowerManager;

    #@10
    .line 63
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "*dexopt*"

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    .line 59
    return-void
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 220
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 221
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@15
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    #@18
    move-result v2

    #@19
    .line 220
    if-eqz v2, :cond_2

    #@1b
    .line 222
    :cond_1
    return-object v3

    #@1c
    .line 224
    :cond_2
    new-instance v0, Ljava/io/File;

    #@1e
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@20
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@23
    .line 225
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_3

    #@29
    .line 226
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    #@2c
    move-result-object v1

    #@2d
    .line 227
    .local v1, "oatDir":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@2f
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@31
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 229
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    return-object v2

    #@3d
    .line 231
    .end local v1    # "oatDir":Ljava/io/File;
    :cond_3
    return-object v3
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    #@0
    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "oat"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I
    .locals 22
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    #@2
    .line 101
    move-object/from16 v4, p2

    #@4
    .line 103
    .local v4, "instructionSets":[Ljava/lang/String;
    :goto_0
    if-eqz p5, :cond_1

    #@6
    .line 104
    move-object/from16 v0, p1

    #@8
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@a
    move-object/from16 v0, p5

    #@c
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f
    .line 105
    move-object/from16 v0, p1

    #@11
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 106
    move-object/from16 v0, p1

    #@17
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@19
    move-object/from16 v2, p0

    #@1b
    move/from16 v5, p3

    #@1d
    move/from16 v6, p4

    #@1f
    move-object/from16 v7, p5

    #@21
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V

    #@24
    .line 108
    :cond_0
    move-object/from16 v0, p1

    #@26
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 109
    move-object/from16 v0, p1

    #@2c
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@2e
    move-object/from16 v2, p0

    #@30
    move/from16 v5, p3

    #@32
    move/from16 v6, p4

    #@34
    move-object/from16 v7, p5

    #@36
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V

    #@39
    .line 114
    :cond_1
    move-object/from16 v0, p1

    #@3b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3d
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3f
    and-int/lit8 v2, v2, 0x4

    #@41
    if-nez v2, :cond_3

    #@43
    .line 115
    const/4 v2, 0x0

    #@44
    return v2

    #@45
    .line 101
    .end local v4    # "instructionSets":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    #@47
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    .restart local v4    # "instructionSets":[Ljava/lang/String;
    goto :goto_0

    #@4e
    .line 118
    :cond_3
    move-object/from16 v0, p1

    #@50
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@54
    and-int/lit16 v2, v2, 0x4000

    #@56
    if-eqz v2, :cond_4

    #@58
    const/4 v12, 0x1

    #@59
    .line 119
    .local v12, "vmSafeMode":Z
    :goto_1
    move-object/from16 v0, p1

    #@5b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5d
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5f
    and-int/lit8 v2, v2, 0x2

    #@61
    if-eqz v2, :cond_5

    #@63
    const/4 v13, 0x1

    #@64
    .line 121
    .local v13, "debuggable":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    #@67
    move-result-object v19

    #@68
    .line 122
    .local v19, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x0

    #@6a
    .line 127
    .local v20, "performedDexOpt":Z
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    #@6d
    move-result-object v15

    #@6e
    .line 128
    .local v15, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x0

    #@6f
    array-length v3, v15

    #@70
    :goto_3
    if-ge v2, v3, :cond_f

    #@72
    aget-object v10, v15, v2

    #@74
    .line 129
    .local v10, "dexCodeInstructionSet":Ljava/lang/String;
    if-nez p3, :cond_6

    #@76
    move-object/from16 v0, p1

    #@78
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    #@7a
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_6

    #@80
    .line 128
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@82
    goto :goto_3

    #@83
    .line 118
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v12    # "vmSafeMode":Z
    .end local v13    # "debuggable":Z
    .end local v15    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v19    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "performedDexOpt":Z
    :cond_4
    const/4 v12, 0x0

    #@84
    .restart local v12    # "vmSafeMode":Z
    goto :goto_1

    #@85
    .line 119
    :cond_5
    const/4 v13, 0x0

    #@86
    .restart local v13    # "debuggable":Z
    goto :goto_2

    #@87
    .line 133
    .restart local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v15    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v19    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "performedDexOpt":Z
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a
    move-result-object v18

    #@8b
    .local v18, "path$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@8e
    move-result v5

    #@8f
    if-eqz v5, :cond_e

    #@91
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@94
    move-result-object v6

    #@95
    check-cast v6, Ljava/lang/String;

    #@97
    .line 135
    .local v6, "path":Ljava/lang/String;
    if-eqz p3, :cond_8

    #@99
    .line 136
    const/4 v11, 0x1

    #@9a
    .line 147
    .local v11, "dexoptNeeded":I
    :goto_6
    if-nez p3, :cond_9

    #@9c
    if-eqz p4, :cond_9

    #@9e
    if-eqz v11, :cond_9

    #@a0
    .line 151
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V

    #@a3
    .line 152
    const/4 v2, 0x2

    #@a4
    return v2

    #@a5
    .line 139
    .end local v11    # "dexoptNeeded":I
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    #@a7
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@a9
    move/from16 v0, p4

    #@ab
    invoke-static {v6, v5, v10, v0}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ae
    move-result v11

    #@af
    .restart local v11    # "dexoptNeeded":I
    goto :goto_6

    #@b0
    .line 141
    .end local v11    # "dexoptNeeded":I
    :catch_0
    move-exception v17

    #@b1
    .line 142
    .local v17, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    #@b4
    new-instance v3, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v5, "IOException reading apk: "

    #@bc
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v3

    #@c4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    move-object/from16 v0, v17

    #@ca
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cd
    .line 143
    const/4 v2, -0x1

    #@ce
    return v2

    #@cf
    .line 155
    .end local v17    # "ioe":Ljava/io/IOException;
    .restart local v11    # "dexoptNeeded":I
    :cond_9
    if-eqz v11, :cond_7

    #@d1
    .line 157
    const/4 v14, 0x0

    #@d2
    .line 158
    .local v14, "oatDir":Ljava/lang/String;
    const/4 v5, 0x1

    #@d3
    if-ne v11, v5, :cond_a

    #@d5
    .line 159
    const-string/jumbo v16, "dex2oat"

    #@d8
    .line 161
    .local v16, "dexoptType":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, p1

    #@dc
    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@df
    move-result-object v14

    #@e0
    .line 174
    .end local v14    # "oatDir":Ljava/lang/String;
    :goto_7
    const-string/jumbo v5, "PackageManager.DexOptimizer"

    #@e3
    new-instance v8, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v9, "Running dexopt ("

    #@eb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v8

    #@ef
    move-object/from16 v0, v16

    #@f1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v8

    #@f5
    const-string/jumbo v9, ") on: "

    #@f8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v8

    #@fc
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v8

    #@100
    const-string/jumbo v9, " pkg="

    #@103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v8

    #@107
    .line 175
    move-object/from16 v0, p1

    #@109
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10b
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@10d
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v8

    #@111
    .line 175
    const-string/jumbo v9, " isa="

    #@114
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v8

    #@118
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v8

    #@11c
    .line 176
    const-string/jumbo v9, " vmSafeMode="

    #@11f
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v8

    #@123
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@126
    move-result-object v8

    #@127
    .line 176
    const-string/jumbo v9, " debuggable="

    #@12a
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v8

    #@12e
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@131
    move-result-object v8

    #@132
    .line 177
    const-string/jumbo v9, " oatDir = "

    #@135
    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v8

    #@139
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v8

    #@13d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v8

    #@141
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    .line 178
    move-object/from16 v0, p1

    #@146
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@148
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@14a
    invoke-static {v5}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@14d
    move-result v7

    #@14e
    .line 179
    .local v7, "sharedGid":I
    move-object/from16 v0, p0

    #@150
    iget-object v5, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@152
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    #@154
    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    #@157
    move-result v8

    #@158
    if-eqz v8, :cond_d

    #@15a
    const/4 v8, 0x0

    #@15b
    :goto_8
    move-object/from16 v0, p1

    #@15d
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@15f
    .line 179
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I

    #@162
    move-result v21

    #@163
    .line 185
    .local v21, "ret":I
    if-nez v21, :cond_7

    #@165
    .line 186
    const/16 v20, 0x1

    #@167
    goto/16 :goto_5

    #@169
    .line 162
    .end local v7    # "sharedGid":I
    .end local v21    # "ret":I
    .restart local v14    # "oatDir":Ljava/lang/String;
    :catch_1
    move-exception v17

    #@16a
    .line 163
    .restart local v17    # "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    #@16d
    new-instance v3, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v5, "Unable to create oatDir for package: "

    #@175
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v3

    #@179
    move-object/from16 v0, p1

    #@17b
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@17d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v3

    #@181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v3

    #@185
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    .line 164
    const/4 v2, -0x1

    #@189
    return v2

    #@18a
    .line 166
    .end local v16    # "dexoptType":Ljava/lang/String;
    .end local v17    # "ioe":Ljava/io/IOException;
    :cond_a
    const/4 v5, 0x2

    #@18b
    if-ne v11, v5, :cond_b

    #@18d
    .line 167
    const-string/jumbo v16, "patchoat"

    #@190
    .restart local v16    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_7

    #@192
    .line 168
    .end local v16    # "dexoptType":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x3

    #@193
    if-ne v11, v5, :cond_c

    #@195
    .line 169
    const-string/jumbo v16, "self patchoat"

    #@198
    .restart local v16    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_7

    #@19a
    .line 171
    .end local v16    # "dexoptType":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    #@19c
    new-instance v3, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v5, "Invalid dexopt needed: "

    #@1a4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v3

    #@1a8
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v3

    #@1ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v3

    #@1b0
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b3
    throw v2

    #@1b4
    .line 180
    .end local v14    # "oatDir":Ljava/lang/String;
    .restart local v7    # "sharedGid":I
    .restart local v16    # "dexoptType":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x1

    #@1b5
    goto :goto_8

    #@1b6
    .line 196
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "sharedGid":I
    .end local v11    # "dexoptNeeded":I
    .end local v16    # "dexoptType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    #@1b8
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    #@1ba
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1bd
    goto/16 :goto_4

    #@1bf
    .line 203
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v18    # "path$iterator":Ljava/util/Iterator;
    :cond_f
    if-eqz v20, :cond_10

    #@1c1
    const/4 v2, 0x1

    #@1c2
    :goto_9
    return v2

    #@1c3
    :cond_10
    const/4 v2, 0x0

    #@1c4
    goto :goto_9
.end method

.method private performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V
    .locals 8
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p1, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v7

    #@4
    .local v7, "libName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    check-cast v6, Ljava/lang/String;

    #@10
    .line 241
    .local v6, "libName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@12
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibrary(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@15
    move-result-object v1

    #@16
    .line 243
    .local v1, "libPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    #@18
    invoke-virtual {p5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    move-object v0, p0

    #@1f
    move-object v2, p2

    #@20
    move v3, p3

    #@21
    move v4, p4

    #@22
    move-object v5, p5

    #@23
    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I

    #@26
    goto :goto_0

    #@27
    .line 239
    .end local v1    # "libPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "libName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 261
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    #@b
    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@10
    .line 259
    return-void
.end method

.method public clearDeferredDexOptPackages()Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    #@2
    .line 255
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v1, 0x0

    #@3
    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    #@5
    .line 256
    return-object v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZ)I
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "inclDependencies"    # Z

    #@0
    .prologue
    .line 76
    if-eqz p5, :cond_3

    #@2
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_3

    #@a
    .line 77
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    #@c
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@f
    .line 78
    .local v5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@14
    .line 82
    .end local v5    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@16
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@18
    monitor-enter v7

    #@19
    .line 83
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    #@1b
    .line 84
    .local v6, "useLock":Z
    if-eqz v6, :cond_1

    #@1d
    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1f
    new-instance v1, Landroid/os/WorkSource;

    #@21
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@25
    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    #@28
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@2b
    .line 86
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@30
    :cond_1
    move-object v0, p0

    #@31
    move-object v1, p1

    #@32
    move-object v2, p2

    #@33
    move v3, p3

    #@34
    move v4, p4

    #@35
    .line 89
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    move-result v0

    #@39
    .line 91
    if-eqz v6, :cond_2

    #@3b
    .line 92
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3d
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    :cond_2
    monitor-exit v7

    #@41
    .line 89
    return v0

    #@42
    .line 80
    .end local v6    # "useLock":Z
    :cond_3
    const/4 v5, 0x0

    #@43
    .local v5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@44
    .line 90
    .end local v5    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "useLock":Z
    :catchall_0
    move-exception v0

    #@45
    .line 91
    if-eqz v6, :cond_4

    #@47
    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@49
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@4c
    .line 90
    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4d
    .line 82
    .end local v6    # "useLock":Z
    :catchall_1
    move-exception v0

    #@4e
    monitor-exit v7

    #@4f
    throw v0
.end method

.method systemReady()V
    .locals 1

    #@0
    .prologue
    .line 267
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    #@3
    .line 266
    return-void
.end method
