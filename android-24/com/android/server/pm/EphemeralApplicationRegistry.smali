.class Lcom/android/server/pm/EphemeralApplicationRegistry;
.super Ljava/lang/Object;
.source "EphemeralApplicationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    }
.end annotation


# static fields
.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_UNINSTALLED_EPHEMERAL_APP_CACHE_DURATION_MILLIS:J = 0x9a7ec800L

.field private static final ENABLED:Z = false

.field private static final EPHEMERAL_APPS_FOLDER:Ljava/lang/String; = "ephemeral"

.field private static final EPHEMERAL_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final EPHEMERAL_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field private static final EPHEMERAL_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field private static final EPHEMERAL_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field private static final HEX_ARRAY:[C

.field private static final LOG_TAG:Ljava/lang/String; = "EphemeralAppRegistry"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERM:Ljava/lang/String; = "perm"

.field private static final TAG_PERMS:Ljava/lang/String; = "perms"


# instance fields
.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mUninstalledEphemeralApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService.mPackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    const-string/jumbo v0, "0123456789ABCDEF"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->HEX_ARRAY:[C

    #@9
    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    iput-object p1, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5
    .line 93
    return-void
.end method

.method private addUninstalledEphemeralAppLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->createEphemeralAppInfoForPackage(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/EphemeralApplicationInfo;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "uninstalledApp":Landroid/content/pm/EphemeralApplicationInfo;
    if-nez v0, :cond_0

    #@6
    .line 271
    return-void

    #@7
    .line 273
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@9
    if-nez v3, :cond_1

    #@b
    .line 274
    new-instance v3, Landroid/util/SparseArray;

    #@d
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@12
    .line 277
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/util/List;

    #@1a
    .line 278
    .local v2, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-nez v2, :cond_2

    #@1c
    .line 279
    new-instance v2, Ljava/util/ArrayList;

    #@1e
    .end local v2    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 280
    .restart local v2    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    iget-object v3, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 282
    :cond_2
    new-instance v1, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@28
    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2b
    move-result-wide v4

    #@2c
    .line 282
    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;-><init>(Landroid/content/pm/EphemeralApplicationInfo;J)V

    #@2f
    .line 284
    .local v1, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 286
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->writeUninstalledEphemeralAppMetadata(Landroid/content/pm/EphemeralApplicationInfo;I)V

    #@35
    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->writeEphemeralApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V

    #@38
    .line 268
    return-void
.end method

.method private static computeEphemeralCookieFile(Landroid/content/pm/PackageParser$Package;I)Ljava/io/File;
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 555
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2
    invoke-static {v2, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 556
    .local v0, "appDir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "cookie_"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-static {p0}, Lcom/android/server/pm/EphemeralApplicationRegistry;->computePackageCertDigest(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 557
    const-string/jumbo v3, ".dat"

    #@1d
    .line 556
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 558
    .local v1, "cookieFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@27
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    return-object v2
.end method

.method private static computePackageCertDigest(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 675
    :try_start_0
    const-string/jumbo v8, "SHA256"

    #@3
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v7

    #@7
    .line 681
    .local v7, "messageDigest":Ljava/security/MessageDigest;
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@9
    const/4 v9, 0x0

    #@a
    aget-object v8, v8, v9

    #@c
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    #@13
    .line 683
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    #@16
    move-result-object v3

    #@17
    .line 684
    .local v3, "digest":[B
    array-length v4, v3

    #@18
    .line 685
    .local v4, "digestLength":I
    mul-int/lit8 v1, v4, 0x2

    #@1a
    .line 687
    .local v1, "charCount":I
    new-array v2, v1, [C

    #@1c
    .line 688
    .local v2, "chars":[C
    const/4 v6, 0x0

    #@1d
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    #@1f
    .line 689
    aget-byte v8, v3, v6

    #@21
    and-int/lit16 v0, v8, 0xff

    #@23
    .line 690
    .local v0, "byteHex":I
    mul-int/lit8 v8, v6, 0x2

    #@25
    sget-object v9, Lcom/android/server/pm/EphemeralApplicationRegistry;->HEX_ARRAY:[C

    #@27
    ushr-int/lit8 v10, v0, 0x4

    #@29
    aget-char v9, v9, v10

    #@2b
    aput-char v9, v2, v8

    #@2d
    .line 691
    mul-int/lit8 v8, v6, 0x2

    #@2f
    add-int/lit8 v8, v8, 0x1

    #@31
    sget-object v9, Lcom/android/server/pm/EphemeralApplicationRegistry;->HEX_ARRAY:[C

    #@33
    and-int/lit8 v10, v0, 0xf

    #@35
    aget-char v9, v9, v10

    #@37
    aput-char v9, v2, v8

    #@39
    .line 688
    add-int/lit8 v6, v6, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 676
    .end local v0    # "byteHex":I
    .end local v1    # "charCount":I
    .end local v2    # "chars":[C
    .end local v3    # "digest":[B
    .end local v4    # "digestLength":I
    .end local v6    # "i":I
    .end local v7    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    #@3d
    .line 678
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v8, 0x0

    #@3e
    return-object v8

    #@3f
    .line 693
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "charCount":I
    .restart local v2    # "chars":[C
    .restart local v3    # "digest":[B
    .restart local v4    # "digestLength":I
    .restart local v6    # "i":I
    .restart local v7    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    new-instance v8, Ljava/lang/String;

    #@41
    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    #@44
    return-object v8
.end method

.method private createEphemeralAppInfoForPackage(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 395
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@3
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@5
    .line 396
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@7
    .line 397
    return-object v6

    #@8
    .line 399
    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@b
    move-result-object v4

    #@c
    .line 400
    .local v4, "userState":Landroid/content/pm/PackageUserState;
    if-eqz v4, :cond_1

    #@e
    iget-boolean v5, v4, Landroid/content/pm/PackageUserState;->installed:Z

    #@10
    if-eqz v5, :cond_1

    #@12
    iget-boolean v5, v4, Landroid/content/pm/PackageUserState;->hidden:Z

    #@14
    if-eqz v5, :cond_2

    #@16
    .line 401
    :cond_1
    return-object v6

    #@17
    .line 404
    :cond_2
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v5

    #@1d
    new-array v3, v5, [Ljava/lang/String;

    #@1f
    .line 405
    .local v3, "requestedPermissions":[Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@24
    .line 407
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, p2}, Lcom/android/server/pm/PermissionsState;->getPermissions(I)Ljava/util/Set;

    #@2b
    move-result-object v1

    #@2c
    .line 408
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@2f
    move-result v5

    #@30
    new-array v0, v5, [Ljava/lang/String;

    #@32
    .line 409
    .local v0, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    .line 411
    new-instance v5, Landroid/content/pm/EphemeralApplicationInfo;

    #@37
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@39
    invoke-direct {v5, v6, v3, v0}, Landroid/content/pm/EphemeralApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3c
    return-object v5
.end method

.method private static deleteDir(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    #@0
    .prologue
    .line 706
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 707
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    #@6
    .line 708
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@9
    move-result-object v3

    #@a
    const/4 v2, 0x0

    #@b
    array-length v4, v3

    #@c
    :goto_0
    if-ge v2, v4, :cond_0

    #@e
    aget-object v0, v3, v2

    #@10
    .line 709
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/EphemeralApplicationRegistry;->deleteDir(Ljava/io/File;)V

    #@13
    .line 708
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 712
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@19
    .line 705
    return-void
.end method

.method private static getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 702
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationsDir(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method private static getEphemeralApplicationsDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 697
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 698
    const-string/jumbo v2, "ephemeral"

    #@9
    .line 697
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getInstalledEphemeralApplicationsLPr(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    const/4 v4, 0x0

    #@1
    .line 374
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    .line 375
    .local v2, "packageCount":I
    const/4 v0, 0x0

    #@a
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralApplicationInfo;>;"
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@c
    .line 376
    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/content/pm/PackageParser$Package;

    #@16
    .line 377
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isEphemeralApp()Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 375
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 380
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->createEphemeralAppInfoForPackage(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/EphemeralApplicationInfo;

    #@24
    move-result-object v1

    #@25
    .line 381
    .local v1, "info":Landroid/content/pm/EphemeralApplicationInfo;
    if-eqz v1, :cond_0

    #@27
    .line 384
    if-nez v4, :cond_2

    #@29
    .line 385
    new-instance v4, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 387
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_1

    #@32
    .line 390
    .end local v1    # "info":Landroid/content/pm/EphemeralApplicationInfo;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    return-object v4
.end method

.method private getOrParseUninstalledEphemeralAppInfo(Ljava/lang/String;I)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 451
    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@3
    if-eqz v5, :cond_1

    #@5
    .line 453
    iget-object v5, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    check-cast v4, Ljava/util/List;

    #@d
    .line 454
    .local v4, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v4, :cond_1

    #@f
    .line 455
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    .line 456
    .local v0, "appCount":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@16
    .line 457
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@1c
    .line 458
    .local v3, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    iget-object v5, v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    #@1e
    invoke-virtual {v5}, Landroid/content/pm/EphemeralApplicationInfo;->getPackageName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 460
    iget-object v5, v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    #@2a
    return-object v5

    #@2b
    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 466
    .end local v0    # "appCount":I
    .end local v1    # "i":I
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    .end local v4    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    :cond_1
    new-instance v2, Ljava/io/File;

    #@30
    invoke-static {p1, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    #@33
    move-result-object v5

    #@34
    .line 467
    const-string/jumbo v6, "metadata.xml"

    #@37
    .line 466
    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3a
    .line 468
    .local v2, "metadataFile":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@3d
    move-result-object v3

    #@3e
    .line 469
    .restart local v3    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    if-nez v3, :cond_2

    #@40
    .line 470
    return-object v7

    #@41
    .line 473
    :cond_2
    iget-object v5, v3, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    #@43
    return-object v5
.end method

.method private getUninstalledEphemeralAppStatesLPr(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 477
    const/4 v5, 0x0

    #@1
    .line 478
    .local v5, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 479
    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    .end local v5    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    check-cast v5, Ljava/util/List;

    #@d
    .line 480
    .local v5, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v5, :cond_0

    #@f
    .line 481
    return-object v5

    #@10
    .line 485
    .end local v5    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationsDir(I)Ljava/io/File;

    #@13
    move-result-object v0

    #@14
    .line 486
    .local v0, "ephemeralAppsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_4

    #@1a
    .line 487
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@1d
    move-result-object v2

    #@1e
    .line 488
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4

    #@20
    .line 489
    const/4 v6, 0x0

    #@21
    array-length v7, v2

    #@22
    :goto_0
    if-ge v6, v7, :cond_4

    #@24
    aget-object v1, v2, v6

    #@26
    .line 490
    .local v1, "ephemeralDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@29
    move-result v8

    #@2a
    if-nez v8, :cond_2

    #@2c
    .line 489
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 493
    :cond_2
    new-instance v3, Ljava/io/File;

    #@31
    .line 494
    const-string/jumbo v8, "metadata.xml"

    #@34
    .line 493
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@37
    .line 496
    .local v3, "metadataFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@3a
    move-result-object v4

    #@3b
    .line 497
    .local v4, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    if-eqz v4, :cond_1

    #@3d
    .line 500
    if-nez v5, :cond_3

    #@3f
    .line 501
    new-instance v5, Ljava/util/ArrayList;

    #@41
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@44
    .line 503
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_1

    #@48
    .line 508
    .end local v1    # "ephemeralDir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "metadataFile":Ljava/io/File;
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    :cond_4
    if-eqz v5, :cond_6

    #@4a
    .line 509
    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@4c
    if-nez v6, :cond_5

    #@4e
    .line 510
    new-instance v6, Landroid/util/SparseArray;

    #@50
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@53
    iput-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@55
    .line 512
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@57
    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5a
    .line 515
    :cond_6
    return-object v5
.end method

.method private getUninstalledEphemeralApplicationsLPr(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getUninstalledEphemeralAppStatesLPr(I)Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 418
    .local v3, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v3, :cond_0

    #@6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 419
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@f
    move-result-object v5

    #@10
    return-object v5

    #@11
    .line 422
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    #@13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 423
    .local v4, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    .line 424
    .local v1, "stateCount":I
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1d
    .line 425
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@23
    .line 426
    .local v2, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    iget-object v5, v2, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    #@25
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 424
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 428
    .end local v2    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    :cond_2
    return-object v4
.end method

.method private static isValidCookie(Landroid/content/Context;[B)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cookie"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 519
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 520
    return v0

    #@8
    .line 522
    :cond_0
    array-length v1, p1

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getEphemeralCookieMaxSizeBytes()I

    #@10
    move-result v2

    #@11
    if-gt v1, v2, :cond_1

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 579
    .local v0, "outerDepth":I
    :cond_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 580
    const-string/jumbo v1, "package"

    #@d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 581
    invoke-static {p0, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 584
    :cond_1
    const/4 v1, 0x0

    #@1d
    return-object v1
.end method

.method private static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    .locals 11
    .param p0, "metadataFile"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 526
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@4
    move-result v8

    #@5
    if-nez v8, :cond_0

    #@7
    .line 527
    return-object v10

    #@8
    .line 531
    :cond_0
    :try_start_0
    new-instance v8, Landroid/util/AtomicFile;

    #@a
    invoke-direct {v8, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@d
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    .line 537
    .local v3, "in":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@14
    move-result-object v1

    #@15
    .line 538
    .local v1, "ephemeralDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    #@18
    move-result-wide v6

    #@19
    .line 539
    .local v6, "timestamp":J
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 542
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@20
    move-result-object v5

    #@21
    .line 543
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@23
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-interface {v5, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@2a
    .line 544
    new-instance v8, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@2c
    .line 545
    invoke-static {v5, v4}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;

    #@2f
    move-result-object v9

    #@30
    .line 544
    invoke-direct {v8, v9, v6, v7}, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;-><init>(Landroid/content/pm/EphemeralApplicationInfo;J)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 550
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@36
    .line 544
    return-object v8

    #@37
    .line 532
    .end local v1    # "ephemeralDir":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "timestamp":J
    :catch_0
    move-exception v2

    #@38
    .line 533
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "EphemeralAppRegistry"

    #@3b
    const-string/jumbo v9, "No ephemeral metadata file"

    #@3e
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 534
    return-object v10

    #@42
    .line 546
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v1    # "ephemeralDir":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "timestamp":J
    :catch_1
    move-exception v0

    #@43
    .line 547
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/IllegalStateException;

    #@45
    new-instance v9, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v10, "Failed parsing ephemeral metadata file: "

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v9

    #@59
    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5c
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@5e
    .line 550
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@61
    .line 549
    throw v8
.end method

.method private static parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/EphemeralApplicationInfo;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    const-string/jumbo v6, "label"

    #@3
    const/4 v7, 0x0

    #@4
    invoke-interface {p0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 591
    .local v1, "label":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 592
    .local v3, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 594
    .local v2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@15
    move-result v4

    #@16
    .line 595
    .local v4, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_1

    #@1c
    .line 596
    const-string/jumbo v6, "perms"

    #@1f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    .line 597
    invoke-static {p0, v3, v2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V

    #@2c
    goto :goto_0

    #@2d
    .line 601
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@30
    move-result v6

    #@31
    new-array v5, v6, [Ljava/lang/String;

    #@33
    .line 602
    .local v5, "requestedPermissions":[Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@36
    .line 604
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@39
    move-result v6

    #@3a
    new-array v0, v6, [Ljava/lang/String;

    #@3c
    .line 605
    .local v0, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3f
    .line 607
    new-instance v6, Landroid/content/pm/EphemeralApplicationInfo;

    #@41
    invoke-direct {v6, p1, v1, v5, v0}, Landroid/content/pm/EphemeralApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    #@44
    return-object v6
.end method

.method private static parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    .local p1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 614
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 615
    const-string/jumbo v2, "perm"

    #@d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 616
    const-string/jumbo v2, "name"

    #@1a
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 617
    .local v1, "permission":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 618
    const-string/jumbo v2, "granted"

    #@24
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 619
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 612
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static peekEphemeralCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 562
    invoke-static {p0, p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    .line 563
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 564
    return-object v7

    #@c
    .line 566
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@f
    move-result-object v3

    #@10
    const/4 v2, 0x0

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_2

    #@14
    aget-object v1, v3, v2

    #@16
    .line 567
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_1

    #@1c
    .line 568
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    const-string/jumbo v6, "cookie_"

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v5

    #@27
    .line 567
    if-eqz v5, :cond_1

    #@29
    .line 569
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    const-string/jumbo v6, ".dat"

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@33
    move-result v5

    #@34
    .line 567
    if-eqz v5, :cond_1

    #@36
    .line 570
    return-object v1

    #@37
    .line 566
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 573
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return-object v7
.end method

.method private propagateEphemeralAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 432
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2
    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getOrParseUninstalledEphemeralAppInfo(Ljava/lang/String;I)Landroid/content/pm/EphemeralApplicationInfo;

    #@5
    move-result-object v0

    #@6
    .line 433
    .local v0, "appInfo":Landroid/content/pm/EphemeralApplicationInfo;
    if-nez v0, :cond_0

    #@8
    .line 434
    return-void

    #@9
    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/EphemeralApplicationInfo;->getGrantedPermissions()[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 437
    return-void

    #@14
    .line 439
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v2

    #@18
    .line 441
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {v0}, Landroid/content/pm/EphemeralApplicationInfo;->getGrantedPermissions()[Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    const/4 v4, 0x0

    #@1d
    array-length v6, v5

    #@1e
    :goto_0
    if-ge v4, v6, :cond_2

    #@20
    aget-object v1, v5, v4

    #@22
    .line 442
    .local v1, "grantedPermission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@24
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@26
    invoke-virtual {v7, v8, v1, p2}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 441
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 445
    .end local v1    # "grantedPermission":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 431
    return-void

    #@30
    .line 444
    :catchall_0
    move-exception v4

    #@31
    .line 445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 444
    throw v4
.end method

.method private pruneUninstalledEphemeralAppsLPw(I)V
    .locals 20
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 320
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@4
    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v14

    #@a
    .line 321
    const-string/jumbo v15, "uninstalled_ephemeral_app_cache_duration_millis"

    #@d
    .line 322
    const-wide v16, 0x9a7ec800L

    #@12
    .line 319
    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@15
    move-result-wide v10

    #@16
    .line 325
    .local v10, "maxCacheDurationMillis":J
    move-object/from16 v0, p0

    #@18
    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@1a
    if-eqz v14, :cond_2

    #@1c
    .line 327
    move-object/from16 v0, p0

    #@1e
    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@20
    move/from16 v0, p1

    #@22
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v13

    #@26
    check-cast v13, Ljava/util/List;

    #@28
    .line 328
    .local v13, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    if-eqz v13, :cond_2

    #@2a
    .line 329
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@2d
    move-result v2

    #@2e
    .line 330
    .local v2, "appCount":I
    add-int/lit8 v8, v2, -0x1

    #@30
    .local v8, "j":I
    :goto_0
    if-ltz v8, :cond_1

    #@32
    .line 331
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v12

    #@36
    check-cast v12, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;

    #@38
    .line 332
    .local v12, "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3b
    move-result-wide v14

    #@3c
    .line 333
    iget-wide v0, v12, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mTimestamp:J

    #@3e
    move-wide/from16 v16, v0

    #@40
    .line 332
    sub-long v4, v14, v16

    #@42
    .line 334
    .local v4, "elapsedCachingMillis":J
    cmp-long v14, v4, v10

    #@44
    if-lez v14, :cond_0

    #@46
    .line 335
    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@49
    .line 330
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@4b
    goto :goto_0

    #@4c
    .line 338
    .end local v4    # "elapsedCachingMillis":J
    .end local v12    # "uninstalledAppState":Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    #@4f
    move-result v14

    #@50
    if-eqz v14, :cond_2

    #@52
    .line 339
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mUninstalledEphemeralApps:Landroid/util/SparseArray;

    #@56
    move/from16 v0, p1

    #@58
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->remove(I)V

    #@5b
    .line 345
    .end local v2    # "appCount":I
    .end local v8    # "j":I
    .end local v13    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;>;"
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationsDir(I)Ljava/io/File;

    #@5e
    move-result-object v3

    #@5f
    .line 346
    .local v3, "ephemeralAppsDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@62
    move-result v14

    #@63
    if-nez v14, :cond_3

    #@65
    .line 347
    return-void

    #@66
    .line 349
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@69
    move-result-object v7

    #@6a
    .line 350
    .local v7, "files":[Ljava/io/File;
    if-nez v7, :cond_4

    #@6c
    .line 351
    return-void

    #@6d
    .line 353
    :cond_4
    const/4 v14, 0x0

    #@6e
    array-length v15, v7

    #@6f
    :goto_1
    if-ge v14, v15, :cond_7

    #@71
    aget-object v6, v7, v14

    #@73
    .line 354
    .local v6, "ephemeralDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    #@76
    move-result v16

    #@77
    if-nez v16, :cond_6

    #@79
    .line 353
    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 358
    :cond_6
    new-instance v9, Ljava/io/File;

    #@7e
    const-string/jumbo v16, "metadata.xml"

    #@81
    move-object/from16 v0, v16

    #@83
    invoke-direct {v9, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@86
    .line 359
    .local v9, "metadataFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    #@89
    move-result v16

    #@8a
    if-eqz v16, :cond_5

    #@8c
    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8f
    move-result-wide v16

    #@90
    .line 364
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    #@93
    move-result-wide v18

    #@94
    .line 363
    sub-long v4, v16, v18

    #@96
    .line 365
    .restart local v4    # "elapsedCachingMillis":J
    cmp-long v16, v4, v10

    #@98
    if-lez v16, :cond_5

    #@9a
    .line 366
    invoke-static {v6}, Lcom/android/server/pm/EphemeralApplicationRegistry;->deleteDir(Ljava/io/File;)V

    #@9d
    goto :goto_2

    #@9e
    .line 318
    .end local v4    # "elapsedCachingMillis":J
    .end local v6    # "ephemeralDir":Ljava/io/File;
    .end local v9    # "metadataFile":Ljava/io/File;
    :cond_7
    return-void
.end method

.method private writeEphemeralApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 13
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 291
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@3
    invoke-static {v8, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 292
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@a
    move-result v8

    #@b
    if-nez v8, :cond_0

    #@d
    .line 293
    return-void

    #@e
    .line 296
    :cond_0
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    iget-object v10, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v10

    #@18
    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v4

    #@1c
    .line 299
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v8, v4, Landroid/graphics/drawable/BitmapDrawable;

    #@1e
    if-eqz v8, :cond_2

    #@20
    .line 300
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    #@22
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@25
    move-result-object v1

    #@26
    .line 308
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Ljava/io/File;

    #@28
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2a
    invoke-static {v8, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    #@2d
    move-result-object v8

    #@2e
    .line 309
    const-string/jumbo v10, "icon.png"

    #@31
    .line 308
    invoke-direct {v5, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@34
    .line 311
    .local v5, "iconFile":Ljava/io/File;
    const/4 v6, 0x0

    #@35
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    #@37
    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3a
    .line 312
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@3c
    const/16 v10, 0x64

    #@3e
    invoke-virtual {v1, v8, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@41
    .line 315
    if-eqz v7, :cond_1

    #@43
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@46
    :cond_1
    :goto_1
    if-eqz v9, :cond_3

    #@48
    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@49
    .line 313
    :catch_0
    move-exception v3

    #@4a
    .local v3, "e":Ljava/lang/Exception;
    move-object v6, v7

    #@4b
    .line 314
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :goto_2
    const-string/jumbo v8, "EphemeralAppRegistry"

    #@4e
    const-string/jumbo v9, "Error writing ephemeral app icon"

    #@51
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    .line 290
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    #@55
    .line 302
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "iconFile":Ljava/io/File;
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@58
    move-result v8

    #@59
    .line 303
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5c
    move-result v10

    #@5d
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@5f
    .line 302
    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@62
    move-result-object v1

    #@63
    .line 304
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    #@65
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@68
    .line 305
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6b
    goto :goto_0

    #@6c
    .line 315
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "iconFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    #@6d
    goto :goto_1

    #@6e
    :cond_3
    move-object v6, v7

    #@6f
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    #@70
    .local v6, "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    #@71
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@72
    :catchall_0
    move-exception v9

    #@73
    move-object v12, v9

    #@74
    move-object v9, v8

    #@75
    move-object v8, v12

    #@76
    :goto_5
    if-eqz v6, :cond_4

    #@78
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    #@7b
    :cond_4
    :goto_6
    if-eqz v9, :cond_6

    #@7d
    :try_start_6
    throw v9

    #@7e
    .line 313
    :catch_3
    move-exception v3

    #@7f
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@80
    .line 315
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    #@81
    if-nez v9, :cond_5

    #@83
    move-object v9, v10

    #@84
    goto :goto_6

    #@85
    :cond_5
    if-eq v9, v10, :cond_4

    #@87
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@8a
    goto :goto_6

    #@8b
    :cond_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@8c
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    #@8d
    goto :goto_5

    #@8e
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    #@8f
    move-object v6, v7

    #@90
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    goto :goto_5

    #@91
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    #@92
    move-object v6, v7

    #@93
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private writeUninstalledEphemeralAppMetadata(Landroid/content/pm/EphemeralApplicationInfo;I)V
    .locals 13
    .param p1, "ephemeralApp"    # Landroid/content/pm/EphemeralApplicationInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 627
    invoke-virtual {p1}, Landroid/content/pm/EphemeralApplicationInfo;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v7

    #@4
    invoke-static {v7, p2}, Lcom/android/server/pm/EphemeralApplicationRegistry;->getEphemeralApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 628
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_2

    #@14
    .line 632
    :cond_0
    new-instance v2, Ljava/io/File;

    #@16
    const-string/jumbo v7, "metadata.xml"

    #@19
    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1c
    .line 634
    .local v2, "metadataFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    #@1e
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@21
    .line 635
    .local v1, "destination":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    #@22
    .line 637
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@25
    move-result-object v3

    #@26
    .line 639
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@29
    move-result-object v5

    #@2a
    .line 640
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2c
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@33
    .line 641
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@36
    const/4 v8, 0x1

    #@37
    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@3a
    .line 643
    const/4 v7, 0x1

    #@3b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v7

    #@3f
    const/4 v8, 0x0

    #@40
    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@43
    .line 645
    const-string/jumbo v7, "package"

    #@46
    const/4 v8, 0x0

    #@47
    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 646
    const-string/jumbo v7, "label"

    #@4d
    .line 647
    iget-object v8, p0, Lcom/android/server/pm/EphemeralApplicationRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    #@4f
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@51
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@54
    move-result-object v8

    #@55
    .line 646
    invoke-virtual {p1, v8}, Landroid/content/pm/EphemeralApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@58
    move-result-object v8

    #@59
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    const/4 v9, 0x0

    #@5e
    invoke-interface {v5, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@61
    .line 649
    const-string/jumbo v7, "perms"

    #@64
    const/4 v8, 0x0

    #@65
    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@68
    .line 650
    invoke-virtual {p1}, Landroid/content/pm/EphemeralApplicationInfo;->getRequestedPermissions()[Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    const/4 v7, 0x0

    #@6d
    array-length v9, v8

    #@6e
    :goto_0
    if-ge v7, v9, :cond_3

    #@70
    aget-object v4, v8, v7

    #@72
    .line 651
    .local v4, "permission":Ljava/lang/String;
    const-string/jumbo v10, "perm"

    #@75
    const/4 v11, 0x0

    #@76
    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@79
    .line 652
    const-string/jumbo v10, "name"

    #@7c
    const/4 v11, 0x0

    #@7d
    invoke-interface {v5, v11, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@80
    .line 653
    invoke-virtual {p1}, Landroid/content/pm/EphemeralApplicationInfo;->getGrantedPermissions()[Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@87
    move-result v10

    #@88
    if-eqz v10, :cond_1

    #@8a
    .line 654
    const-string/jumbo v10, "granted"

    #@8d
    const/4 v11, 0x1

    #@8e
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@91
    move-result-object v11

    #@92
    const/4 v12, 0x0

    #@93
    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@96
    .line 656
    :cond_1
    const-string/jumbo v10, "perm"

    #@99
    const/4 v11, 0x0

    #@9a
    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9d
    .line 650
    add-int/lit8 v7, v7, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 629
    .end local v1    # "destination":Landroid/util/AtomicFile;
    .end local v2    # "metadataFile":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    return-void

    #@a1
    .line 658
    .restart local v1    # "destination":Landroid/util/AtomicFile;
    .restart local v2    # "metadataFile":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const-string/jumbo v7, "perms"

    #@a4
    const/4 v8, 0x0

    #@a5
    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a8
    .line 660
    const-string/jumbo v7, "package"

    #@ab
    const/4 v8, 0x0

    #@ac
    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@af
    .line 662
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@b2
    .line 663
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b5
    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b8
    .line 626
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    #@b9
    .line 664
    :catch_0
    move-exception v6

    #@ba
    .line 665
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v7, "EphemeralAppRegistry"

    #@bd
    const-string/jumbo v8, "Failed to write ephemeral state, restoring backup"

    #@c0
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c3
    .line 666
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c6
    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c9
    goto :goto_1

    #@ca
    .line 667
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    #@cb
    .line 668
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ce
    .line 667
    throw v7
.end method


# virtual methods
.method public getEphemeralApplicationCookieLPw(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 99
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@2
    return-object v0
.end method

.method public getEphemeralApplicationIconLPw(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEphemeralApplicationsLPw(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onPackageInstalledLPw(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 176
    return-void
.end method

.method public onPackageUninstalledLPw(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 232
    return-void
.end method

.method public onUserRemovedLPw(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 260
    return-void
.end method

.method public setEphemeralApplicationCookieLPw(Ljava/lang/String;[BI)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    return v0
.end method
