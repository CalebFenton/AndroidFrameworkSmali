.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field final abiOverride:Ljava/lang/String;

.field final installFlags:I

.field final installGrantPermissions:[Ljava/lang/String;

.field final installerPackageName:Ljava/lang/String;

.field instructionSets:[Ljava/lang/String;

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final user:Landroid/os/UserHandle;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "instructionSets"    # [Ljava/lang/String;
    .param p10, "abiOverride"    # Ljava/lang/String;
    .param p11, "installGrantPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 10880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 10884
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@5
    .line 10885
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    #@7
    .line 10886
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    #@9
    .line 10887
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@b
    .line 10888
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    #@d
    .line 10889
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->volumeUuid:Ljava/lang/String;

    #@f
    .line 10890
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->manifestDigest:Landroid/content/pm/ManifestDigest;

    #@11
    .line 10891
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    #@13
    .line 10892
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->instructionSets:[Ljava/lang/String;

    #@15
    .line 10893
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    #@17
    .line 10894
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    #@19
    .line 10883
    return-void
.end method


# virtual methods
.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method doPostCopy(I)I
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 10933
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .locals 1

    #@0
    .prologue
    .line 10922
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 10945
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method protected isExternalAsec()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 10941
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method protected isFwdLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 10937
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method
