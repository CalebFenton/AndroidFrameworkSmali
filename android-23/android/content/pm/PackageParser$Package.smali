.class public final Landroid/content/pm/PackageParser$Package;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public baseCodePath:Ljava/lang/String;

.field public baseHardwareAccelerated:Z

.field public baseRevisionCode:I

.field public codePath:Ljava/lang/String;

.field public configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public coreApp:Z

.field public cpuAbiOverride:Ljava/lang/String;

.field public featureGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public installLocation:I

.field public final instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public libraryNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAdoptPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppMetaData:Landroid/os/Bundle;

.field public mCertificates:[[Ljava/security/cert/Certificate;

.field public final mDexOptPerformed:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExtras:Ljava/lang/Object;

.field public mKeySetMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLastPackageUsageTimeInMills:J

.field public mOriginalPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOverlayPriority:I

.field public mOverlayTarget:Ljava/lang/String;

.field public mPreferredOrder:I

.field public mRealPackage:Ljava/lang/String;

.field public mRequiredAccountType:Ljava/lang/String;

.field public mRequiredForAllUsers:Z

.field public mRestrictedAccountType:Ljava/lang/String;

.field public mSharedUserId:Ljava/lang/String;

.field public mSharedUserLabel:I

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mSigningKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public mTrustedOverlay:Z

.field public mUpgradeKeySets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public manifestDigest:Landroid/content/pm/ManifestDigest;

.field public packageName:Ljava/lang/String;

.field public final permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public preferredActivityFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public protectedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field public splitCodePaths:[Ljava/lang/String;

.field public splitFlags:[I

.field public splitNames:[Ljava/lang/String;

.field public splitPrivateFlags:[I

.field public splitRevisionCodes:[I

.field public usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraryFiles:[Ljava/lang/String;

.field public usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 4406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4294
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@7
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@a
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    .line 4296
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@13
    .line 4297
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    #@1a
    .line 4298
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1f
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@21
    .line 4299
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@26
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@28
    .line 4300
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2d
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@2f
    .line 4301
    new-instance v0, Ljava/util/ArrayList;

    #@31
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@34
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@36
    .line 4302
    new-instance v0, Ljava/util/ArrayList;

    #@38
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@3b
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@3d
    .line 4304
    new-instance v0, Ljava/util/ArrayList;

    #@3f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@42
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@44
    .line 4308
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@46
    .line 4309
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@48
    .line 4310
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@4a
    .line 4311
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@4c
    .line 4313
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@4e
    .line 4315
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    #@50
    .line 4316
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    #@52
    .line 4317
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    #@54
    .line 4320
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    #@56
    .line 4340
    iput v1, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    #@58
    .line 4343
    new-instance v0, Landroid/util/ArraySet;

    #@5a
    const/4 v1, 0x4

    #@5b
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    #@5e
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    #@60
    .line 4358
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    #@62
    .line 4361
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    #@64
    .line 4364
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    #@66
    .line 4407
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@68
    .line 4408
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6a
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6c
    .line 4409
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6e
    const/4 v1, -0x1

    #@6f
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@71
    .line 4406
    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4413
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4414
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 4415
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@c
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 4416
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@14
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@17
    .line 4418
    :cond_0
    return-object v0
.end method

.method public getAllCodePathsExcludingResourceOnly()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4426
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4427
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/lit8 v2, v2, 0x4

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 4428
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 4430
    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@14
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 4431
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@1d
    array-length v2, v2

    #@1e
    if-ge v0, v2, :cond_2

    #@20
    .line 4432
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    #@22
    aget v2, v2, v0

    #@24
    and-int/lit8 v2, v2, 0x4

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 4433
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    #@2a
    aget-object v2, v2, v0

    #@2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 4431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 4437
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public hasComponentClassName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4467
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 4468
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@14
    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 4469
    return v3

    #@1d
    .line 4467
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 4472
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v1

    #@26
    add-int/lit8 v0, v1, -0x1

    #@28
    :goto_1
    if-ltz v0, :cond_3

    #@2a
    .line 4473
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@32
    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 4474
    return v3

    #@3b
    .line 4472
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@3d
    goto :goto_1

    #@3e
    .line 4477
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v1

    #@44
    add-int/lit8 v0, v1, -0x1

    #@46
    :goto_2
    if-ltz v0, :cond_5

    #@48
    .line 4478
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    #@50
    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    #@52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_4

    #@58
    .line 4479
    return v3

    #@59
    .line 4477
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@5b
    goto :goto_2

    #@5c
    .line 4482
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v1

    #@62
    add-int/lit8 v0, v1, -0x1

    #@64
    :goto_3
    if-ltz v0, :cond_7

    #@66
    .line 4483
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v1

    #@6c
    check-cast v1, Landroid/content/pm/PackageParser$Service;

    #@6e
    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    #@70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_6

    #@76
    .line 4484
    return v3

    #@77
    .line 4482
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@79
    goto :goto_3

    #@7a
    .line 4487
    :cond_7
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7f
    move-result v1

    #@80
    add-int/lit8 v0, v1, -0x1

    #@82
    :goto_4
    if-ltz v0, :cond_9

    #@84
    .line 4488
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    #@8c
    iget-object v1, v1, Landroid/content/pm/PackageParser$Instrumentation;->className:Ljava/lang/String;

    #@8e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v1

    #@92
    if-eqz v1, :cond_8

    #@94
    .line 4489
    return v3

    #@95
    .line 4487
    :cond_8
    add-int/lit8 v0, v0, -0x1

    #@97
    goto :goto_4

    #@98
    .line 4492
    :cond_9
    return v2
.end method

.method public isForwardLocked()Z
    .locals 1

    #@0
    .prologue
    .line 4499
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isForwardLocked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPrivilegedApp()Z
    .locals 1

    #@0
    .prologue
    .line 4513
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    #@0
    .prologue
    .line 4506
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    #@0
    .prologue
    .line 4520
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4441
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@2
    .line 4442
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6
    .line 4443
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@10
    .line 4444
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    #@18
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Permission;->setPackageName(Ljava/lang/String;)V

    #@1b
    .line 4443
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 4446
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v1

    #@24
    add-int/lit8 v0, v1, -0x1

    #@26
    :goto_1
    if-ltz v0, :cond_1

    #@28
    .line 4447
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    #@30
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$PermissionGroup;->setPackageName(Ljava/lang/String;)V

    #@33
    .line 4446
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_1

    #@36
    .line 4449
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v1

    #@3c
    add-int/lit8 v0, v1, -0x1

    #@3e
    :goto_2
    if-ltz v0, :cond_2

    #@40
    .line 4450
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@48
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    #@4b
    .line 4449
    add-int/lit8 v0, v0, -0x1

    #@4d
    goto :goto_2

    #@4e
    .line 4452
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v1

    #@54
    add-int/lit8 v0, v1, -0x1

    #@56
    :goto_3
    if-ltz v0, :cond_3

    #@58
    .line 4453
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    #@60
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    #@63
    .line 4452
    add-int/lit8 v0, v0, -0x1

    #@65
    goto :goto_3

    #@66
    .line 4455
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v1

    #@6c
    add-int/lit8 v0, v1, -0x1

    #@6e
    :goto_4
    if-ltz v0, :cond_4

    #@70
    .line 4456
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v1

    #@76
    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    #@78
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Provider;->setPackageName(Ljava/lang/String;)V

    #@7b
    .line 4455
    add-int/lit8 v0, v0, -0x1

    #@7d
    goto :goto_4

    #@7e
    .line 4458
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@83
    move-result v1

    #@84
    add-int/lit8 v0, v1, -0x1

    #@86
    :goto_5
    if-ltz v0, :cond_5

    #@88
    .line 4459
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v1

    #@8e
    check-cast v1, Landroid/content/pm/PackageParser$Service;

    #@90
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Service;->setPackageName(Ljava/lang/String;)V

    #@93
    .line 4458
    add-int/lit8 v0, v0, -0x1

    #@95
    goto :goto_5

    #@96
    .line 4461
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9b
    move-result v1

    #@9c
    add-int/lit8 v0, v1, -0x1

    #@9e
    :goto_6
    if-ltz v0, :cond_6

    #@a0
    .line 4462
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    #@a2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a5
    move-result-object v1

    #@a6
    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    #@a8
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Instrumentation;->setPackageName(Ljava/lang/String;)V

    #@ab
    .line 4461
    add-int/lit8 v0, v0, -0x1

    #@ad
    goto :goto_6

    #@ae
    .line 4440
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4524
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Package{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 4525
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 4524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 4526
    const-string/jumbo v1, " "

    #@1b
    .line 4524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 4526
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@21
    .line 4524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 4526
    const-string/jumbo v1, "}"

    #@28
    .line 4524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
