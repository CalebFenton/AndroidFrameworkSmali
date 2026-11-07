.class public Lcom/android/internal/pm/parsing/pkg/PackageImpl;
.super Ljava/lang/Object;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
.implements Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans;,
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans2;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field protected static final blacklist sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static final blacklist sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static final blacklist sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static final blacklist sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static final blacklist sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static final blacklist sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field protected blacklist activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist anyDensity:Ljava/lang/Boolean;

.field protected blacklist apexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist appComponentFactory:Ljava/lang/String;

.field private blacklist attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist autoRevokePermissions:I

.field private blacklist backupAgentName:Ljava/lang/String;

.field private blacklist banner:I

.field private blacklist baseRevisionCode:I

.field private blacklist category:I

.field private blacklist classLoaderName:Ljava/lang/String;

.field private blacklist className:Ljava/lang/String;

.field private blacklist compatibleWidthLimitDp:I

.field private blacklist compileSdkVersion:I

.field private blacklist compileSdkVersionCodeName:Ljava/lang/String;

.field private blacklist configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dataExtractionRules:I

.field private blacklist descriptionRes:I

.field private blacklist featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fullBackupContent:I

.field private blacklist gwpAsanMode:I

.field private blacklist iconRes:I

.field private blacklist implicitPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist installLocation:I

.field protected blacklist instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist labelRes:I

.field private blacklist largestWidthLimitDp:I

.field private blacklist libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist logo:I

.field private blacklist mAllowCrossUidActivitySwitchFromBelow:Z

.field private blacklist mAlternateLauncherIconResIds:[I

.field private blacklist mAlternateLauncherLabelResIds:[I

.field protected blacklist mBaseApkPath:Ljava/lang/String;

.field private blacklist mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field private blacklist mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field private blacklist mBaseAppInfoFlags:I

.field private blacklist mBaseAppInfoPrivateFlags:I

.field private blacklist mBaseAppInfoPrivateFlagsExt:I

.field private blacklist mBooleans:J

.field private blacklist mBooleans2:J

.field blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private blacklist mEmergencyInstaller:Ljava/lang/String;

.field private blacklist mFeatureFlagState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIntentMatchingFlags:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleConfigRes:I

.field private blacklist mLongVersionCode:J

.field private blacklist mPageSizeAppCompatFlags:I

.field protected blacklist mPath:Ljava/lang/String;

.field private blacklist mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mStorageUuid:Ljava/util/UUID;

.field private blacklist mUsesLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesOptionalLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesSdkLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesStaticLibrariesSorted:[Ljava/lang/String;

.field private blacklist manageSpaceActivityName:Ljava/lang/String;

.field private final blacklist manifestPackageName:Ljava/lang/String;

.field private blacklist maxAspectRatio:F

.field private blacklist maxSdkVersion:I

.field private blacklist memtagMode:I

.field private blacklist metaData:Landroid/os/Bundle;

.field private blacklist mimeGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist minAspectRatio:F

.field private blacklist minExtensionVersions:Landroid/util/SparseIntArray;

.field private blacklist minSdkVersion:I

.field private blacklist nativeHeapZeroInitialized:I

.field protected blacklist nativeLibraryDir:Ljava/lang/String;

.field protected blacklist nativeLibraryRootDir:Ljava/lang/String;

.field private blacklist nativeLibraryRootRequiresIsa:Z

.field private blacklist networkSecurityConfigRes:I

.field private blacklist nonLocalizedLabel:Ljava/lang/CharSequence;

.field protected blacklist originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist overlayCategory:Ljava/lang/String;

.field private blacklist overlayPriority:I

.field private blacklist overlayTarget:Ljava/lang/String;

.field private blacklist overlayTargetOverlayableName:Ljava/lang/String;

.field private blacklist overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist packageName:Ljava/lang/String;

.field private blacklist permission:Ljava/lang/String;

.field protected blacklist permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist primaryCpuAbi:Ljava/lang/String;

.field private blacklist processName:Ljava/lang/String;

.field private blacklist processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field protected blacklist requestedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist requiredAccountType:Ljava/lang/String;

.field private blacklist requiresSmallestWidthDp:I

.field private blacklist resizeable:Ljava/lang/Boolean;

.field private blacklist resizeableActivity:Ljava/lang/Boolean;

.field private blacklist restrictUpdateHash:[B

.field private blacklist restrictedAccountType:Ljava/lang/String;

.field private blacklist roundIconRes:I

.field private blacklist sdkLibVersionMajor:I

.field private blacklist sdkLibraryName:Ljava/lang/String;

.field protected blacklist secondaryCpuAbi:Ljava/lang/String;

.field protected blacklist secondaryNativeLibraryDir:Ljava/lang/String;

.field protected blacklist services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sharedUserId:Ljava/lang/String;

.field private blacklist sharedUserLabel:I

.field private blacklist signingDetails:Landroid/content/pm/SigningDetails;

.field private blacklist splitClassLoaderNames:[Ljava/lang/String;

.field protected blacklist splitCodePaths:[Ljava/lang/String;

.field private blacklist splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist splitFlags:[I

.field private blacklist splitNames:[Ljava/lang/String;

.field private blacklist splitRevisionCodes:[I

.field private blacklist staticSharedLibVersion:J

.field private blacklist staticSharedLibraryName:Ljava/lang/String;

.field private blacklist supportsExtraLargeScreens:Ljava/lang/Boolean;

.field private blacklist supportsLargeScreens:Ljava/lang/Boolean;

.field private blacklist supportsNormalScreens:Ljava/lang/Boolean;

.field private blacklist supportsSmallScreens:Ljava/lang/Boolean;

.field private blacklist targetSandboxVersion:I

.field private blacklist targetSdkVersion:I

.field private blacklist taskAffinity:Ljava/lang/String;

.field private blacklist theme:I

.field private blacklist uiOptions:I

.field private blacklist uid:I

.field private blacklist upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesOptionalNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private blacklist usesSdkLibrariesOptional:[Z

.field private blacklist usesSdkLibrariesVersionsMajor:[J

.field private blacklist usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private blacklist usesStaticLibrariesVersions:[J

.field protected blacklist versionCode:I

.field protected blacklist versionCodeMajor:I

.field private blacklist versionName:Ljava/lang/String;

.field protected blacklist volumeUuid:Ljava/lang/String;

.field private blacklist zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 117
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 119
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 121
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 122
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 123
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 124
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 125
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 126
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 127
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 128
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 129
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 130
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 131
    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    .line 3551
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 3351
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 3353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    nop

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 143
    nop

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 146
    nop

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 149
    nop

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 152
    nop

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 155
    nop

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 162
    nop

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    .line 166
    nop

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 169
    nop

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 171
    nop

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 173
    nop

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 175
    nop

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 177
    nop

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 179
    nop

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 181
    nop

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 183
    nop

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 241
    nop

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 252
    nop

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 255
    nop

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 262
    nop

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 275
    nop

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 277
    nop

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 279
    nop

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 283
    nop

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 285
    nop

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 288
    nop

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 290
    nop

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 294
    nop

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 300
    nop

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 304
    nop

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 306
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 308
    nop

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 311
    nop

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 314
    nop

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 348
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 359
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 360
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 373
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 396
    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 402
    nop

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 408
    const-wide v1, 0x100000000000L

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 409
    const-wide/16 v1, 0x4

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 410
    nop

    .line 411
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 433
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    .line 500
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3354
    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 3356
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3358
    .local v0, "boot":Ljava/lang/ClassLoader;
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->readFeatureFlagState(Landroid/os/Parcel;)V

    .line 3360
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 3361
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 3362
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 3363
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 3364
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 3365
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 3366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 3367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 3368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    .line 3369
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    .line 3370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    .line 3371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 3372
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 3373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 3374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 3375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 3376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    .line 3377
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    .line 3378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 3379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    .line 3380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    .line 3381
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 3382
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    .line 3383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    .line 3384
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    .line 3385
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    .line 3386
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 3387
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 3388
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 3389
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 3390
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 3392
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 3393
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    .line 3395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3396
    .local v1, "digestsSize":I
    if-ltz v1, :cond_238

    .line 3397
    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 3398
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_229
    if-ge v2, v1, :cond_238

    .line 3399
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3398
    add-int/lit8 v2, v2, 0x1

    goto :goto_229

    .line 3405
    .end local v1    # "digestsSize":I
    .end local v2    # "index":I
    :cond_238
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 3406
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 3408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3409
    .restart local v1    # "digestsSize":I
    if-ltz v1, :cond_260

    .line 3410
    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 3411
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_251
    if-ge v2, v1, :cond_260

    .line 3412
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3411
    add-int/lit8 v2, v2, 0x1

    goto :goto_251

    .line 3416
    .end local v1    # "digestsSize":I
    .end local v2    # "index":I
    :cond_260
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    .line 3418
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    .line 3419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    .line 3420
    sget-object v1, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 3421
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 3422
    sget-object v1, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 3423
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    .line 3424
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 3425
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 3426
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    .line 3427
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 3429
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 3430
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 3431
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 3432
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 3434
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 3435
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 3437
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 3438
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 3439
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 3440
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 3442
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 3443
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 3445
    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 3447
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v1, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 3448
    const-class v1, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 3449
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    .line 3450
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    .line 3451
    const-class v1, Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 3452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 3453
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 3454
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 3455
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 3456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 3457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    .line 3458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    .line 3459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 3460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    .line 3461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    .line 3462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    .line 3463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    .line 3464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    .line 3465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    .line 3466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    .line 3467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 3468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    .line 3469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    .line 3470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    .line 3471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 3472
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    .line 3473
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    .line 3474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 3475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 3476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    .line 3477
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    .line 3479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    .line 3480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    .line 3481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    .line 3482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    .line 3483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 3484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    .line 3485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    .line 3486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    .line 3487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 3488
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 3489
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 3490
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 3491
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    .line 3492
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    .line 3493
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    .line 3494
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 3496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    .line 3497
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 3498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    .line 3499
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 3500
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 3501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    .line 3502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    .line 3503
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 3504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    .line 3505
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 3506
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 3507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 3508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3509
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 3510
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 3511
    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 3512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3514
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 3515
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 3516
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    .line 3517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    .line 3518
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    .line 3519
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    .line 3520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 3522
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 3523
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    .line 3527
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseApkPath"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p5, "isCoreApp"    # Z
    .param p6, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    nop

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 143
    nop

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 146
    nop

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 149
    nop

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 152
    nop

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 155
    nop

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 162
    nop

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    .line 166
    nop

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 169
    nop

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 171
    nop

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 173
    nop

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 175
    nop

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 177
    nop

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 179
    nop

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 181
    nop

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 183
    nop

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 241
    nop

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 252
    nop

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 255
    nop

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 262
    nop

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 275
    nop

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 277
    nop

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 279
    nop

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 283
    nop

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 285
    nop

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 288
    nop

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 290
    nop

    .line 291
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 294
    nop

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 300
    nop

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 304
    nop

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 306
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 308
    nop

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 311
    nop

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 314
    nop

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 348
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 359
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 360
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 373
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 396
    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 402
    nop

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 408
    const-wide v3, 0x100000000000L

    iput-wide v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 409
    const-wide/16 v3, 0x4

    iput-wide v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 410
    nop

    .line 411
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 433
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    .line 500
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 2766
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 2767
    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 2768
    iput-object p3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 2769
    iput-object p6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 2771
    if-eqz p4, :cond_170

    .line 2772
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 2773
    const/16 v0, 0xb

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 2775
    nop

    .line 2776
    const/4 v0, 0x5

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 2775
    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2777
    const/4 v0, 0x2

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2780
    const/16 v0, 0x9

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2782
    const/16 v0, 0xa

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2785
    const/4 v0, 0x6

    invoke-virtual {p4, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2789
    :cond_170
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 2790
    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1, p5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2791
    return-void
.end method

.method private blacklist addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 7
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 579
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_4b

    .line 580
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 581
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "groupIndex":I
    :goto_20
    if-ltz v2, :cond_48

    .line 582
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_31

    goto :goto_39

    .line 583
    :cond_31
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Max limit on number of MIME Groups reached"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_39
    :goto_39
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 581
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 579
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "groupIndex":I
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 588
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method private blacklist assignDerivedFields2()V
    .registers 5

    .line 2820
    invoke-static {p0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    .line 2821
    invoke-static {p0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    .line 2822
    nop

    .line 2823
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_20

    .line 2824
    :cond_14
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getHiddenApiWhitelistedApps()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2822
    :goto_20
    invoke-static {p0, v0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Z)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2826
    .local v0, "baseAppDataDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2827
    .local v1, "systemUserSuffix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    .line 2829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_de"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    .line 2831
    return-void
.end method

.method private blacklist buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_a

    .line 800
    const/4 v0, 0x0

    return-object v0

    .line 802
    :cond_a
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 803
    .local v0, "ret":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 804
    .local v2, "processName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 805
    .local v3, "process":Lcom/android/internal/pm/pkg/component/ParsedProcess;
    nop

    .line 806
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v4

    .line 808
    .local v4, "appClassesByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_5a

    .line 809
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 811
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 812
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 813
    .local v7, "appClassName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 814
    invoke-virtual {v0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "appClassName":Ljava/lang/String;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 818
    .end local v2    # "processName":Ljava/lang/String;
    .end local v3    # "process":Lcom/android/internal/pm/pkg/component/ParsedProcess;
    .end local v4    # "appClassesByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    :cond_5a
    goto :goto_1a

    .line 819
    :cond_5b
    return-object v0
.end method

.method public static blacklist buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 457
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 458
    invoke-interface {v0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 457
    return-object v0
.end method

.method public static blacklist forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p4, "isCoreApp"    # Z
    .param p5, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 441
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p0    # "packageName":Ljava/lang/String;
    .end local p1    # "baseCodePath":Ljava/lang/String;
    .end local p2    # "codePath":Ljava/lang/String;
    .end local p3    # "manifestArray":Landroid/content/res/TypedArray;
    .end local p4    # "isCoreApp":Z
    .end local p5    # "callback":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "baseCodePath":Ljava/lang/String;
    .local v3, "codePath":Ljava/lang/String;
    .local v4, "manifestArray":Landroid/content/res/TypedArray;
    .local v5, "isCoreApp":Z
    .local v6, "callback":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-object v0
.end method

.method public static blacklist forTesting(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 466
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 472
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "packageName":Ljava/lang/String;
    .end local p1    # "baseCodePath":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "baseCodePath":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-object v0
.end method

.method private blacklist getBoolean(J)Z
    .registers 7
    .param p1, "flag"    # J

    .line 2737
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist getBoolean2(J)Z
    .registers 7
    .param p1, "flag"    # J

    .line 2750
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)I
    .registers 4
    .param p0, "first"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p1, "second"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 116
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private blacklist makeImmutable()V
    .registers 2

    .line 2834
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2835
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2836
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 2837
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 2838
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 2839
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 2840
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    .line 2841
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 2842
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 2844
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 2845
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 2846
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 2847
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 2848
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 2849
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 2850
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 2852
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 2853
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 2854
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 2855
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 2856
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 2857
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 2858
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 2859
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 2860
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 2861
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 2862
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 2863
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 2864
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 2865
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 2866
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 2867
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 2868
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 2869
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 2870
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 2871
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 2872
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2873
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    .line 2874
    return-void
.end method

.method private blacklist readFeatureFlagState(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3531
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3532
    .local v0, "featureFlagStateAsArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_41

    aget-object v4, v0, v3

    .line 3533
    .local v4, "s":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 3534
    .local v5, "sepIndex":I
    if-ltz v5, :cond_3e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ne v5, v6, :cond_3e

    .line 3535
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3536
    .local v6, "flagPackageAndName":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 3537
    .local v7, "c":C
    const/4 v8, 0x0

    .line 3538
    .local v8, "flagValue":Ljava/lang/Boolean;
    const/16 v9, 0x31

    if-ne v7, v9, :cond_2d

    .line 3539
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_39

    .line 3540
    :cond_2d
    const/16 v9, 0x30

    if-ne v7, v9, :cond_34

    .line 3541
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_39

    .line 3542
    :cond_34
    const/16 v9, 0x3f

    if-eq v7, v9, :cond_39

    .line 3543
    goto :goto_3e

    .line 3545
    :cond_39
    :goto_39
    iget-object v9, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3532
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sepIndex":I
    .end local v6    # "flagPackageAndName":Ljava/lang/String;
    .end local v7    # "c":C
    .end local v8    # "flagValue":Ljava/lang/Boolean;
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3548
    :cond_41
    return-void
.end method

.method private blacklist setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 8
    .param p1, "flag"    # J
    .param p3, "value"    # Z

    .line 2728
    if-eqz p3, :cond_8

    .line 2729
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    goto :goto_e

    .line 2731
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 2733
    :goto_e
    return-object p0
.end method

.method private blacklist setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 8
    .param p1, "flag"    # J
    .param p3, "value"    # Z

    .line 2741
    if-eqz p3, :cond_8

    .line 2742
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    goto :goto_e

    .line 2744
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 2746
    :goto_e
    return-object p0
.end method

.method private static blacklist sortLibraries(Ljava/util/List;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2810
    .local p0, "libraryNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2811
    .local v0, "size":I
    if-nez v0, :cond_9

    .line 2812
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 2814
    :cond_9
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2815
    .local v1, "arr":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2816
    return-object v1
.end method

.method private blacklist writeFeatureFlagState(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 3331
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 3332
    .local v0, "featureFlagCount":I
    new-array v1, v0, [Ljava/lang/String;

    .line 3333
    .local v1, "featureFlagStateAsArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3334
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v0, :cond_7f

    .line 3335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3336
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 3337
    .local v5, "flagValue":Ljava/lang/Boolean;
    if-nez v5, :cond_3f

    .line 3338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_7c

    .line 3339
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 3340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_7c

    .line 3342
    :cond_61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 3334
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "flagValue":Ljava/lang/Boolean;
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3346
    .end local v3    # "i":I
    :cond_7f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3347
    return-void
.end method


# virtual methods
.method public blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "parsedActivity"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 508
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 509
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 510
    return-object p0
.end method

.method public bridge synthetic blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "adoptPermission"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 517
    return-object p0
.end method

.method public bridge synthetic blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "parsedApexSystemService"    # Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;

    .line 523
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 525
    return-object p0
.end method

.method public bridge synthetic blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "attribution"    # Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 530
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 531
    return-object p0
.end method

.method public bridge synthetic blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "configPreference"    # Landroid/content/pm/ConfigurationInfo;

    .line 536
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 537
    return-object p0
.end method

.method public bridge synthetic blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "flagPackageAndName"    # Ljava/lang/String;
    .param p2, "flagValue"    # Ljava/lang/Boolean;

    .line 3785
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3786
    return-object p0
.end method

.method public bridge synthetic blacklist addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "featureGroup"    # Landroid/content/pm/FeatureGroupInfo;

    .line 542
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 543
    return-object p0
.end method

.method public bridge synthetic blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 548
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 549
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 551
    return-object p0
.end method

.method public bridge synthetic blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "instrumentation"    # Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 556
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 557
    return-object p0
.end method

.method public bridge synthetic blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "keySetName"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    .line 562
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 563
    .local v0, "publicKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v0, :cond_10

    .line 564
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 566
    :cond_10
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 568
    return-object p0
.end method

.method public bridge synthetic blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 575
    return-object p0
.end method

.method public bridge synthetic blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "originalPackage"    # Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 593
    return-object p0
.end method

.method public bridge synthetic blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 5
    .param p1, "overlayableName"    # Ljava/lang/String;
    .param p2, "actorName"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 599
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 600
    return-object p0
.end method

.method public blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 605
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 606
    return-object p0
.end method

.method public bridge synthetic blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "permissionGroup"    # Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 611
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 612
    return-object p0
.end method

.method public bridge synthetic blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "intentInfo"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 618
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 619
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 618
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 620
    return-object p0
.end method

.method public bridge synthetic blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "property"    # Landroid/content/pm/PackageManager$Property;

    .line 625
    if-nez p1, :cond_3

    .line 626
    return-object p0

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 629
    return-object p0
.end method

.method public bridge synthetic blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "protectedBroadcast"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 635
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 638
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "parsedProvider"    # Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 643
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 644
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 645
    return-object p0
.end method

.method public bridge synthetic blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 650
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 651
    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 658
    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 664
    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "parsedReceiver"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 669
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 670
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 671
    return-object p0
.end method

.method public bridge synthetic blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "reqFeature"    # Landroid/content/pm/FeatureInfo;

    .line 676
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 677
    return-object p0
.end method

.method public bridge synthetic blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "parsedService"    # Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 682
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 683
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 684
    return-object p0
.end method

.method public bridge synthetic blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "index"    # I
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 2896
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2897
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2896
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2898
    return-object p0
.end method

.method public blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 689
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 691
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 693
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 699
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 700
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 702
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "index"    # I
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 2889
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2890
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2889
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2891
    return-object p0
.end method

.method public blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 708
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 709
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 712
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 717
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 719
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 722
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 727
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 731
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    .line 732
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    .line 734
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 9
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "versionMajor"    # J
    .param p4, "certSha256Digests"    # [Ljava/lang/String;
    .param p5, "usesSdkLibrariesOptional"    # Z

    .line 740
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 741
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 742
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 744
    const-class v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v0, v2, p4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    invoke-static {v0, p5}, Lcom/android/internal/util/ArrayUtils;->appendBooleanDuplicatesAllowed([ZZ)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    .line 748
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 8
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "version"    # J
    .param p4, "certSha256Digests"    # [Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 755
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 756
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    .line 758
    const-class v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v0, v2, p4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 760
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 7
    .param p1, "splitNames"    # [Ljava/lang/String;
    .param p2, "splitCodePaths"    # [Ljava/lang/String;
    .param p3, "splitRevisionCodes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    .line 771
    .local p4, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    .line 772
    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 773
    iput-object p3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    .line 774
    iput-object p4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 776
    array-length v0, p1

    .line 777
    .local v0, "count":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    .line 778
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 779
    return-object p0
.end method

.method public bridge synthetic blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist assignDerivedFields()V
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    .line 784
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    .line 785
    return-void
.end method

.method public blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5

    .line 3092
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3093
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_8
    if-ltz v1, :cond_19

    .line 3095
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPriority(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;I)V

    .line 3093
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3097
    .end local v1    # "index":I
    :cond_19
    return-object p0
.end method

.method public bridge synthetic blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2958
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2959
    return-object p0
.end method

.method public bridge synthetic blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2952
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2953
    return-object p0
.end method

.method public bridge synthetic blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2946
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2947
    return-object p0
.end method

.method public bridge synthetic blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAdoptPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAlternateLauncherIconResIds()[I
    .registers 2

    .line 889
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    return-object v0
.end method

.method public blacklist getAlternateLauncherLabelResIds()[I
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    return-object v0
.end method

.method public blacklist getApexSystemServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAppComponentFactory()Ljava/lang/String;
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getApplicationClassName()Ljava/lang/String;
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAttributions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAutoRevokePermissions()I
    .registers 2

    .line 918
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    return v0
.end method

.method public blacklist getBackupAgentName()Ljava/lang/String;
    .registers 2

    .line 924
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBannerResourceId()I
    .registers 2

    .line 929
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    return v0
.end method

.method public blacklist getBaseApkPath()Ljava/lang/String;
    .registers 2

    .line 935
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .registers 2

    .line 3774
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .registers 2

    .line 3778
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseRevisionCode()I
    .registers 2

    .line 940
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    return v0
.end method

.method public blacklist getCategory()I
    .registers 2

    .line 945
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    return v0
.end method

.method public blacklist getClassLoaderName()Ljava/lang/String;
    .registers 2

    .line 951
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompatibleWidthLimitDp()I
    .registers 2

    .line 962
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    return v0
.end method

.method public blacklist getCompileSdkVersion()I
    .registers 2

    .line 967
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    return v0
.end method

.method public blacklist getCompileSdkVersionCodeName()Ljava/lang/String;
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getConfigPreferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDataExtractionRulesResourceId()I
    .registers 2

    .line 984
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    return v0
.end method

.method public blacklist getDescriptionResourceId()I
    .registers 2

    .line 989
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    return v0
.end method

.method public blacklist getEmergencyInstaller()Ljava/lang/String;
    .registers 2

    .line 1316
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFeatureFlagState()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3790
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getFeatureGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFullBackupContentResourceId()I
    .registers 2

    .line 1000
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    return v0
.end method

.method public blacklist getGwpAsanMode()I
    .registers 2

    .line 1006
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    return v0
.end method

.method public blacklist getIconResourceId()I
    .registers 2

    .line 1011
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    return v0
.end method

.method public blacklist getImplicitPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .registers 2

    .line 1022
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    return v0
.end method

.method public blacklist getInstrumentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getIntentMatchingFlags()I
    .registers 2

    .line 3767
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    return v0
.end method

.method public blacklist getKeySetMapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getLabelResourceId()I
    .registers 2

    .line 1045
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    return v0
.end method

.method public blacklist getLargestWidthLimitDp()I
    .registers 2

    .line 1050
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    return v0
.end method

.method public blacklist getLibraryNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocaleConfigResourceId()I
    .registers 2

    .line 1061
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    return v0
.end method

.method public blacklist getLogoResourceId()I
    .registers 2

    .line 1066
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    return v0
.end method

.method public blacklist getLongVersionCode()J
    .registers 3

    .line 2878
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getManageSpaceActivityName()Ljava/lang/String;
    .registers 2

    .line 1072
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getManifestPackageName()Ljava/lang/String;
    .registers 2

    .line 3566
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxAspectRatio()F
    .registers 2

    .line 1077
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    return v0
.end method

.method public blacklist getMaxSdkVersion()I
    .registers 2

    .line 1082
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    return v0
.end method

.method public blacklist getMemtagMode()I
    .registers 2

    .line 1088
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    return v0
.end method

.method public blacklist getMetaData()Landroid/os/Bundle;
    .registers 2

    .line 1094
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getMimeGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getMinAspectRatio()F
    .registers 2

    .line 1105
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    return v0
.end method

.method public blacklist getMinExtensionVersions()Landroid/util/SparseIntArray;
    .registers 2

    .line 1111
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public blacklist getMinSdkVersion()I
    .registers 2

    .line 1116
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    return v0
.end method

.method public blacklist getNativeHeapZeroInitialized()I
    .registers 2

    .line 1122
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public blacklist getNativeLibraryDir()Ljava/lang/String;
    .registers 2

    .line 3576
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNativeLibraryRootDir()Ljava/lang/String;
    .registers 2

    .line 3582
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetworkSecurityConfigResourceId()I
    .registers 2

    .line 1133
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    return v0
.end method

.method public blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1139
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getOverlayCategory()Ljava/lang/String;
    .registers 2

    .line 1151
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayPriority()I
    .registers 2

    .line 1156
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    return v0
.end method

.method public blacklist getOverlayTarget()Ljava/lang/String;
    .registers 2

    .line 1162
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayTargetOverlayableName()Ljava/lang/String;
    .registers 2

    .line 1168
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayables()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 1180
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPageSizeAppCompatFlags()I
    .registers 2

    .line 1128
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    return v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 1186
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermission()Ljava/lang/String;
    .registers 2

    .line 1192
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermissionGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPreferredActivityFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPrimaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 3593
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 1216
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getProcesses()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 1228
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getProtectedBroadcasts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesProviders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getReceivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1264
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestedFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRequiredAccountType()Ljava/lang/String;
    .registers 2

    .line 1287
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiresSmallestWidthDp()I
    .registers 2

    .line 1292
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    return v0
.end method

.method public blacklist getResizeableActivity()Ljava/lang/Boolean;
    .registers 2

    .line 1298
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getRestrictUpdateHash()[B
    .registers 2

    .line 1304
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    return-object v0
.end method

.method public blacklist getRestrictedAccountType()Ljava/lang/String;
    .registers 2

    .line 1310
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRoundIconResourceId()I
    .registers 2

    .line 1321
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    return v0
.end method

.method public blacklist getSdkLibVersionMajor()I
    .registers 2

    .line 1332
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    return v0
.end method

.method public blacklist getSdkLibraryName()Ljava/lang/String;
    .registers 2

    .line 1327
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 3599
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondaryNativeLibraryDir()Ljava/lang/String;
    .registers 2

    .line 3605
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSharedUserId()Ljava/lang/String;
    .registers 2

    .line 1344
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSharedUserLabelResourceId()I
    .registers 2

    .line 1349
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    return v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 1355
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitClassLoaderNames()[Ljava/lang/String;
    .registers 2

    .line 1361
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitCodePaths()[Ljava/lang/String;
    .registers 2

    .line 1367
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitDependencies()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitFlags()[I
    .registers 2

    .line 1379
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    return-object v0
.end method

.method public blacklist getSplitNames()[Ljava/lang/String;
    .registers 2

    .line 1385
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitRevisionCodes()[I
    .registers 2

    .line 1391
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    :goto_9
    return-object v0
.end method

.method public blacklist getSplits()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    if-nez v0, :cond_9c

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v0, "splits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    new-instance v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 829
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseRevisionCode()I

    move-result v4

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isDeclaredHavingCode()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    move v5, v2

    goto :goto_1e

    :cond_1d
    move v5, v7

    .line 831
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getClassLoaderName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 826
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 835
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2e
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_52

    .line 836
    new-instance v8, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    aget-object v9, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v10, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    aget v11, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v12, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v13, v2, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 846
    .end local v1    # "index":I
    :cond_52
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v1, :cond_96

    .line 847
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_57
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_96

    .line 848
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 849
    .local v2, "splitIndex":I
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 850
    .local v3, "dependenciesByIndex":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v4, "dependencies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    array-length v5, v3

    move v6, v7

    :goto_74
    if-ge v6, v5, :cond_86

    aget v8, v3, v6

    .line 853
    .local v8, "dependencyIndex":I
    if-ltz v8, :cond_83

    .line 854
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v8    # "dependencyIndex":I
    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 857
    :cond_86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    .line 858
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->fillDependencies(Ljava/util/List;)V

    .line 847
    .end local v2    # "splitIndex":I
    .end local v3    # "dependenciesByIndex":[I
    .end local v4    # "dependencies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 862
    .end local v1    # "index":I
    :cond_96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    .line 864
    .end local v0    # "splits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    :cond_9c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getStaticSharedLibraryName()Ljava/lang/String;
    .registers 2

    .line 1397
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStaticSharedLibraryVersion()J
    .registers 3

    .line 1402
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public blacklist getStorageUuid()Ljava/util/UUID;
    .registers 2

    .line 1407
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getTargetSandboxVersion()I
    .registers 2

    .line 1412
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    return v0
.end method

.method public blacklist getTargetSdkVersion()I
    .registers 2

    .line 1417
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    return v0
.end method

.method public blacklist getTaskAffinity()Ljava/lang/String;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThemeResourceId()I
    .registers 2

    .line 1428
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    return v0
.end method

.method public blacklist getUiOptions()I
    .registers 2

    .line 1433
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 3673
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    return v0
.end method

.method public blacklist getUpgradeKeySets()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getUsesLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1451
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1456
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    .line 1458
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesNativeLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesOptionalLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesOptionalLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1476
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1477
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    .line 1479
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesOptionalNativeLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesSdkLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 1509
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesOptional()[Z
    .registers 2

    .line 1518
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1501
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1502
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    .line 1504
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesVersionsMajor()[J
    .registers 2

    .line 1513
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object v0
.end method

.method public blacklist getUsesStaticLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1524
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 1539
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1530
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1531
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    .line 1533
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesVersions()[J
    .registers 2

    .line 1545
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 1550
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .registers 2

    .line 1555
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .registers 2

    .line 1561
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 1567
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getZygotePreloadName()Ljava/lang/String;
    .registers 2

    .line 1573
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasPreserveLegacyExternalStorage()Z
    .registers 3

    .line 1583
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasRequestForegroundServiceExemption()Z
    .registers 3

    .line 1588
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
    .registers 2

    .line 1594
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .registers 2

    .line 2801
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    if-nez v0, :cond_7

    .line 2802
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 2804
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    .line 2805
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->makeImmutable()V

    .line 2806
    return-object p0
.end method

.method public blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 1

    .line 2795
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 2796
    return-object p0
.end method

.method public bridge synthetic blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist is32BitAbiPreferred()Z
    .registers 3

    .line 1858
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowAudioPlaybackCapture()Z
    .registers 3

    .line 1599
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowCrossUidActivitySwitchFromBelow()Z
    .registers 2

    .line 1578
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    return v0
.end method

.method public blacklist isAllowNativeHeapPointerTagging()Z
    .registers 3

    .line 1619
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAnyDensity()Z
    .registers 3

    .line 1628
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1629
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1632
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isApex()Z
    .registers 3

    .line 3630
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAttributionsUserVisible()Z
    .registers 3

    .line 765
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isBackupAllowed()Z
    .registers 3

    .line 1604
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isBackupInForeground()Z
    .registers 3

    .line 1637
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isClearUserDataAllowed()Z
    .registers 3

    .line 1609
    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isClearUserDataOnFailedRestoreAllowed()Z
    .registers 3

    .line 1614
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCleartextTrafficAllowed()Z
    .registers 3

    .line 1868
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCoreApp()Z
    .registers 3

    .line 3610
    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCrossProfile()Z
    .registers 3

    .line 1652
    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDebuggable()Z
    .registers 3

    .line 1657
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDeclaredHavingCode()Z
    .registers 3

    .line 1702
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDefaultToDeviceProtectedStorage()Z
    .registers 3

    .line 1662
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDirectBootAware()Z
    .registers 3

    .line 1667
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 1672
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExternalStorage()Z
    .registers 3

    .line 1677
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExtraLargeScreensSupported()Z
    .registers 3

    .line 1819
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 1820
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 1823
    :cond_e
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isExtractNativeLibrariesRequested()Z
    .registers 3

    .line 1682
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isFactoryTest()Z
    .registers 3

    .line 3625
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isForceQueryable()Z
    .registers 3

    .line 1687
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isFullBackupOnly()Z
    .registers 3

    .line 1692
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isGame()Z
    .registers 3

    .line 1697
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isHardwareAccelerated()Z
    .registers 3

    .line 1642
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isHasDomainUrls()Z
    .registers 3

    .line 1707
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isIsolatedSplitLoading()Z
    .registers 3

    .line 1717
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isKillAfterRestoreAllowed()Z
    .registers 3

    .line 1722
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isLargeHeap()Z
    .registers 3

    .line 1727
    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isLargeScreensSupported()Z
    .registers 3

    .line 1827
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1828
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1831
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isLeavingSharedUser()Z
    .registers 3

    .line 1732
    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isMultiArch()Z
    .registers 3

    .line 1737
    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isNativeLibraryRootRequiresIsa()Z
    .registers 2

    .line 3587
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return v0
.end method

.method public blacklist isNonSdkApiRequested()Z
    .registers 3

    .line 1873
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isNormalScreensSupported()Z
    .registers 2

    .line 1835
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

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

.method public blacklist isOdm()Z
    .registers 3

    .line 3660
    const-wide/high16 v0, 0x2000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOem()Z
    .registers 3

    .line 3645
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .registers 3

    .line 1742
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOverlayIsStatic()Z
    .registers 3

    .line 1752
    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPartiallyDirectBootAware()Z
    .registers 3

    .line 1757
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPersistent()Z
    .registers 3

    .line 1762
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPrivileged()Z
    .registers 3

    .line 3640
    const-wide/high16 v0, 0x200000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isProduct()Z
    .registers 3

    .line 3655
    const-wide/high16 v0, 0x1000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfileable()Z
    .registers 3

    .line 1767
    const-wide v0, 0x200000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .registers 3

    .line 1772
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public blacklist isRequestLegacyExternalStorage()Z
    .registers 3

    .line 1777
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRequiredForAllUsers()Z
    .registers 3

    .line 1782
    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResetEnabledSettingsOnAppDataCleared()Z
    .registers 3

    .line 1787
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResizeable()Z
    .registers 3

    .line 1791
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1792
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1795
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isResizeableActivityViaSdkVersion()Z
    .registers 3

    .line 1800
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResourceOverlay()Z
    .registers 3

    .line 1747
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRestoreAnyVersion()Z
    .registers 3

    .line 1805
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRtlSupported()Z
    .registers 3

    .line 1840
    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSaveStateDisallowed()Z
    .registers 3

    .line 1647
    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSdkLibrary()Z
    .registers 3

    .line 1810
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSignedWithPlatformKey()Z
    .registers 3

    .line 3665
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSmallScreensSupported()Z
    .registers 3

    .line 1844
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1845
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1848
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isStaticSharedLibrary()Z
    .registers 3

    .line 1815
    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isStub()Z
    .registers 3

    .line 3570
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystem()Z
    .registers 3

    .line 3615
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemExt()Z
    .registers 3

    .line 3635
    const-wide/high16 v0, 0x100000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isTaskReparentingAllowed()Z
    .registers 3

    .line 1624
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isTestOnly()Z
    .registers 3

    .line 1853
    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUpdatableSystem()Z
    .registers 3

    .line 3620
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .registers 3

    .line 1863
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUserDataFragile()Z
    .registers 3

    .line 1712
    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVendor()Z
    .registers 3

    .line 3650
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToInstantApps()Z
    .registers 3

    .line 1878
    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVmSafeMode()Z
    .registers 3

    .line 1883
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 9

    .line 3103
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3104
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_21

    .line 3105
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3106
    .local v4, "receiver":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_1e

    .line 3107
    invoke-static {v4, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3104
    .end local v4    # "receiver":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3112
    .end local v1    # "index":I
    :cond_21
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3113
    .local v1, "servicesSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_28
    if-ge v4, v1, :cond_3f

    .line 3114
    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 3115
    .local v5, "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_3c

    .line 3116
    invoke-static {v5, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3113
    .end local v5    # "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 3121
    .end local v4    # "index":I
    :cond_3f
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 3122
    .local v4, "providersSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_46
    if-ge v5, v4, :cond_5d

    .line 3123
    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 3124
    .local v6, "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_5a

    .line 3125
    invoke-static {v6, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3122
    .end local v6    # "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 3129
    .end local v5    # "index":I
    :cond_5d
    return-object p0
.end method

.method public bridge synthetic blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "index"    # I

    .line 2883
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2884
    return-object p0
.end method

.method public bridge synthetic blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 2903
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2904
    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 2909
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2911
    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 1887
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 1889
    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2569
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 8
    .param p1, "allComponentsDirectBootAware"    # Z

    .line 3014
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3015
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 3016
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v2, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3015
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3020
    .end local v1    # "index":I
    :cond_17
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3021
    .local v1, "receiversSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1e
    if-ge v2, v1, :cond_2e

    .line 3022
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3021
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 3026
    .end local v2    # "index":I
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 3027
    .local v2, "providersSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_35
    if-ge v3, v2, :cond_45

    .line 3028
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v4, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3027
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 3032
    .end local v3    # "index":I
    :cond_45
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3033
    .local v3, "servicesSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_4c
    if-ge v4, v3, :cond_5c

    .line 3034
    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v5, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3033
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 3038
    .end local v4    # "index":I
    :cond_5c
    return-object p0
.end method

.method public bridge synthetic blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1894
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .param p1, "value"    # Z

    .line 2259
    iput-boolean p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    .line 2260
    return-object p0
.end method

.method public blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1914
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "alternateLauncherIconResIds"    # [I

    .line 1919
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    .line 1920
    return-object p0
.end method

.method public bridge synthetic blacklist setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "alternateLauncherLabelResIds"    # [I

    .line 1926
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    .line 1927
    return-object p0
.end method

.method public bridge synthetic blacklist setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAnyDensity(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "anyDensity"    # I

    .line 1937
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1938
    return-object p0

    .line 1941
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 1942
    return-object p0
.end method

.method public bridge synthetic blacklist setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAnyDensity(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "isApex"    # Z

    .line 3707
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3708
    return-object p0
.end method

.method public bridge synthetic blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "appComponentFactory"    # Ljava/lang/String;

    .line 1947
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 1948
    return-object p0
.end method

.method public bridge synthetic blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 2010
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    .line 2011
    return-object p0
.end method

.method public bridge synthetic blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4
    .param p1, "attributionsAreUserVisible"    # Z

    .line 1953
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1954
    return-object p0
.end method

.method public blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 1959
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    .line 1960
    return-object p0
.end method

.method public bridge synthetic blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAutoRevokePermissions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "backupAgentName"    # Ljava/lang/String;

    .line 1965
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    .line 1966
    return-object p0
.end method

.method public bridge synthetic blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1899
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupInForeground(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1971
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupInForeground(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBannerResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 1976
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    .line 1977
    return-object p0
.end method

.method public bridge synthetic blacklist setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBannerResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "baseApkPath"    # Ljava/lang/String;

    .line 3043
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 3044
    return-object p0
.end method

.method public bridge synthetic blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 1987
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    .line 1988
    return-object p0
.end method

.method public bridge synthetic blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCategory(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 1998
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 1999
    return-object p0
.end method

.method public bridge synthetic blacklist setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCategory(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "classLoaderName"    # Ljava/lang/String;

    .line 2004
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    .line 2005
    return-object p0
.end method

.method public bridge synthetic blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1904
    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1909
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2579
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2016
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    .line 2017
    return-object p0
.end method

.method public bridge synthetic blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2022
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    .line 2023
    return-object p0
.end method

.method public bridge synthetic blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .param p1, "compileSdkVersionCodeName"    # Ljava/lang/String;

    .line 2028
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 2029
    return-object p0
.end method

.method public blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "coreApp"    # Z

    .line 3134
    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCrossProfile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2034
    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCrossProfile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2039
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    .line 2040
    return-object p0
.end method

.method public bridge synthetic blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDebuggable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2045
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDebuggable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2098
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2934
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2935
    return-object p0
.end method

.method public bridge synthetic blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2050
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    .line 2051
    return-object p0
.end method

.method public bridge synthetic blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDescriptionResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2940
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2941
    return-object p0
.end method

.method public bridge synthetic blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "emergencyInstaller"    # Ljava/lang/String;

    .line 2411
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    .line 2412
    return-object p0
.end method

.method public bridge synthetic blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEnabled(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2056
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEnabled(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2061
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "supportsExtraLargeScreens"    # I

    .line 2483
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2484
    return-object p0

    .line 2487
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 2488
    return-object p0
.end method

.method public bridge synthetic blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2066
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3701
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3702
    return-object p0
.end method

.method public bridge synthetic blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setForceQueryable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2071
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setForceQueryable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2076
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    .line 2077
    return-object p0
.end method

.method public bridge synthetic blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2082
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFullBackupOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGame(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2087
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setGame(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGwpAsanMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2092
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    .line 2093
    return-object p0
.end method

.method public bridge synthetic blacklist setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setGwpAsanMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1982
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setHardwareAccelerated(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2103
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setHasDomainUrls(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2113
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    .line 2114
    return-object p0
.end method

.method public bridge synthetic blacklist setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setInstallLocation(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2119
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 2120
    return-object p0
.end method

.method public bridge synthetic blacklist setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setInstallLocation(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .param p1, "intentMatchingFlags"    # I

    .line 3761
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    .line 3762
    return-object p0
.end method

.method public blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2125
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2130
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation

    .line 2135
    .local p1, "knownEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2136
    return-object p0
.end method

.method public blacklist setLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2141
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    .line 2142
    return-object p0
.end method

.method public bridge synthetic blacklist setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeHeap(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2147
    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargeHeap(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "supportsLargeScreens"    # I

    .line 2493
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2494
    return-object p0

    .line 2497
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 2498
    return-object p0
.end method

.method public bridge synthetic blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2152
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    .line 2153
    return-object p0
.end method

.method public bridge synthetic blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2158
    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLeavingSharedUser(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2163
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    .line 2164
    return-object p0
.end method

.method public bridge synthetic blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLogoResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2169
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    .line 2170
    return-object p0
.end method

.method public bridge synthetic blacklist setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLogoResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "manageSpaceActivityName"    # Ljava/lang/String;

    .line 2175
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 2176
    return-object p0
.end method

.method public bridge synthetic blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # F

    .line 2181
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    .line 2182
    return-object p0
.end method

.method public bridge synthetic blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMaxAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2187
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 2188
    return-object p0
.end method

.method public bridge synthetic blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMaxSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMemtagMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2193
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    .line 2194
    return-object p0
.end method

.method public bridge synthetic blacklist setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMemtagMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/os/Bundle;

    .line 2199
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    .line 2200
    return-object p0
.end method

.method public bridge synthetic blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # F

    .line 2205
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    .line 2206
    return-object p0
.end method

.method public bridge synthetic blacklist setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/util/SparseIntArray;

    .line 2211
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 2212
    return-object p0
.end method

.method public bridge synthetic blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2217
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 2218
    return-object p0
.end method

.method public bridge synthetic blacklist setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMultiArch(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2223
    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMultiArch(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2229
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    .line 2230
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "nativeLibraryDir"    # Ljava/lang/String;

    .line 3049
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 3050
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "nativeLibraryRootDir"    # Ljava/lang/String;

    .line 3055
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3056
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 3684
    iput-boolean p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 3685
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2241
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    .line 2242
    return-object p0
.end method

.method public bridge synthetic blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 2247
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2248
    return-object p0
.end method

.method public bridge synthetic blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2584
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "supportsNormalScreens"    # I

    .line 2503
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2504
    return-object p0

    .line 2507
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 2508
    return-object p0
.end method

.method public bridge synthetic blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNormalScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3743
    const-wide/high16 v0, 0x2000000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3744
    return-object p0
.end method

.method public bridge synthetic blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3725
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3726
    return-object p0
.end method

.method public bridge synthetic blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4
    .param p1, "value"    # Z

    .line 2253
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2254
    return-object p0
.end method

.method public blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "overlayCategory"    # Ljava/lang/String;

    .line 2270
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    .line 2271
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2276
    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayIsStatic(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayPriority(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2281
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    .line 2282
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayPriority(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "overlayTarget"    # Ljava/lang/String;

    .line 2287
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    .line 2288
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "overlayTargetOverlayableName"    # Ljava/lang/String;

    .line 2294
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 2295
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2972
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 2974
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2975
    .local v0, "permissionsSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    if-ge v1, v0, :cond_1f

    .line 2976
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2975
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2979
    .end local v1    # "index":I
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2980
    .local v1, "permissionGroupsSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_26
    if-ge v2, v1, :cond_38

    .line 2981
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2980
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2984
    .end local v2    # "index":I
    :cond_38
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2985
    .local v2, "activitiesSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_3f
    if-ge v3, v2, :cond_51

    .line 2986
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2985
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 2989
    .end local v3    # "index":I
    :cond_51
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2990
    .local v3, "receiversSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_58
    if-ge v4, v3, :cond_6a

    .line 2991
    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2990
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 2994
    .end local v4    # "index":I
    :cond_6a
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 2995
    .local v4, "providersSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_71
    if-ge v5, v4, :cond_83

    .line 2996
    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v7, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2995
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 2999
    .end local v5    # "index":I
    :cond_83
    iget-object v5, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3000
    .local v5, "servicesSize":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_8a
    if-ge v6, v5, :cond_9c

    .line 3001
    iget-object v7, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v8, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 3000
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 3004
    .end local v6    # "index":I
    :cond_9c
    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 3005
    .local v6, "instrumentationsSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_a3
    if-ge v7, v6, :cond_b5

    .line 3006
    iget-object v8, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v9, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 3005
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 3009
    .end local v7    # "index":I
    :cond_b5
    return-object p0
.end method

.method public bridge synthetic blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "flag"    # I

    .line 2235
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 2236
    return-object p0
.end method

.method public bridge synthetic blacklist setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2300
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 2964
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 2965
    return-object p0
.end method

.method public bridge synthetic blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 2305
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    .line 2306
    return-object p0
.end method

.method public bridge synthetic blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2928
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2929
    return-object p0
.end method

.method public bridge synthetic blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2311
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "primaryCpuAbi"    # Ljava/lang/String;

    .line 3061
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 3062
    return-object p0
.end method

.method public bridge synthetic blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3719
    const-wide/high16 v0, 0x200000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3720
    return-object p0
.end method

.method public bridge synthetic blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 2316
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    .line 2317
    return-object p0
.end method

.method public bridge synthetic blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    .line 2322
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 2323
    return-object p0
.end method

.method public bridge synthetic blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3737
    const-wide/high16 v0, 0x1000000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3738
    return-object p0
.end method

.method public bridge synthetic blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProfileable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "value"    # Z

    .line 2328
    xor-int/lit8 v0, p1, 0x1

    const-wide v1, 0x200000000000L

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProfileable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProfileableByShell(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2333
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProfileableByShell(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2338
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2343
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 2348
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2349
    return-object p0
.end method

.method public bridge synthetic blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "requiredAccountType"    # Ljava/lang/String;

    .line 2354
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 2355
    return-object p0
.end method

.method public bridge synthetic blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2360
    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2365
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    .line 2366
    return-object p0
.end method

.method public bridge synthetic blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4
    .param p1, "resetEnabledSettingsOnAppDataCleared"    # Z

    .line 2372
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2374
    return-object p0
.end method

.method public blacklist setResizeable(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "resizeable"    # I

    .line 2379
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2380
    return-object p0

    .line 2383
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 2384
    return-object p0
.end method

.method public bridge synthetic blacklist setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeable(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 2389
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 2390
    return-object p0
.end method

.method public bridge synthetic blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2395
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResourceOverlay(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2265
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResourceOverlay(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2400
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # [B

    .line 2922
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    .line 2923
    return-object p0
.end method

.method public bridge synthetic blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "restrictedAccountType"    # Ljava/lang/String;

    .line 2405
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 2406
    return-object p0
.end method

.method public bridge synthetic blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2417
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    .line 2418
    return-object p0
.end method

.method public bridge synthetic blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRoundIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRtlSupported(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2513
    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRtlSupported(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1993
    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "sdkLibVersionMajor"    # I

    .line 2429
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    .line 2430
    return-object p0
.end method

.method public bridge synthetic blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2435
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "sdkLibraryName"    # Ljava/lang/String;

    .line 2423
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    .line 2424
    return-object p0
.end method

.method public bridge synthetic blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "secondaryCpuAbi"    # Ljava/lang/String;

    .line 3067
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 3068
    return-object p0
.end method

.method public bridge synthetic blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "secondaryNativeLibraryDir"    # Ljava/lang/String;

    .line 3073
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3074
    return-object p0
.end method

.method public bridge synthetic blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "sharedUserId"    # Ljava/lang/String;

    .line 2440
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    .line 2441
    return-object p0
.end method

.method public bridge synthetic blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2446
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    .line 2447
    return-object p0
.end method

.method public bridge synthetic blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3749
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3750
    return-object p0
.end method

.method public bridge synthetic blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/content/pm/SigningDetails;

    .line 2916
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 2917
    return-object p0
.end method

.method public bridge synthetic blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "supportsSmallScreens"    # I

    .line 2518
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2519
    return-object p0

    .line 2522
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 2523
    return-object p0
.end method

.method public bridge synthetic blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSmallScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "splitIndex"    # I
    .param p2, "classLoaderName"    # Ljava/lang/String;

    .line 2452
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2453
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 6
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 3079
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 3080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    .line 3081
    if-eqz p1, :cond_1a

    .line 3082
    array-length v0, p1

    .line 3083
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_9
    if-ge v1, v0, :cond_1a

    .line 3084
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3083
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3087
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_1a
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "splitIndex"    # I
    .param p2, "splitHasCode"    # Z

    .line 2458
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    if-eqz p2, :cond_b

    .line 2459
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v1, v1, p1

    or-int/lit8 v1, v1, 0x4

    goto :goto_11

    .line 2460
    :cond_b
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v1, v1, p1

    and-int/lit8 v1, v1, -0x5

    :goto_11
    aput v1, v0, p1

    .line 2461
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitHasCode(IZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2478
    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "staticSharedLibraryName"    # Ljava/lang/String;

    .line 2466
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    .line 2467
    return-object p0
.end method

.method public bridge synthetic blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # J

    .line 2472
    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    .line 2473
    return-object p0
.end method

.method public bridge synthetic blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3678
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3679
    return-object p0
.end method

.method public bridge synthetic blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3690
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3691
    return-object p0
.end method

.method public bridge synthetic blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3713
    const-wide/high16 v0, 0x100000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3714
    return-object p0
.end method

.method public bridge synthetic blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2528
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    .line 2529
    return-object p0
.end method

.method public bridge synthetic blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTargetSandboxVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2534
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 2535
    return-object p0
.end method

.method public bridge synthetic blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTargetSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "taskAffinity"    # Ljava/lang/String;

    .line 2540
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    .line 2541
    return-object p0
.end method

.method public bridge synthetic blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 1932
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTestOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2546
    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTestOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setThemeResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2551
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    .line 2552
    return-object p0
.end method

.method public bridge synthetic blacklist setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setThemeResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUiOptions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2557
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    .line 2558
    return-object p0
.end method

.method public bridge synthetic blacklist setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUiOptions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 3755
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3756
    return-object p0
.end method

.method public bridge synthetic blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3696
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    .line 2563
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 2564
    return-object p0
.end method

.method public bridge synthetic blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2574
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUserDataFragile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2108
    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUserDataFragile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 3731
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3732
    return-object p0
.end method

.method public bridge synthetic blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "versionCode"    # I

    .line 3139
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 3140
    return-object p0
.end method

.method public bridge synthetic blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "versionCodeMajor"    # I

    .line 3145
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 3146
    return-object p0
.end method

.method public bridge synthetic blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 2589
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    .line 2590
    return-object p0
.end method

.method public bridge synthetic blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2595
    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVmSafeMode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2600
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVmSafeMode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 2605
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    .line 2606
    return-object p0
.end method

.method public bridge synthetic blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "zygotePreloadName"    # Ljava/lang/String;

    .line 2611
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 2612
    return-object p0
.end method

.method public bridge synthetic blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist sortActivities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2617
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2618
    return-object p0
.end method

.method public bridge synthetic blacklist sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortActivities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sortReceivers()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2623
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2624
    return-object p0
.end method

.method public bridge synthetic blacklist sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortReceivers()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sortServices()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2629
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2630
    return-object p0
.end method

.method public bridge synthetic blacklist sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortServices()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 3151
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3152
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3153
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3154
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 3155
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3156
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3157
    iget-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 3158
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 3159
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 3160
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3161
    const-string v1, ":complete"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 3162
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3163
    return-object v0
.end method

.method public blacklist toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 2634
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2639
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 2640
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2641
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 2642
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2643
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 2644
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2645
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2646
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2647
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2649
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 2651
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2653
    const-wide v1, 0x100000000000L

    invoke-direct {p0, v1, v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2655
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2656
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 2660
    nop

    .line 2661
    sget-boolean v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    goto :goto_54

    :cond_52
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    :goto_54
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2662
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 2663
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 2664
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2665
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2666
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2667
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 2668
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2669
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 2670
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2671
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 2672
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2673
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 2677
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 2678
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2679
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2680
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2682
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2683
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2692
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 2693
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_b2

    goto :goto_b5

    .line 2694
    :cond_b2
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_b6

    :cond_b5
    :goto_b5
    move-object v1, v2

    :goto_b6
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 2695
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 2696
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2697
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2698
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2699
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2700
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2702
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2703
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 2704
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 2705
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    .line 2706
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    .line 2707
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    .line 2708
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    .line 2709
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 2710
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 2711
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 2712
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 2713
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_10e

    move-object v1, v2

    goto :goto_110

    :cond_10e
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_110
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 2714
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_11c

    goto :goto_11e

    :cond_11c
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_11e
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 2715
    iget-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2716
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    .line 2717
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    .line 2718
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13f

    .line 2719
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 2721
    :cond_13f
    iget-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 2722
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setPageSizeAppCompatFlags(I)V

    .line 2724
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 870
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3173
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->writeFeatureFlagState(Landroid/os/Parcel;)V

    .line 3175
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3176
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3177
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3178
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3179
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3180
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3181
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3182
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3184
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3185
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3186
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3187
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3188
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3189
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3190
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3192
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3193
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3194
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3195
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3196
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    .line 3197
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3198
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3199
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3200
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3201
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3202
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3203
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3204
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3205
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3207
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3208
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3209
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_d5

    .line 3210
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_eb

    .line 3212
    :cond_d5
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_dc
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_eb

    .line 3214
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3213
    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    .line 3218
    .end local v0    # "index":I
    :cond_eb
    :goto_eb
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3219
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3220
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_ff

    .line 3221
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_115

    .line 3223
    :cond_ff
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_106
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_115

    .line 3225
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3224
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    .line 3228
    .end local v0    # "index":I
    :cond_115
    :goto_115
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 3230
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3231
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3232
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3233
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3234
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3235
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3236
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3237
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3238
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3239
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3240
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3241
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3242
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 3243
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3244
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3245
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3246
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3247
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3248
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3249
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3250
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3251
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3252
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3253
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3254
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3255
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3256
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3257
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3258
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3259
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3260
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3261
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3262
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3263
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3264
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3266
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3267
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3268
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3269
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3270
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3271
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3273
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3274
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3276
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3278
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3279
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3280
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3281
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3282
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3283
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 3284
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3285
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3286
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3287
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3290
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3291
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3292
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3293
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3294
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3295
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 3297
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3298
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3299
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3300
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3301
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3302
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3303
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3304
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 3305
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3306
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3307
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3308
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3309
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3311
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3312
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3313
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3314
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3315
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3316
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3317
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3318
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3319
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3320
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3321
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3322
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3323
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3324
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3325
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3326
    return-void
.end method
