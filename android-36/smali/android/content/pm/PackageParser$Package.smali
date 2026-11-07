.class public final Landroid/content/pm/PackageParser$Package;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final greylist activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public greylist applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public greylist-max-o baseCodePath:Ljava/lang/String;

.field public greylist-max-o baseHardwareAccelerated:Z

.field public greylist-max-o baseRevisionCode:I

.field public greylist-max-o childPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o codePath:Ljava/lang/String;

.field public greylist configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o coreApp:Z

.field public greylist-max-o cpuAbiOverride:Ljava/lang/String;

.field public greylist-max-o featureGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist implicitPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist installLocation:I

.field public final greylist instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o isStub:Z

.field public greylist-max-o libraryNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mAdoptPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mAppMetaData:Landroid/os/Bundle;

.field public greylist-max-o mCompileSdkVersion:I

.field public greylist-max-o mCompileSdkVersionCodename:Ljava/lang/String;

.field public greylist mExtras:Ljava/lang/Object;

.field public greylist-max-r mKeySetMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public greylist-max-o mLastPackageUsageTimeInMills:[J

.field public greylist-max-o mOriginalPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mOverlayCategory:Ljava/lang/String;

.field public greylist-max-o mOverlayIsStatic:Z

.field public greylist-max-o mOverlayPriority:I

.field public greylist-max-o mOverlayTarget:Ljava/lang/String;

.field public blacklist mOverlayTargetName:Ljava/lang/String;

.field public greylist mPreferredOrder:I

.field public greylist-max-o mRealPackage:Ljava/lang/String;

.field public greylist-max-o mRequiredAccountType:Ljava/lang/String;

.field public greylist-max-o mRequiredForAllUsers:Z

.field public greylist-max-o mRestrictedAccountType:Ljava/lang/String;

.field public greylist mSharedUserId:Ljava/lang/String;

.field public greylist mSharedUserLabel:I

.field public greylist mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public greylist-max-r mUpgradeKeySets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mVersionCode:I

.field public greylist-max-o mVersionCodeMajor:I

.field public greylist mVersionName:Ljava/lang/String;

.field public greylist-max-o manifestPackageName:Ljava/lang/String;

.field public greylist packageName:Ljava/lang/String;

.field public greylist-max-o parentPackage:Landroid/content/pm/PackageParser$Package;

.field public final greylist permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o preferredActivityFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist protectedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public greylist reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o restrictUpdateHash:[B

.field public final greylist services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o splitCodePaths:[Ljava/lang/String;

.field public greylist-max-o splitFlags:[I

.field public greylist-max-o splitNames:[Ljava/lang/String;

.field public greylist-max-o splitPrivateFlags:[I

.field public greylist-max-o splitRevisionCodes:[I

.field public greylist-max-o staticSharedLibName:Ljava/lang/String;

.field public greylist-max-o staticSharedLibVersion:J

.field public greylist-max-o use32bitAbi:Z

.field public greylist usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist usesLibraryFiles:[Ljava/lang/String;

.field public blacklist usesLibraryInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o usesStaticLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field public greylist-max-o usesStaticLibrariesVersions:[J

.field public greylist-max-o visibleToInstantApps:Z

.field public greylist-max-o volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7603
    new-instance v0, Landroid/content/pm/PackageParser$Package$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Package$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Package;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 7323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6807
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6810
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 6812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 6814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 6816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 6818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 6820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 6822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 6825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 6829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 6837
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 6838
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 6839
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 6840
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 6842
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 6843
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 6844
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 6845
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 6847
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 6849
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 6851
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 6853
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 6854
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 6855
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 6858
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 6886
    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 6891
    iput v1, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 6895
    const/16 v2, 0x8

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    .line 6909
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 6913
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 6917
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 7325
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 7327
    .local v2, "boot":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->manifestPackageName:Ljava/lang/String;

    .line 7329
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 7330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 7331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 7332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 7333
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 7334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 7335
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 7336
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 7337
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 7338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d2

    move v3, v4

    goto :goto_d3

    :cond_d2
    move v3, v1

    :goto_d3
    iput-boolean v3, p0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 7339
    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7340
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_f1

    .line 7341
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 7347
    :cond_f1
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7348
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7349
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7350
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7351
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7352
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7353
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7354
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7355
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7356
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7357
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7358
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7359
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    const-class v5, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {p1, v3, v2, v5}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7360
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7362
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 7363
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7364
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 7365
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7366
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 7367
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7369
    const-class v3, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 7371
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 7372
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v5, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7373
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_184

    .line 7374
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 7377
    :cond_184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 7378
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_196

    .line 7379
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 7381
    :cond_196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 7382
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 7383
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7384
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 7385
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7386
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 7387
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7388
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 7390
    sget-object v3, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 7392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7393
    .local v3, "libCount":I
    if-lez v3, :cond_1fd

    .line 7394
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 7395
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 7396
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v5}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7397
    new-array v5, v3, [J

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 7398
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readLongArray([J)V

    .line 7399
    new-array v5, v3, [[Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 7400
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f0
    if-ge v5, v3, :cond_1fd

    .line 7401
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 7400
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f0

    .line 7405
    .end local v5    # "i":I
    :cond_1fd
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 7406
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    const-class v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p1, v5, v2, v6}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7407
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_215

    .line 7408
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 7411
    :cond_215
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 7412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 7413
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 7414
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 7415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 7416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 7417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 7418
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v5, :cond_24b

    .line 7419
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 7421
    :cond_24b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 7422
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_25d

    .line 7423
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 7425
    :cond_25d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 7427
    const-class v5, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 7429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 7438
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 7439
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    const-class v6, Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p1, v5, v2, v6}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7440
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_28b

    .line 7441
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 7444
    :cond_28b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 7445
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    const-class v6, Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, v5, v2, v6}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7446
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2a3

    .line 7447
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 7450
    :cond_2a3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 7451
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    const-class v6, Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {p1, v5, v2, v6}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7452
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2bb

    .line 7453
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 7456
    :cond_2bb
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 7457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_2c9

    move v0, v4

    goto :goto_2ca

    :cond_2c9
    move v0, v1

    :goto_2ca
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 7458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_2d4

    move v0, v4

    goto :goto_2d5

    :cond_2d4
    move v0, v1

    :goto_2d5
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 7459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 7460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 7461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 7462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    .line 7463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 7464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 7465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_303

    move v0, v4

    goto :goto_304

    :cond_303
    move v0, v1

    :goto_304
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 7466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 7467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 7468
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 7470
    invoke-static {p1}, Landroid/content/pm/PackageParser;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 7472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    .line 7473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_32c

    move v0, v4

    goto :goto_32d

    :cond_32c
    move v0, v1

    :goto_32d
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 7474
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 7475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_33c

    move v1, v4

    :cond_33c
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 7476
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6807
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6810
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 6812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 6814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 6816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 6818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 6820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 6822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 6825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 6829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 6837
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 6838
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 6839
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 6840
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 6842
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 6843
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 6844
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 6845
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 6847
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 6849
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 6851
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 6853
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 6854
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 6855
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 6858
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 6886
    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 6891
    iput v1, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 6895
    const/16 v1, 0x8

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    .line 6909
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 6913
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 6917
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 6975
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6976
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->manifestPackageName:Ljava/lang/String;

    .line 6977
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6978
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6979
    return-void
.end method

.method private static greylist-max-o internStringArrayList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7479
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_19

    .line 7480
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7481
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 7482
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7481
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7485
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_19
    return-void
.end method


# virtual methods
.method public greylist-max-o canHaveOatDir()Z
    .registers 2

    .line 7281
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 7320
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o fixupOwner(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 7492
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/PackageParser$Component<*>;>;"
    if-eqz p1, :cond_3e

    .line 7493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Component;

    .line 7494
    .local v1, "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    iput-object p0, v1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7495
    instance-of v2, v1, Landroid/content/pm/PackageParser$Activity;

    if-eqz v2, :cond_22

    .line 7496
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_3d

    .line 7497
    :cond_22
    instance-of v2, v1, Landroid/content/pm/PackageParser$Service;

    if-eqz v2, :cond_30

    .line 7498
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_3d

    .line 7499
    :cond_30
    instance-of v2, v1, Landroid/content/pm/PackageParser$Provider;

    if-eqz v2, :cond_3d

    .line 7500
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7502
    .end local v1    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    :cond_3d
    :goto_3d
    goto :goto_6

    .line 7504
    :cond_3e
    return-void
.end method

.method public greylist-max-o getAllCodePaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7145
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7146
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 7147
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7149
    :cond_17
    return-object v0
.end method

.method public greylist-max-o getAllCodePathsExcludingResourceOnly()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7158
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    .line 7159
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7161
    :cond_12
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 7162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_32

    .line 7163
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2f

    .line 7164
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7162
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 7168
    .end local v1    # "i":I
    :cond_32
    return-object v0
.end method

.method public greylist-max-o getChildPackageNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7039
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 7040
    const/4 v0, 0x0

    return-object v0

    .line 7042
    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7043
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7044
    .local v1, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_24

    .line 7045
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7046
    .local v3, "childPackageName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7044
    .end local v3    # "childPackageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 7048
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method public greylist-max-o getLatestForegroundPackageUseTimeInMills()J
    .registers 9

    .line 7300
    const/4 v0, 0x2

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 7305
    .local v0, "foregroundReasons":[I
    const-wide/16 v2, 0x0

    .line 7306
    .local v2, "latestUse":J
    array-length v4, v0

    :goto_9
    if-ge v1, v4, :cond_18

    aget v5, v0, v1

    .line 7307
    .local v5, "reason":I
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aget-wide v6, v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 7306
    .end local v5    # "reason":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 7309
    :cond_18
    return-wide v2
.end method

.method public greylist-max-o getLatestPackageUseTimeInMills()J
    .registers 8

    .line 7292
    const-wide/16 v0, 0x0

    .line 7293
    .local v0, "latestUse":J
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_11

    aget-wide v5, v2, v4

    .line 7294
    .local v5, "use":J
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 7293
    .end local v5    # "use":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 7296
    :cond_11
    return-wide v0
.end method

.method public greylist-max-o getLongVersionCode()J
    .registers 3

    .line 6870
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o hasChildPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7052
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 7053
    .local v0, "childCount":I
    :goto_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_25

    .line 7054
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 7055
    const/4 v1, 0x1

    return v1

    .line 7053
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7058
    .end local v2    # "i":I
    :cond_25
    return v1
.end method

.method public greylist-max-o hasComponentClassName(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 7199
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 7200
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 7201
    return v1

    .line 7199
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 7204
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_25
    if-ltz v0, :cond_3b

    .line 7205
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 7206
    return v1

    .line 7204
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 7209
    .end local v0    # "i":I
    :cond_3b
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_42
    if-ltz v0, :cond_58

    .line 7210
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 7211
    return v1

    .line 7209
    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 7214
    .end local v0    # "i":I
    :cond_58
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_5f
    if-ltz v0, :cond_75

    .line 7215
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 7216
    return v1

    .line 7214
    :cond_72
    add-int/lit8 v0, v0, -0x1

    goto :goto_5f

    .line 7219
    .end local v0    # "i":I
    :cond_75
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_7c
    if-ltz v0, :cond_92

    .line 7220
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Instrumentation;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 7221
    return v1

    .line 7219
    :cond_8f
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 7224
    .end local v0    # "i":I
    :cond_92
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isExternal()Z
    .registers 2

    .line 7229
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isForwardLocked()Z
    .registers 2

    .line 7234
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isLibrary()Z
    .registers 2

    .line 7140
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public greylist-max-o isMatch(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 7285
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_a

    .line 7286
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v0

    return v0

    .line 7288
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isOdm()Z
    .registers 2

    .line 7259
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isOem()Z
    .registers 2

    .line 7239
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPrivileged()Z
    .registers 2

    .line 7264
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isProduct()Z
    .registers 2

    .line 7249
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSystem()Z
    .registers 2

    .line 7269
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemExt()Z
    .registers 2

    .line 7254
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isUpdatedSystemApp()Z
    .registers 2

    .line 7274
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isVendor()Z
    .registers 2

    .line 7244
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setApplicationInfoBaseCodePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 7029
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 7030
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 7031
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7032
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 7033
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 7032
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7036
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method public greylist-max-o setApplicationInfoBaseResourcePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourcePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7019
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 7020
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 7021
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7022
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 7023
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 7022
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7026
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method public greylist-max-o setApplicationInfoCodePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "codePath"    # Ljava/lang/String;

    .line 6995
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 6996
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 6997
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6998
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 6999
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 6998
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7002
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method public greylist-max-o setApplicationInfoFlags(II)V
    .registers 8
    .param p1, "mask"    # I
    .param p2, "flags"    # I

    .line 7119
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7120
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 7121
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7122
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_32

    .line 7123
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    not-int v4, p1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7122
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 7127
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method public greylist-max-o setApplicationInfoResourcePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourcePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7007
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 7008
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 7009
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7010
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 7011
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 7010
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7014
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method public greylist-max-o setApplicationInfoSplitCodePaths([Ljava/lang/String;)V
    .registers 3
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 7062
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 7064
    return-void
.end method

.method public greylist-max-o setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V
    .registers 3
    .param p1, "resroucePaths"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7069
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 7071
    return-void
.end method

.method public greylist-max-o setApplicationVolumeUuid(Ljava/lang/String;)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 6982
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 6983
    .local v0, "storageUuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 6984
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 6985
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_34

    .line 6986
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6987
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_34

    .line 6988
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 6989
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 6987
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 6992
    .end local v1    # "packageCount":I
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method public greylist-max-o setBaseCodePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 7088
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 7089
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 7090
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7091
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 7092
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 7091
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7095
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public greylist-max-o setCodePath(Ljava/lang/String;)V
    .registers 5
    .param p1, "codePath"    # Ljava/lang/String;

    .line 7078
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 7079
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 7080
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7081
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 7082
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 7081
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7085
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public greylist setPackageName(Ljava/lang/String;)V
    .registers 4
    .param p1, "newName"    # Ljava/lang/String;

    .line 7173
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7174
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7175
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_1e

    .line 7176
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Permission;->setPackageName(Ljava/lang/String;)V

    .line 7175
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 7178
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_26
    if-ltz v0, :cond_36

    .line 7179
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$PermissionGroup;->setPackageName(Ljava/lang/String;)V

    .line 7178
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 7181
    .end local v0    # "i":I
    :cond_36
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_3e
    if-ltz v0, :cond_4e

    .line 7182
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 7181
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 7184
    .end local v0    # "i":I
    :cond_4e
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_56
    if-ltz v0, :cond_66

    .line 7185
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 7184
    add-int/lit8 v0, v0, -0x1

    goto :goto_56

    .line 7187
    .end local v0    # "i":I
    :cond_66
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_6e
    if-ltz v0, :cond_7e

    .line 7188
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Provider;->setPackageName(Ljava/lang/String;)V

    .line 7187
    add-int/lit8 v0, v0, -0x1

    goto :goto_6e

    .line 7190
    .end local v0    # "i":I
    :cond_7e
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_86
    if-ltz v0, :cond_96

    .line 7191
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Service;->setPackageName(Ljava/lang/String;)V

    .line 7190
    add-int/lit8 v0, v0, -0x1

    goto :goto_86

    .line 7193
    .end local v0    # "i":I
    :cond_96
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_9e
    if-ltz v0, :cond_ae

    .line 7194
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Instrumentation;->setPackageName(Ljava/lang/String;)V

    .line 7193
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e

    .line 7196
    .end local v0    # "i":I
    :cond_ae
    return-void
.end method

.method public greylist-max-o setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 5
    .param p1, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 7099
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 7100
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 7101
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7102
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 7103
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 7102
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7106
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public greylist-max-o setSplitCodePaths([Ljava/lang/String;)V
    .registers 2
    .param p1, "codePaths"    # [Ljava/lang/String;

    .line 7074
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 7075
    return-void
.end method

.method public greylist-max-o setUse32bitAbi(Z)V
    .registers 5
    .param p1, "use32bitAbi"    # Z

    .line 7130
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 7131
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 7132
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7133
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 7134
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-boolean p1, v2, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 7133
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7137
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public greylist-max-o setVolumeUuid(Ljava/lang/String;)V
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 7109
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 7110
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 7111
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7112
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 7113
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 7112
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7116
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 7313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7314
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7313
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7508
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7509
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7510
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7511
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7512
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7513
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7514
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7515
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7516
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7517
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7518
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7519
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7520
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7522
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7523
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7524
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7525
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7526
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7527
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7528
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7530
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7531
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7532
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7535
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7536
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7538
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7539
    iget-wide v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7540
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7541
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7542
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7543
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7544
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 7546
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 7547
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ce

    .line 7549
    :cond_ad
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7550
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7551
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 7552
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c4
    if-ge v2, v1, :cond_ce

    aget-object v3, v0, v2

    .line 7553
    .local v3, "usesStaticLibrariesCertDigest":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7552
    .end local v3    # "usesStaticLibrariesCertDigest":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 7557
    :cond_ce
    :goto_ce
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7559
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7560
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7561
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7562
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 7563
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7564
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7565
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7566
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7567
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7569
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7571
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7579
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7580
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7581
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7583
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7584
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7585
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7586
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7587
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7588
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7589
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7590
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7591
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7592
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7593
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7594
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7595
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 7596
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 7597
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7598
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7599
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7600
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7601
    return-void
.end method
