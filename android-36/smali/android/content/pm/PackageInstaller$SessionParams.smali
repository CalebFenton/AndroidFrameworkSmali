.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams$PermissionState;,
        Landroid/content/pm/PackageInstaller$SessionParams$UserActionRequirement;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_PACKAGE_NAME_LENGTH:I = 0xff

.field public static final whitelist MODE_FULL_INSTALL:I = 0x1

.field public static final whitelist MODE_INHERIT_EXISTING:I = 0x2

.field public static final greylist-max-o MODE_INVALID:I = -0x1

.field public static final whitelist PERMISSION_STATE_DEFAULT:I = 0x0

.field public static final whitelist PERMISSION_STATE_DENIED:I = 0x2

.field public static final whitelist PERMISSION_STATE_GRANTED:I = 0x1

.field public static final whitelist RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UID_UNKNOWN:I = -0x1

.field public static final whitelist USER_ACTION_NOT_REQUIRED:I = 0x2

.field public static final whitelist USER_ACTION_REQUIRED:I = 0x1

.field public static final whitelist USER_ACTION_UNSPECIFIED:I


# instance fields
.field public greylist-max-o abiOverride:Ljava/lang/String;

.field public greylist-max-r appIcon:Landroid/graphics/Bitmap;

.field public greylist-max-o appIconLastModified:J

.field public greylist-max-p appLabel:Ljava/lang/String;

.field public greylist-max-p appPackageName:Ljava/lang/String;

.field public blacklist applicationEnabledSettingPersistent:Z

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist dataLoaderParams:Landroid/content/pm/DataLoaderParams;

.field public blacklist developmentInstallFlags:I

.field public blacklist dexoptCompilerFilter:Ljava/lang/String;

.field public blacklist forceQueryableOverride:Z

.field public greylist installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public greylist-max-o installerPackageName:Ljava/lang/String;

.field public blacklist isAutoInstallDependenciesEnabled:Z

.field public blacklist isMultiPackage:Z

.field public blacklist isStaged:Z

.field private final blacklist mPermissionStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-p mode:I

.field public greylist-max-r originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public blacklist requiredInstalledVersionCode:J

.field public blacklist rollbackDataPolicy:I

.field public blacklist rollbackImpactLevel:I

.field public blacklist rollbackLifetimeMillis:J

.field public greylist-max-r sizeBytes:J

.field public blacklist unarchiveId:I

.field public greylist-max-o volumeUuid:Ljava/lang/String;

.field public blacklist whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2663
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    .line 3719
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 8
    .param p1, "mode"    # I

    .line 2825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2737
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2740
    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2743
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2745
    const/4 v2, 0x0

    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2753
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2755
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2767
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2771
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2782
    const/4 v5, 0x3

    iput v5, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2788
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2792
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2796
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2798
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 2800
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 2804
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2806
    iput-boolean v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 2808
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 2810
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 2812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 2814
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 2826
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2827
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 2828
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2737
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2740
    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2743
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2745
    const/4 v2, 0x0

    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2753
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2755
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2767
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2771
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2782
    const/4 v5, 0x3

    iput v5, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2788
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2792
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2796
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2798
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 2800
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 2804
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2806
    iput-boolean v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 2808
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 2810
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 2812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 2814
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 2832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2836
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2837
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2838
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2839
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2840
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2841
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2843
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2844
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2845
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2846
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 2847
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2848
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2850
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 2851
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2852
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2853
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 2854
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2855
    const-class v0, Landroid/content/pm/DataLoaderParamsParcel;

    .line 2856
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/DataLoaderParamsParcel;

    .line 2855
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/DataLoaderParamsParcel;

    .line 2857
    .local v0, "dataLoaderParamsParcel":Landroid/content/pm/DataLoaderParamsParcel;
    if-eqz v0, :cond_e7

    .line 2858
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2860
    :cond_e7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2861
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 2862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 2863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2865
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 2866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 2867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 2868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 2869
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 2870
    return-void
.end method


# virtual methods
.method public greylist-max-o areHiddenOptionsSet()Z
    .registers 3

    .line 2921
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x11d880

    and-int/2addr v0, v1

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public blacklist copy()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 4

    .line 2874
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2875
    .local v0, "ret":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2876
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2877
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2878
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2879
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2880
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2881
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2882
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2883
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2884
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2885
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2886
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2887
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2888
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2889
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2890
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2891
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 2892
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2893
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2894
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 2895
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2896
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2897
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2898
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 2899
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 2900
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2901
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2902
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 2903
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 2904
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 2905
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 2906
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 2907
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3674
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 3635
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3636
    const-string/jumbo v0, "installFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3637
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "installLocation"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3638
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "installReason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3639
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "installScenario"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3640
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "sizeBytes"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3641
    const-string v0, "appPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3642
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "appIcon"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3643
    const-string v0, "appLabel"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3644
    const-string/jumbo v0, "originatingUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3645
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "originatingUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3646
    const-string/jumbo v0, "referrerUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3647
    const-string v0, "abiOverride"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3648
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3649
    const-string/jumbo v0, "mPermissionStates"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3650
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "packageSource"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3651
    const-string/jumbo v0, "whitelistedRestrictedPermissions"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3652
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "autoRevokePermissions"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3653
    const-string/jumbo v0, "installerPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3654
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3655
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3656
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "forceQueryable"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3657
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-static {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->-$$Nest$smuserActionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireUserAction"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3658
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "requiredInstalledVersionCode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3659
    const-string v0, "dataLoaderParams"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3660
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rollbackDataPolicy"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3661
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "rollbackLifetimeMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3662
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rollbackImpactLevel"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3663
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3664
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3663
    const-string v1, "applicationEnabledSettingPersistent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3665
    const-string v0, "developmentInstallFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3666
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "unarchiveId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3667
    const-string v0, "dexoptCompilerFilter"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3668
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "isAutoInstallDependenciesEnabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 3669
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3670
    return-void
.end method

.method public blacklist getEnableRollback()Z
    .registers 3

    .line 3435
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist getLegacyGrantedRuntimePermissions()[Ljava/lang/String;
    .registers 7

    .line 3598
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 3599
    const/4 v0, 0x0

    return-object v0

    .line 3602
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3603
    .local v0, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_e
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 3604
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3605
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3606
    .local v3, "state":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    .line 3607
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3603
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/Integer;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3611
    .end local v1    # "index":I
    :cond_33
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getPermissionStates()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3592
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist setAllocateAggressive(Z)V
    .registers 4
    .param p1, "allocateAggressive"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3360
    if-eqz p1, :cond_b

    .line 3361
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_13

    .line 3363
    :cond_b
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3365
    :goto_13
    return-void
.end method

.method public whitelist setAllowDowngrade(Z)V
    .registers 2
    .param p1, "allowDowngrade"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3268
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 3269
    return-void
.end method

.method public whitelist setAppIcon(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .line 2972
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2973
    return-void
.end method

.method public whitelist setAppLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "appLabel"    # Ljava/lang/CharSequence;

    .line 2981
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2982
    return-void
.end method

.method public whitelist setAppPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 2963
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2964
    return-void
.end method

.method public whitelist setApplicationEnabledSettingPersistent()V
    .registers 2

    .line 3545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3546
    return-void
.end method

.method public whitelist setAutoInstallDependenciesEnabled(Z)V
    .registers 2
    .param p1, "enableAutoInstallDependencies"    # Z

    .line 3630
    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 3631
    return-void
.end method

.method public whitelist setAutoRevokePermissionsMode(Z)V
    .registers 3
    .param p1, "shouldAutoRevoke"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3168
    xor-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3169
    return-void
.end method

.method public whitelist setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V
    .registers 2
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3452
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3453
    return-void
.end method

.method public blacklist setDexoptCompilerFilter(Ljava/lang/String;)V
    .registers 2
    .param p1, "dexoptCompilerFilter"    # Ljava/lang/String;

    .line 3586
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 3587
    return-void
.end method

.method public whitelist setDontKillApp(Z)V
    .registers 3
    .param p1, "dontKillApp"    # Z

    .line 3311
    if-eqz p1, :cond_9

    .line 3312
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_f

    .line 3314
    :cond_9
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3316
    :goto_f
    return-void
.end method

.method public whitelist setEnableRollback(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setEnableRollback(ZI)V

    .line 3185
    return-void
.end method

.method public whitelist setEnableRollback(ZI)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "dataPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3204
    if-eqz p1, :cond_a

    .line 3205
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_16

    .line 3207
    :cond_a
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3210
    :goto_16
    iput p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 3211
    return-void
.end method

.method public blacklist setForceQueryable()V
    .registers 2

    .line 3460
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 3461
    return-void
.end method

.method public whitelist setGrantedRuntimePermissions([Ljava/lang/String;)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3026
    if-nez p1, :cond_e

    .line 3028
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3029
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_21

    .line 3031
    :cond_e
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3033
    array-length v0, p1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_21

    aget-object v2, p1, v1

    .line 3034
    .local v2, "permission":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionState(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionParams;

    .line 3033
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 3037
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist setInstallAsApex()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3430
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3431
    return-void
.end method

.method public whitelist setInstallAsInstantApp(Z)V
    .registers 3
    .param p1, "isInstantApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3321
    if-eqz p1, :cond_f

    .line 3322
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3323
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1b

    .line 3325
    :cond_f
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3326
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3328
    :goto_1b
    return-void
.end method

.method public whitelist setInstallAsVirtualPreload()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3337
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3338
    return-void
.end method

.method public blacklist setInstallFlagAllowTest()V
    .registers 2

    .line 3372
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3373
    return-void
.end method

.method public greylist-max-o setInstallFlagsForcePermissionPrompt()V
    .registers 2

    .line 3296
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3297
    return-void
.end method

.method public whitelist setInstallLocation(I)V
    .registers 2
    .param p1, "installLocation"    # I

    .line 2937
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2938
    return-void
.end method

.method public whitelist setInstallReason(I)V
    .registers 2
    .param p1, "installReason"    # I

    .line 3353
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3354
    return-void
.end method

.method public whitelist setInstallScenario(I)V
    .registers 2
    .param p1, "installScenario"    # I

    .line 3537
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3538
    return-void
.end method

.method public whitelist setInstallerPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 3389
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 3390
    return-void
.end method

.method public whitelist setMultiPackage()V
    .registers 2

    .line 3401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 3402
    return-void
.end method

.method public whitelist setOriginatingUid(I)V
    .registers 2
    .param p1, "originatingUid"    # I

    .line 2999
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3000
    return-void
.end method

.method public whitelist setOriginatingUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "originatingUri"    # Landroid/net/Uri;

    .line 2991
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2992
    return-void
.end method

.method public whitelist setPackageSource(I)V
    .registers 2
    .param p1, "packageSource"    # I

    .line 3112
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 3113
    return-void
.end method

.method public whitelist setPermissionState(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 3071
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3072
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided permissionName cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3073
    if-nez p1, :cond_19

    const-string/jumbo v2, "null"

    goto :goto_1b

    :cond_19
    const-string v2, "empty"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3076
    :cond_27
    packed-switch p2, :pswitch_data_54

    .line 3085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected permission state int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3082
    :pswitch_43
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    goto :goto_53

    .line 3078
    :pswitch_4d
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    nop

    .line 3088
    :goto_53
    return-object p0

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public blacklist setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3094
    .local p1, "grantPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "denyPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3095
    .local v1, "grantPermission":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    .end local v1    # "grantPermission":Ljava/lang/String;
    goto :goto_4

    .line 3097
    :cond_1b
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3098
    .local v1, "denyPermission":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    .end local v1    # "denyPermission":Ljava/lang/String;
    goto :goto_1f

    .line 3100
    :cond_36
    return-void
.end method

.method public whitelist setReferrerUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "referrerUri"    # Landroid/net/Uri;

    .line 3009
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 3010
    return-void
.end method

.method public whitelist setRequestDowngrade(Z)V
    .registers 3
    .param p1, "requestDowngrade"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3274
    if-eqz p1, :cond_9

    .line 3275
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_f

    .line 3277
    :cond_9
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3279
    :goto_f
    return-void
.end method

.method public whitelist setRequestUpdateOwnership(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 3564
    if-eqz p1, :cond_a

    .line 3565
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_12

    .line 3567
    :cond_a
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3569
    :goto_12
    return-void
.end method

.method public whitelist setRequireUserAction(I)V
    .registers 5
    .param p1, "requireUserAction"    # I

    .line 3522
    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_29

    .line 3525
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireUserAction set as invalid value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but must be one of [USER_ACTION_UNSPECIFIED, USER_ACTION_REQUIRED, USER_ACTION_NOT_REQUIRED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3530
    :cond_29
    :goto_29
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 3531
    return-void
.end method

.method public blacklist setRequiredInstalledVersionCode(J)V
    .registers 3
    .param p1, "versionCode"    # J

    .line 3291
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 3292
    return-void
.end method

.method public whitelist setRollbackImpactLevel(I)V
    .registers 4
    .param p1, "impactLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3254
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 3258
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 3259
    return-void

    .line 3255
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackImpactLevel when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRollbackLifetimeMillis(J)V
    .registers 5
    .param p1, "lifetimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3230
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    .line 3233
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 3237
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3238
    return-void

    .line 3234
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackLifetimeMillis when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3231
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rollbackLifetimeMillis can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSize(J)V
    .registers 3
    .param p1, "sizeBytes"    # J

    .line 2950
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2951
    return-void
.end method

.method public whitelist setStaged()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 3420
    return-void
.end method

.method public whitelist setUnarchiveId(I)V
    .registers 2
    .param p1, "unarchiveId"    # I

    .line 3581
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 3582
    return-void
.end method

.method public whitelist setWhitelistedRestrictedPermissions(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3142
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    .line 3143
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3144
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    goto :goto_22

    .line 3146
    :cond_f
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3147
    if-eqz p1, :cond_1f

    .line 3148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 3150
    :goto_22
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3679
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3680
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3681
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3682
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3683
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3684
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3685
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3686
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3687
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3688
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3689
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3690
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3691
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3692
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3693
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3694
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3695
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3696
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3697
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3698
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3699
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3700
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3701
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_7c

    .line 3702
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_80

    .line 3704
    :cond_7c
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3706
    :goto_80
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3707
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3708
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3709
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3710
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3711
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3712
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3713
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3715
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3716
    return-void
.end method
