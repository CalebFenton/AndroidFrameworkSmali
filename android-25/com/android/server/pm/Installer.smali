.class public final Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# static fields
.field public static final DEXOPT_BOOTCOMPLETE:I = 0x10

.field public static final DEXOPT_DEBUGGABLE:I = 0x8

.field public static final DEXOPT_OTA:I = 0x40

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x20

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SAFEMODE:I = 0x4

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x100

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private final mInstaller:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 61
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    #@5
    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@a
    .line 59
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/InstallerConnection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connection"    # Lcom/android/internal/os/InstallerConnection;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 68
    iput-object p2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@5
    .line 66
    return-void
.end method

.method private static assertValidInstructionSet(Ljava/lang/String;)V
    .locals 5
    .param p0, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 241
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 242
    return-void

    #@13
    .line 240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 245
    .end local v0    # "abi":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Invalid instruction set: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1
.end method


# virtual methods
.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "clear_app_data"

    #@5
    const/4 v2, 0x5

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x4

    #@21
    aput-object v3, v2, v4

    #@23
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@26
    .line 103
    return-void
.end method

.method public clearAppProfiles(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "clear_app_profiles"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@e
    .line 182
    return-void
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "appid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "create_app_data"

    #@5
    const/4 v2, 0x7

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x4

    #@21
    aput-object v3, v2, v4

    #@23
    const/4 v3, 0x5

    #@24
    aput-object p6, v2, v3

    #@26
    .line 88
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v3

    #@2a
    const/4 v4, 0x6

    #@2b
    aput-object v3, v2, v4

    #@2d
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@30
    .line 86
    return-void
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "createoatdir"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@11
    .line 219
    return-void
.end method

.method public createUserData(Ljava/lang/String;III)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "create_user_data"

    #@5
    const/4 v2, 0x4

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x2

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x3

    #@1e
    aput-object v3, v2, v4

    #@20
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@23
    .line 191
    return-void
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "delete_odex"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@14
    .line 234
    return-void
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "destroy_app_data"

    #@5
    const/4 v2, 0x5

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x4

    #@21
    aput-object v3, v2, v4

    #@23
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@26
    .line 108
    return-void
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "destroy_app_profiles"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@e
    .line 186
    return-void
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "destroy_user_data"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x2

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@1c
    .line 195
    return-void
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "dexoptNeeded"    # I
    .param p5, "dexFlags"    # I
    .param p6, "compilerFilter"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "sharedLibraries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-static {p3}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    #@3
    .line 146
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move-object v6, p6

    #@b
    move-object/from16 v7, p7

    #@d
    move-object/from16 v8, p8

    #@f
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 144
    return-void
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "outputPath"    # Ljava/lang/String;
    .param p7, "dexFlags"    # I
    .param p8, "compilerFilter"    # Ljava/lang/String;
    .param p9, "volumeUuid"    # Ljava/lang/String;
    .param p10, "sharedLibraries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-static {p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    #@3
    .line 155
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move/from16 v5, p5

    #@b
    move-object/from16 v6, p6

    #@d
    move/from16 v7, p7

    #@f
    move-object/from16 v8, p8

    #@11
    move-object/from16 v9, p9

    #@13
    move-object/from16 v10, p10

    #@15
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 153
    return-void
.end method

.method public dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "codePaths"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/InstallerConnection;->dumpProfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public freeCache(Ljava/lang/String;J)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "freecache"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@15
    .line 204
    return-void
.end method

.method public getAppDataInode(Ljava/lang/String;Ljava/lang/String;II)J
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 134
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@3
    const-string/jumbo v3, "get_app_data_inode"

    #@6
    const/4 v4, 0x4

    #@7
    new-array v4, v4, [Ljava/lang/Object;

    #@9
    const/4 v5, 0x0

    #@a
    aput-object p1, v4, v5

    #@c
    aput-object p2, v4, v6

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    const/4 v6, 0x2

    #@13
    aput-object v5, v4, v6

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v5

    #@19
    const/4 v6, 0x3

    #@1a
    aput-object v5, v4, v6

    #@1c
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 136
    .local v1, "res":[Ljava/lang/String;
    const/4 v2, 0x1

    #@21
    :try_start_0
    aget-object v2, v1, v2

    #@23
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-wide v2

    #@27
    return-wide v2

    #@28
    .line 137
    :catch_0
    move-exception v0

    #@29
    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "Invalid inode result: "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
.end method

.method public getAppSize(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Landroid/content/pm/PackageStats;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "ceDataInode"    # J
    .param p7, "codePath"    # Ljava/lang/String;
    .param p8, "stats"    # Landroid/content/pm/PackageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v3, "get_app_size"

    #@5
    const/4 v4, 0x6

    #@6
    new-array v4, v4, [Ljava/lang/Object;

    #@8
    const/4 v5, 0x0

    #@9
    aput-object p1, v4, v5

    #@b
    const/4 v5, 0x1

    #@c
    aput-object p2, v4, v5

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    const/4 v6, 0x2

    #@13
    aput-object v5, v4, v6

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v5

    #@19
    const/4 v6, 0x3

    #@1a
    aput-object v5, v4, v6

    #@1c
    .line 122
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f
    move-result-object v5

    #@20
    const/4 v6, 0x4

    #@21
    aput-object v5, v4, v6

    #@23
    const/4 v5, 0x5

    #@24
    aput-object p7, v4, v5

    #@26
    .line 121
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 124
    .local v1, "res":[Ljava/lang/String;
    :try_start_0
    iget-wide v2, p8, Landroid/content/pm/PackageStats;->codeSize:J

    #@2c
    const/4 v4, 0x1

    #@2d
    aget-object v4, v1, v4

    #@2f
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@32
    move-result-wide v4

    #@33
    add-long/2addr v2, v4

    #@34
    iput-wide v2, p8, Landroid/content/pm/PackageStats;->codeSize:J

    #@36
    .line 125
    iget-wide v2, p8, Landroid/content/pm/PackageStats;->dataSize:J

    #@38
    const/4 v4, 0x2

    #@39
    aget-object v4, v1, v4

    #@3b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3e
    move-result-wide v4

    #@3f
    add-long/2addr v2, v4

    #@40
    iput-wide v2, p8, Landroid/content/pm/PackageStats;->dataSize:J

    #@42
    .line 126
    iget-wide v2, p8, Landroid/content/pm/PackageStats;->cacheSize:J

    #@44
    const/4 v4, 0x3

    #@45
    aget-object v4, v1, v4

    #@47
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4a
    move-result-wide v4

    #@4b
    add-long/2addr v2, v4

    #@4c
    iput-wide v2, p8, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 120
    return-void

    #@4f
    .line 127
    :catch_0
    move-exception v0

    #@50
    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/android/internal/os/InstallerConnection$InstallerException;

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "Invalid size result: "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-direct {v2, v3}, Lcom/android/internal/os/InstallerConnection$InstallerException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v2
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "idmap"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@18
    .line 169
    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "linkfile"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@14
    .line 224
    return-void
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "linklib"

    #@5
    const/4 v2, 0x4

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x3

    #@16
    aput-object v3, v2, v4

    #@18
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@1b
    .line 214
    return-void
.end method

.method public markBootComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-static {p1}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    #@3
    .line 201
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@5
    const-string/jumbo v1, "markbootcomplete"

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    const/4 v3, 0x0

    #@c
    aput-object p1, v2, v3

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@11
    .line 199
    return-void
.end method

.method public mergeProfiles(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/InstallerConnection;->mergeProfiles(ILjava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "migrate_app_data"

    #@5
    const/4 v2, 0x4

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@1f
    .line 98
    return-void
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "move_ab"

    #@5
    const/4 v2, 0x3

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@14
    .line 229
    return-void
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "from_uuid"    # Ljava/lang/String;
    .param p2, "to_uuid"    # Ljava/lang/String;
    .param p3, "package_name"    # Ljava/lang/String;
    .param p4, "data_app_name"    # Ljava/lang/String;
    .param p5, "appid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "move_complete_app"

    #@5
    const/4 v2, 0x7

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    const/4 v3, 0x2

    #@f
    aput-object p3, v2, v3

    #@11
    .line 116
    const/4 v3, 0x3

    #@12
    aput-object p4, v2, v3

    #@14
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x4

    #@19
    aput-object v3, v2, v4

    #@1b
    const/4 v3, 0x5

    #@1c
    aput-object p6, v2, v3

    #@1e
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x6

    #@23
    aput-object v3, v2, v4

    #@25
    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@28
    .line 114
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "Installer"

    #@3
    const-string/jumbo v1, "Waiting for installd to be ready."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 82
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    #@e
    .line 80
    return-void
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "flags"    # I
    .param p5, "appid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "restorecon_app_data"

    #@5
    const/4 v2, 0x6

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x4

    #@21
    aput-object v3, v2, v4

    #@23
    .line 94
    const/4 v3, 0x5

    #@24
    aput-object p6, v2, v3

    #@26
    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@29
    .line 92
    return-void
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "rmpackagedir"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@e
    .line 178
    return-void
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/InstallerConnection$InstallerException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    #@3
    .line 175
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@5
    const-string/jumbo v1, "rmdex"

    #@8
    const/4 v2, 0x2

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    const/4 v3, 0x0

    #@c
    aput-object p1, v2, v3

    #@e
    const/4 v3, 0x1

    #@f
    aput-object p2, v2, v3

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    #@14
    .line 173
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/os/InstallerConnection;->setWarnIfHeld(Ljava/lang/Object;)V

    #@5
    .line 75
    return-void
.end method
