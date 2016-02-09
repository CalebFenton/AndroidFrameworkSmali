.class public final Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private final mInstaller:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 38
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    #@5
    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@a
    .line 36
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 49
    const-string/jumbo v0, "!"

    #@a
    return-object v0

    #@b
    .line 51
    :cond_0
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    if-ne v0, v1, :cond_1

    #@12
    const/16 v0, 0x20

    #@14
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v0

    #@18
    if-eq v0, v1, :cond_2

    #@1a
    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 54
    :cond_2
    return-object p0
.end method

.method private static isValidInstructionSet(Ljava/lang/String;)Z
    .locals 6
    .param p0, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 465
    if-nez p0, :cond_0

    #@3
    .line 466
    return v2

    #@4
    .line 469
    :cond_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@6
    array-length v4, v3

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v4, :cond_2

    #@a
    aget-object v0, v3, v1

    #@c
    .line 470
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 471
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 469
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 475
    .end local v0    # "abi":Ljava/lang/String;
    :cond_2
    return v2
.end method


# virtual methods
.method public clearUserData(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 287
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public clearUserData(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "rmuserdata"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 292
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 293
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 295
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 297
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 298
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "dataAppName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "seinfo"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "cpcompleteapp"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 270
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 271
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 273
    invoke-static {p2}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 275
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 277
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 279
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 281
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 282
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@3f
    move-result v1

    #@40
    return v1
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "createoatdir"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 442
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 445
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 446
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method public createUserConfig(I)I
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "mkuserconfig"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 248
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    .line 250
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public createUserData(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 228
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "mkuserdata"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 233
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 234
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 238
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 240
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 242
    if-eqz p5, :cond_0

    #@2b
    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 243
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@37
    move-result v1

    #@38
    return v1

    #@39
    .line 242
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string/jumbo p5, "!"

    #@3c
    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 196
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "rmcache"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 201
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 202
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 206
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 207
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 212
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "rmcodecache"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 217
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 218
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 222
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 223
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    .locals 6
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I

    #@0
    .prologue
    .line 80
    invoke-static {p4}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 81
    const-string/jumbo v0, "Installer"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Invalid instruction set: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 82
    const/4 v0, -0x1

    #@21
    return v0

    #@22
    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@24
    move-object v1, p1

    #@25
    move v2, p2

    #@26
    move v3, p3

    #@27
    move-object v4, p4

    #@28
    move v5, p5

    #@29
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;I)I

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I
    .locals 10
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-static {p5}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 92
    const-string/jumbo v0, "Installer"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Invalid instruction set: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 93
    const/4 v0, -0x1

    #@21
    return v0

    #@22
    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@24
    move-object v1, p1

    #@25
    move v2, p2

    #@26
    move v3, p3

    #@27
    move-object v4, p4

    #@28
    move-object v5, p5

    #@29
    move/from16 v6, p6

    #@2b
    move/from16 v7, p7

    #@2d
    move/from16 v8, p8

    #@2f
    move-object/from16 v9, p9

    #@31
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method public fixUid(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 178
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->fixUid(Ljava/lang/String;Ljava/lang/String;II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public fixUid(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "fixuid"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 183
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 184
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 186
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 188
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 190
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 191
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method public freeCache(J)I
    .locals 1
    .param p1, "freeStorageSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 315
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public freeCache(Ljava/lang/String;J)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "freecache"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 320
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 321
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 323
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 324
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@27
    move-result v1

    #@28
    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persona"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "libDirPath"    # Ljava/lang/String;
    .param p5, "fwdLockApkPath"    # Ljava/lang/String;
    .param p6, "asecPath"    # Ljava/lang/String;
    .param p7, "instructionSets"    # [Ljava/lang/String;
    .param p8, "pStats"    # Landroid/content/pm/PackageStats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 330
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    move-object/from16 v7, p6

    #@9
    move-object/from16 v8, p7

    #@b
    move-object/from16 v9, p8

    #@d
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 10
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "persona"    # I
    .param p4, "apkPath"    # Ljava/lang/String;
    .param p5, "libDirPath"    # Ljava/lang/String;
    .param p6, "fwdLockApkPath"    # Ljava/lang/String;
    .param p7, "asecPath"    # Ljava/lang/String;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "pStats"    # Landroid/content/pm/PackageStats;

    #@0
    .prologue
    .line 337
    const/4 v7, 0x0

    #@1
    move-object/from16 v0, p8

    #@3
    array-length v8, v0

    #@4
    :goto_0
    if-ge v7, v8, :cond_1

    #@6
    aget-object v4, p8, v7

    #@8
    .line 338
    .local v4, "instructionSet":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_0

    #@e
    .line 339
    const-string/jumbo v7, "Installer"

    #@11
    new-instance v8, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v9, "Invalid instruction set: "

    #@19
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 340
    const/4 v7, -0x1

    #@29
    return v7

    #@2a
    .line 337
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 344
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    const-string/jumbo v7, "getsize"

    #@32
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@35
    .line 345
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v7, 0x20

    #@37
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 346
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 347
    const/16 v7, 0x20

    #@43
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 348
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 349
    const/16 v7, 0x20

    #@4b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 350
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    .line 351
    const/16 v7, 0x20

    #@53
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 352
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 353
    const/16 v7, 0x20

    #@5b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    .line 356
    if-eqz p5, :cond_3

    #@60
    .end local p5    # "libDirPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 357
    const/16 v7, 0x20

    #@65
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 358
    if-eqz p6, :cond_4

    #@6a
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p6

    #@6c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 359
    const/16 v7, 0x20

    #@71
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    .line 360
    if-eqz p7, :cond_5

    #@76
    .end local p7    # "asecPath":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p7

    #@78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 361
    const/16 v7, 0x20

    #@7d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@80
    .line 364
    const/4 v7, 0x0

    #@81
    aget-object v7, p8, v7

    #@83
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 366
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    invoke-virtual {v7, v8}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    .line 367
    .local v6, "s":Ljava/lang/String;
    const-string/jumbo v7, " "

    #@93
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    .line 369
    .local v5, "res":[Ljava/lang/String;
    if-eqz v5, :cond_2

    #@99
    array-length v7, v5

    #@9a
    const/4 v8, 0x5

    #@9b
    if-eq v7, v8, :cond_6

    #@9d
    .line 370
    :cond_2
    const/4 v7, -0x1

    #@9e
    return v7

    #@9f
    .line 356
    .end local v5    # "res":[Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    .restart local p5    # "libDirPath":Ljava/lang/String;
    .restart local p6    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p7    # "asecPath":Ljava/lang/String;
    :cond_3
    const-string/jumbo p5, "!"

    #@a2
    goto :goto_1

    #@a3
    .line 358
    .end local p5    # "libDirPath":Ljava/lang/String;
    :cond_4
    const-string/jumbo p6, "!"

    #@a6
    goto :goto_2

    #@a7
    .line 360
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :cond_5
    const-string/jumbo p7, "!"

    #@aa
    goto :goto_3

    #@ab
    .line 373
    .end local p7    # "asecPath":Ljava/lang/String;
    .restart local v5    # "res":[Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x1

    #@ac
    :try_start_0
    aget-object v7, v5, v7

    #@ae
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@b1
    move-result-wide v8

    #@b2
    move-object/from16 v0, p9

    #@b4
    iput-wide v8, v0, Landroid/content/pm/PackageStats;->codeSize:J

    #@b6
    .line 374
    const/4 v7, 0x2

    #@b7
    aget-object v7, v5, v7

    #@b9
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@bc
    move-result-wide v8

    #@bd
    move-object/from16 v0, p9

    #@bf
    iput-wide v8, v0, Landroid/content/pm/PackageStats;->dataSize:J

    #@c1
    .line 375
    const/4 v7, 0x3

    #@c2
    aget-object v7, v5, v7

    #@c4
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@c7
    move-result-wide v8

    #@c8
    move-object/from16 v0, p9

    #@ca
    iput-wide v8, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    #@cc
    .line 376
    const/4 v7, 0x4

    #@cd
    aget-object v7, v5, v7

    #@cf
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@d2
    move-result-wide v8

    #@d3
    move-object/from16 v0, p9

    #@d5
    iput-wide v8, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    #@d7
    .line 377
    const/4 v7, 0x0

    #@d8
    aget-object v7, v5, v7

    #@da
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@dd
    move-result v7

    #@de
    return v7

    #@df
    .line 378
    :catch_0
    move-exception v3

    #@e0
    .line 379
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    #@e1
    return v7
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "idmap"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 102
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 107
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 108
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@25
    move-result v1

    #@26
    return v1
.end method

.method public install(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 60
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "install"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 65
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 66
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 70
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 72
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 74
    if-eqz p5, :cond_0

    #@2b
    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 75
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@37
    move-result v1

    #@38
    return v1

    #@39
    .line 74
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string/jumbo p5, "!"

    #@3c
    goto :goto_0
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "linkfile"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 452
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 455
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 457
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 458
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@25
    move-result v1

    #@26
    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "nativeLibPath32"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 389
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/16 v2, 0x20

    #@3
    .line 401
    if-nez p2, :cond_0

    #@5
    .line 402
    const-string/jumbo v1, "Installer"

    #@8
    const-string/jumbo v2, "linkNativeLibraryDirectory dataPath is null"

    #@b
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 403
    return v3

    #@f
    .line 404
    :cond_0
    if-nez p3, :cond_1

    #@11
    .line 405
    const-string/jumbo v1, "Installer"

    #@14
    const-string/jumbo v2, "linkNativeLibraryDirectory nativeLibPath is null"

    #@17
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 406
    return v3

    #@1b
    .line 409
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    const-string/jumbo v1, "linklib"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    .line 410
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 411
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 413
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 415
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 417
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    .line 419
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@48
    move-result v1

    #@49
    return v1
.end method

.method public markBootComplete(Ljava/lang/String;)I
    .locals 4
    .param p1, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 302
    invoke-static {p1}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 303
    const-string/jumbo v1, "Installer"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Invalid instruction set: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 304
    const/4 v1, -0x1

    #@21
    return v1

    #@22
    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    const-string/jumbo v1, "markbootcomplete"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a
    .line 308
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 310
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@3b
    move-result v1

    #@3c
    return v1
.end method

.method public moveFiles()I
    .locals 2

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2
    const-string/jumbo v1, "movefiles"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 112
    invoke-static {p3}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 113
    const-string/jumbo v1, "Installer"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid instruction set: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 114
    const/4 v1, -0x1

    #@23
    return v1

    #@24
    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    const-string/jumbo v1, "movedex"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 123
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 124
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@47
    move-result v1

    #@48
    return v1
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "Installer"

    #@3
    const-string/jumbo v1, "Waiting for installd to be ready."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    #@e
    .line 42
    return-void
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "remove"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 158
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 159
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 161
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 163
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 164
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 255
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Installer;->removeUserDataDirs(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public removeUserDataDirs(Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "rmuser"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 260
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 261
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 263
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    .line 264
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v1, "rename"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 169
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 173
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    return v1
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 424
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v3, 0x20

    #@3
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const-string/jumbo v2, "restorecondata"

    #@8
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    .line 429
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    .line 430
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 432
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 433
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 434
    if-eqz p3, :cond_1

    #@20
    .end local p3    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 435
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 436
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 437
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_0

    #@35
    const/4 v1, 0x1

    #@36
    :cond_0
    return v1

    #@37
    .line 434
    .restart local p3    # "seinfo":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, "!"

    #@3a
    goto :goto_0
.end method

.method public rmPackageDir(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageDir"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "rmpackagedir"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 148
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 128
    invoke-static {p2}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 129
    const-string/jumbo v1, "Installer"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid instruction set: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 130
    const/4 v1, -0x1

    #@23
    return v1

    #@24
    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    const-string/jumbo v1, "rmdex"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    .line 134
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 138
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    #@41
    move-result v1

    #@42
    return v1
.end method
