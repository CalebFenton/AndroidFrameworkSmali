.class public Lcom/android/internal/content/om/OverlayManagerImpl;
.super Ljava/lang/Object;
.source "OverlayManagerImpl.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FRRO_EXTENSION:Ljava/lang/String; = ".frro"

.field private static final blacklist IDMAP_EXTENSION:Ljava/lang/String; = ".idmap"

.field public static final blacklist SELF_TARGET:Ljava/lang/String; = ".self_target"

.field private static final blacklist TAG:Ljava/lang/String; = "OverlayManagerImpl"


# instance fields
.field private blacklist mBasePath:Ljava/nio/file/Path;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 93
    return-void

    .line 91
    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Self-Targeting doesn\'t support multiple user now!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 197
    nop

    .line 198
    const-string v0, "overlayName should be neither empty nor null string"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "overlayName":Ljava/lang/String;
    nop

    .line 201
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "checkOverlayNameResult":Ljava/lang/String;
    if-nez v3, :cond_13

    move v1, v2

    :cond_13
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 205
    const-string v4, "Invalid overlayName \"%s\". The check result is %s."

    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 208
    return-object v0
.end method

.method private blacklist checkPackageName(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 212
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 216
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 215
    const-string v2, "UID %d doesn\'t own the package %s"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 217
    return-void
.end method

.method private static blacklist cleanExpiredOverlays(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 5
    .param p0, "selfTargetingBasePath"    # Ljava/nio/file/Path;
    .param p1, "folderForCurrentBaseApk"    # Ljava/nio/file/Path;

    .line 98
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "currentBaseFolder":Ljava/lang/String;
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "selfTargetingDir":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/content/om/OverlayManagerImpl$1;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/content/om/OverlayManagerImpl$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    .line 137
    nop

    .end local v0    # "currentBaseFolder":Ljava/lang/String;
    .end local v1    # "selfTargetingDir":Ljava/lang/String;
    goto :goto_2f

    .line 135
    :catch_16
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverlayManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2f
    return-void
.end method

.method private static native blacklist createFrroFile(Ljava/lang/String;Landroid/os/FabricatedOverlayInternal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist createIdmapFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist getFabricatedOverlayInfo(Ljava/lang/String;)Landroid/os/FabricatedOverlayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist isSameWithTargetSignature(Ljava/lang/String;)Z
    .registers 6
    .param p1, "targetPackage"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 182
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 184
    return v3

    .line 186
    :cond_14
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    return v3
.end method

.method static synthetic blacklist lambda$getOverlayInfosForTarget$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 350
    const-string v0, ".frro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 351
    return v2

    .line 354
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "idmapFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v1, "idmapFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/content/om/OverlayManagerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/om/OverlayManagerTransaction$Request;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 311
    .local v1, "request":Landroid/content/om/OverlayManagerTransaction$Request;
    iget v2, v1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_55

    .line 312
    iget-object v2, v1, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-class v3, Landroid/os/FabricatedOverlayInternal;

    .line 314
    const-string v4, "fabricated_overlay"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInternal;

    .line 313
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FabricatedOverlayInternal;

    .line 319
    .local v2, "fabricatedOverlayInternal":Landroid/os/FabricatedOverlayInternal;
    iget-object v3, v2, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 320
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    goto :goto_49

    .line 322
    :cond_3b
    iget-object v3, v2, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 328
    :goto_49
    invoke-virtual {p0, v2}, Lcom/android/internal/content/om/OverlayManagerImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)V

    .line 329
    .end local v2    # "fabricatedOverlayInternal":Landroid/os/FabricatedOverlayInternal;
    goto :goto_6a

    .line 324
    .restart local v2    # "fabricatedOverlayInternal":Landroid/os/FabricatedOverlayInternal;
    :cond_4d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown package name in transaction"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    .end local v2    # "fabricatedOverlayInternal":Landroid/os/FabricatedOverlayInternal;
    :cond_55
    iget v2, v1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6b

    .line 330
    iget-object v2, v1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 331
    .local v2, "overlayIdentifier":Landroid/content/om/OverlayIdentifier;
    invoke-virtual {v2}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/om/OverlayManagerImpl;->unregisterFabricatedOverlay(Ljava/lang/String;)V

    .line 332
    .end local v2    # "overlayIdentifier":Landroid/content/om/OverlayIdentifier;
    nop

    .line 335
    .end local v1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    :goto_6a
    goto :goto_7

    .line 333
    .restart local v1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    :cond_6b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown request in transaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/om/OverlayManagerTransaction$Request;>;"
    .end local v1    # "request":Landroid/content/om/OverlayManagerTransaction$Request;
    :cond_84
    return-void
.end method

.method public blacklist ensureBaseDir()V
    .registers 9

    .line 144
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "baseApkPath":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    .line 146
    .local v2, "baseApkFolderName":Ljava/nio/file/Path;
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    const-string v4, ".self_target"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 147
    .local v3, "selfTargetingBaseFile":Ljava/io/File;
    nop

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_43

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 150
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 151
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-eqz v4, :cond_43

    move v4, v5

    goto :goto_44

    :cond_43
    move v4, v1

    .line 147
    :goto_44
    const-string v6, "Can\'t work for this context"

    invoke-static {v4, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/internal/content/om/OverlayManagerImpl;->cleanExpiredOverlays(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 156
    new-instance v4, Ljava/io/File;

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v4, "baseFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_83

    .line 158
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OverlayManagerImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_7d
    const/16 v6, 0x1c0

    const/4 v7, -0x1

    invoke-static {v4, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 169
    :cond_83
    nop

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 171
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 172
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 173
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->canExecute()Z

    move-result v6

    if-eqz v6, :cond_a4

    move v1, v5

    goto :goto_a5

    :cond_a4
    nop

    .line 169
    :goto_a5
    const-string v5, "Can\'t create a workspace for this context"

    invoke-static {v1, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    .line 178
    return-void
.end method

.method public blacklist getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;
    .registers 24
    .param p1, "targetPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/content/om/OverlayManagerImpl;->ensureBaseDir()V

    .line 348
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 349
    .local v2, "base":Ljava/io/File;
    new-instance v0, Lcom/android/internal/content/om/OverlayManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayManagerImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 360
    .local v3, "frroFiles":[Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 361
    .local v4, "overlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/om/OverlayInfo;>;"
    array-length v5, v3

    const/4 v0, 0x0

    move v6, v0

    :goto_1d
    if-ge v6, v5, :cond_77

    aget-object v7, v3, v6

    .line 364
    .local v7, "file":Ljava/io/File;
    :try_start_21
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->getFabricatedOverlayInfo(Ljava/lang/String;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_58

    .line 368
    .local v0, "fabricatedOverlayInfo":Landroid/os/FabricatedOverlayInfo;
    nop

    .line 369
    iget-object v8, v0, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v9, p1

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 370
    goto :goto_74

    .line 376
    :cond_35
    new-instance v10, Landroid/content/om/OverlayInfo;

    iget-object v11, v0, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v12, v0, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    iget-object v13, v0, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v14, v0, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    .line 383
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 385
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3

    const v19, 0x7fffffff

    invoke-direct/range {v10 .. v21}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 389
    .local v10, "overlayInfo":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 365
    .end local v0    # "fabricatedOverlayInfo":Landroid/os/FabricatedOverlayInfo;
    .end local v10    # "overlayInfo":Landroid/content/om/OverlayInfo;
    :catch_58
    move-exception v0

    move-object/from16 v9, p1

    .line 366
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t load "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OverlayManagerImpl"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    nop

    .line 361
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 391
    :cond_77
    move-object/from16 v9, p1

    return-object v4
.end method

.method public blacklist registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)V
    .registers 20
    .param p1, "overlayInternal"    # Landroid/os/FabricatedOverlayInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 230
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1}, Lcom/android/internal/content/om/OverlayManagerImpl;->ensureBaseDir()V

    .line 231
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 233
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 234
    .local v3, "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/os/FabricatedOverlayInternalEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    const-string v5, "overlay entries shouldn\'t be empty"

    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "overlayName":Ljava/lang/String;
    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkPackageName(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/content/res/Flags;->selfTargetingAndroidResourceFrro()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 238
    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_41

    .line 240
    :cond_35
    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkPackageName(Ljava/lang/String;)V

    .line 241
    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    const-string v5, "Target overlayable should be neither null nor empty string."

    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 246
    :goto_41
    iget-object v0, v1, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 247
    .local v15, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 248
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Flags;->selfTargetingAndroidResourceFrro()Z

    move-result v5

    if-eqz v5, :cond_5c

    iget-object v5, v2, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 250
    sget-object v0, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    move-object v5, v0

    goto :goto_69

    .line 252
    :cond_5c
    nop

    .line 253
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 255
    .end local v0    # "targetPackage":Ljava/lang/String;
    .local v5, "targetPackage":Ljava/lang/String;
    :goto_69
    iget-object v0, v1, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".frro"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 256
    .local v6, "frroPath":Ljava/nio/file/Path;
    iget-object v0, v1, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".idmap"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v16

    .line 258
    .local v16, "idmapPath":Ljava/nio/file/Path;
    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/internal/content/om/OverlayManagerImpl;->createFrroFile(Ljava/lang/String;Landroid/os/FabricatedOverlayInternal;)V

    .line 260
    nop

    .line 262
    move-object v7, v6

    .end local v6    # "frroPath":Ljava/nio/file/Path;
    .local v7, "frroPath":Ljava/nio/file/Path;
    :try_start_a4
    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a8} :catch_e4

    .line 263
    move-object v9, v7

    .end local v7    # "frroPath":Ljava/nio/file/Path;
    .local v9, "frroPath":Ljava/nio/file/Path;
    :try_start_a9
    invoke-interface/range {v16 .. v16}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b1} :catch_e1

    if-nez v0, :cond_bf

    :try_start_b3
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v0
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_bc

    if-eqz v0, :cond_ba

    goto :goto_bf

    :cond_ba
    const/4 v4, 0x0

    goto :goto_bf

    .line 271
    :catch_bc
    move-exception v0

    move-object v4, v9

    goto :goto_e6

    .line 266
    :cond_bf
    :goto_bf
    :try_start_bf
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v10

    .line 267
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v11

    iget-object v0, v2, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    .line 268
    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->isSameWithTargetSignature(Ljava/lang/String;)Z

    move-result v12

    .line 269
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v13

    .line 270
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v14
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d5} :catch_e1

    .line 260
    move-object/from16 v17, v9

    move v9, v4

    move-object/from16 v4, v17

    .end local v9    # "frroPath":Ljava/nio/file/Path;
    .local v4, "frroPath":Ljava/nio/file/Path;
    :try_start_da
    invoke-static/range {v5 .. v14}, Lcom/android/internal/content/om/OverlayManagerImpl;->createIdmapFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZ)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_df

    .line 276
    nop

    .line 277
    return-void

    .line 271
    :catch_df
    move-exception v0

    goto :goto_e6

    .end local v4    # "frroPath":Ljava/nio/file/Path;
    .restart local v9    # "frroPath":Ljava/nio/file/Path;
    :catch_e1
    move-exception v0

    move-object v4, v9

    .end local v9    # "frroPath":Ljava/nio/file/Path;
    .restart local v4    # "frroPath":Ljava/nio/file/Path;
    goto :goto_e6

    .end local v4    # "frroPath":Ljava/nio/file/Path;
    .restart local v7    # "frroPath":Ljava/nio/file/Path;
    :catch_e4
    move-exception v0

    move-object v4, v7

    .line 272
    .end local v7    # "frroPath":Ljava/nio/file/Path;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "frroPath":Ljava/nio/file/Path;
    :goto_e6
    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_108

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OverlayManagerImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_108
    throw v0
.end method

.method public blacklist unregisterFabricatedOverlay(Ljava/lang/String;)V
    .registers 7
    .param p1, "overlayName"    # Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayManagerImpl;->ensureBaseDir()V

    .line 287
    invoke-static {p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".frro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 289
    .local v0, "frroPath":Ljava/nio/file/Path;
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".idmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 291
    .local v1, "idmapPath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    const-string v3, "Failed to delete file "

    const-string v4, "OverlayManagerImpl"

    if-nez v2, :cond_5a

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5a
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_78

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_78
    return-void
.end method
