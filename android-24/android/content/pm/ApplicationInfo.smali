.class public Landroid/content/pm/ApplicationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationInfo$1;,
        Landroid/content/pm/ApplicationInfo$DisplayNameComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALLOW_BACKUP:I = 0x8000

.field public static final FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x20

.field public static final FLAG_DEBUGGABLE:I = 0x2

.field public static final FLAG_EXTERNAL_STORAGE:I = 0x40000

.field public static final FLAG_EXTRACT_NATIVE_LIBS:I = 0x10000000

.field public static final FLAG_FACTORY_TEST:I = 0x10

.field public static final FLAG_FULL_BACKUP_ONLY:I = 0x4000000

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x20000000

.field public static final FLAG_HAS_CODE:I = 0x4

.field public static final FLAG_INSTALLED:I = 0x800000

.field public static final FLAG_IS_DATA_ONLY:I = 0x1000000

.field public static final FLAG_IS_GAME:I = 0x2000000

.field public static final FLAG_KILL_AFTER_RESTORE:I = 0x10000

.field public static final FLAG_LARGE_HEAP:I = 0x100000

.field public static final FLAG_MULTIARCH:I = -0x80000000

.field public static final FLAG_PERSISTENT:I = 0x8

.field public static final FLAG_RESIZEABLE_FOR_SCREENS:I = 0x1000

.field public static final FLAG_RESTORE_ANY_VERSION:I = 0x20000

.field public static final FLAG_STOPPED:I = 0x200000

.field public static final FLAG_SUPPORTS_LARGE_SCREENS:I = 0x800

.field public static final FLAG_SUPPORTS_NORMAL_SCREENS:I = 0x400

.field public static final FLAG_SUPPORTS_RTL:I = 0x400000

.field public static final FLAG_SUPPORTS_SCREEN_DENSITIES:I = 0x2000

.field public static final FLAG_SUPPORTS_SMALL_SCREENS:I = 0x200

.field public static final FLAG_SUPPORTS_XLARGE_SCREENS:I = 0x80000

.field public static final FLAG_SUSPENDED:I = 0x40000000

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_TEST_ONLY:I = 0x100

.field public static final FLAG_UPDATED_SYSTEM_APP:I = 0x80

.field public static final FLAG_USES_CLEARTEXT_TRAFFIC:I = 0x8000000

.field public static final FLAG_VM_SAFE_MODE:I = 0x4000

.field public static final PRIVATE_FLAG_AUTOPLAY:I = 0x80

.field public static final PRIVATE_FLAG_BACKUP_IN_FOREGROUND:I = 0x1000

.field public static final PRIVATE_FLAG_CANT_SAVE_STATE:I = 0x2

.field public static final PRIVATE_FLAG_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:I = 0x20

.field public static final PRIVATE_FLAG_DIRECT_BOOT_AWARE:I = 0x40

.field public static final PRIVATE_FLAG_EPHEMERAL:I = 0x200

.field public static final PRIVATE_FLAG_FORWARD_LOCK:I = 0x4

.field public static final PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10

.field public static final PRIVATE_FLAG_HIDDEN:I = 0x1

.field public static final PRIVATE_FLAG_PARTIALLY_DIRECT_BOOT_AWARE:I = 0x100

.field public static final PRIVATE_FLAG_PRIVILEGED:I = 0x8

.field public static final PRIVATE_FLAG_REQUIRED_FOR_SYSTEM_USER:I = 0x400

.field public static final PRIVATE_FLAG_RESIZEABLE_ACTIVITIES:I = 0x800


# instance fields
.field public backupAgentName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public credentialEncryptedDataDir:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public credentialProtectedDataDir:Ljava/lang/String;

.field public dataDir:Ljava/lang/String;

.field public descriptionRes:I

.field public deviceEncryptedDataDir:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public deviceProtectedDataDir:Ljava/lang/String;

.field public enabled:Z

.field public enabledSetting:I

.field public flags:I

.field public fullBackupContent:I

.field public installLocation:I

.field public largestWidthLimitDp:I

.field public manageSpaceActivityName:Ljava/lang/String;

.field public minSdkVersion:I

.field public nativeLibraryDir:Ljava/lang/String;

.field public nativeLibraryRootDir:Ljava/lang/String;

.field public nativeLibraryRootRequiresIsa:Z

.field public networkSecurityConfigRes:I

.field public permission:Ljava/lang/String;

.field public primaryCpuAbi:Ljava/lang/String;

.field public privateFlags:I

.field public processName:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public requiresSmallestWidthDp:I

.field public resourceDirs:[Ljava/lang/String;

.field public scanPublicSourceDir:Ljava/lang/String;

.field public scanSourceDir:Ljava/lang/String;

.field public secondaryCpuAbi:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public seinfo:Ljava/lang/String;

.field public sharedLibraryFiles:[Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public splitPublicSourceDirs:[Ljava/lang/String;

.field public splitSourceDirs:[Ljava/lang/String;

.field public targetSdkVersion:I

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public uid:I

.field public versionCode:I

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 994
    new-instance v0, Landroid/content/pm/ApplicationInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo$1;-><init>()V

    #@5
    .line 993
    sput-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 888
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@4
    .line 118
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@6
    .line 125
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@8
    .line 427
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    .line 550
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@c
    .line 558
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@e
    .line 566
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@10
    .line 618
    const-string/jumbo v0, "default"

    #@13
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@15
    .line 753
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@18
    .line 759
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@1a
    .line 765
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@1d
    .line 888
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 892
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@4
    .line 118
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@6
    .line 125
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@8
    .line 427
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    .line 550
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@c
    .line 558
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@e
    .line 566
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@10
    .line 618
    const-string/jumbo v0, "default"

    #@13
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@15
    .line 753
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@18
    .line 759
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@1a
    .line 765
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@1d
    .line 893
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@1f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@21
    .line 894
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@23
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@25
    .line 895
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@27
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@29
    .line 896
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@2b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@2d
    .line 897
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    #@2f
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@31
    .line 898
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@33
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@35
    .line 899
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@37
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@39
    .line 900
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@3b
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@3d
    .line 901
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@3f
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@41
    .line 902
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@43
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@45
    .line 903
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@47
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@49
    .line 904
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@4b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@4d
    .line 905
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@4f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@51
    .line 906
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@53
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@55
    .line 907
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@57
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@59
    .line 908
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@5b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@5d
    .line 909
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@5f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@61
    .line 910
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@63
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@65
    .line 911
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@67
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@69
    .line 912
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@6b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@6d
    .line 913
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@6f
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@71
    .line 914
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@73
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@75
    .line 915
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@77
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@79
    .line 916
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@7b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@7d
    .line 917
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@7f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@81
    .line 918
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@83
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@85
    .line 919
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@87
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@89
    .line 920
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@8b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@8d
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceEncryptedDataDir:Ljava/lang/String;

    #@8f
    .line 921
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@91
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@93
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialEncryptedDataDir:Ljava/lang/String;

    #@95
    .line 922
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@97
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@99
    .line 923
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@9b
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@9d
    .line 924
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@9f
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a1
    .line 925
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@a3
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@a5
    .line 926
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@a7
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@a9
    .line 927
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@ab
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@ad
    .line 928
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@af
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@b1
    .line 929
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@b3
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@b5
    .line 930
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@b7
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@b9
    .line 931
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@bb
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@bd
    .line 932
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@bf
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@c1
    .line 933
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@c3
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@c5
    .line 934
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@c7
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@c9
    .line 891
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1004
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 118
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@7
    .line 125
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@9
    .line 427
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b
    .line 550
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@d
    .line 558
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@f
    .line 566
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@11
    .line 618
    const-string/jumbo v0, "default"

    #@14
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@16
    .line 753
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@18
    .line 759
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@1a
    .line 765
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@1d
    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@23
    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@29
    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@2f
    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@35
    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@3b
    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@41
    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@47
    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@4d
    .line 1013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@53
    .line 1014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@59
    .line 1015
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@5f
    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@65
    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@6b
    .line 1018
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@71
    .line 1019
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@77
    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@7d
    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@83
    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@89
    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@8f
    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@95
    .line 1025
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v0

    #@99
    if-eqz v0, :cond_0

    #@9b
    move v0, v1

    #@9c
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@9e
    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@a4
    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@aa
    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@b0
    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@b6
    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@b9
    move-result-object v0

    #@ba
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@bc
    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@c2
    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@c8
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceEncryptedDataDir:Ljava/lang/String;

    #@ca
    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@d0
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialEncryptedDataDir:Ljava/lang/String;

    #@d2
    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v0

    #@d6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@d8
    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@db
    move-result v0

    #@dc
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@de
    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v0

    #@e2
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@e4
    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v0

    #@e8
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@ea
    .line 1038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v0

    #@ee
    if-eqz v0, :cond_1

    #@f0
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@f2
    .line 1039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f5
    move-result v0

    #@f6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@f8
    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@fb
    move-result v0

    #@fc
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@fe
    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@101
    move-result-object v0

    #@102
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@104
    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@107
    move-result-object v0

    #@108
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@10a
    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v0

    #@10e
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@110
    .line 1044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v0

    #@114
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@116
    .line 1045
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@119
    move-result v0

    #@11a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@11c
    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v0

    #@120
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@122
    .line 1003
    return-void

    #@123
    :cond_0
    move v0, v2

    #@124
    .line 1025
    goto/16 :goto_0

    #@126
    :cond_1
    move v1, v2

    #@127
    .line 1038
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private isPackageUnavailable(Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1120
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4
    const/4 v4, 0x0

    #@5
    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    if-nez v3, :cond_0

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    move v1, v2

    #@d
    goto :goto_0

    #@e
    .line 1121
    :catch_0
    move-exception v0

    #@f
    .line 1122
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 944
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public disableCompatibilityMode()V
    .locals 2

    #@0
    .prologue
    .line 1076
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2
    const v1, 0x83e00

    #@5
    or-int/2addr v0, v1

    #@6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8
    .line 1075
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 774
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    #@4
    .line 773
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 779
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 780
    and-int/lit8 v0, p3, 0x1

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "className="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@28
    .line 783
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string/jumbo v1, "permission="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@49
    .line 786
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    const-string/jumbo v1, "processName="

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@66
    .line 787
    and-int/lit8 v0, p3, 0x1

    #@68
    if-eqz v0, :cond_2

    #@6a
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    const-string/jumbo v1, "taskAffinity="

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@87
    .line 790
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    const-string/jumbo v1, "uid="

    #@93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    const-string/jumbo v1, " flags=0x"

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    .line 791
    const-string/jumbo v1, " privateFlags=0x"

    #@af
    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    .line 791
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@b5
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b8
    move-result-object v1

    #@b9
    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    .line 792
    const-string/jumbo v1, " theme=0x"

    #@c0
    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    .line 792
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@c6
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@d5
    .line 793
    and-int/lit8 v0, p3, 0x1

    #@d7
    if-eqz v0, :cond_3

    #@d9
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    const-string/jumbo v1, "requiresSmallestWidthDp="

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v0

    #@ef
    .line 795
    const-string/jumbo v1, " compatibleWidthLimitDp="

    #@f2
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    .line 795
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@f8
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    .line 796
    const-string/jumbo v1, " largestWidthLimitDp="

    #@ff
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    .line 796
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@105
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v0

    #@10d
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@110
    .line 798
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v0

    #@119
    const-string/jumbo v1, "sourceDir="

    #@11c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v0

    #@120
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v0

    #@12a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@12d
    .line 799
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@12f
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@131
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@134
    move-result v0

    #@135
    if-nez v0, :cond_4

    #@137
    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v0

    #@140
    const-string/jumbo v1, "publicSourceDir="

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v0

    #@147
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v0

    #@14d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v0

    #@151
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@154
    .line 802
    :cond_4
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@156
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@159
    move-result v0

    #@15a
    if-nez v0, :cond_5

    #@15c
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v0

    #@165
    const-string/jumbo v1, "splitSourceDirs="

    #@168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v0

    #@16c
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@16e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@171
    move-result-object v1

    #@172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v0

    #@176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v0

    #@17a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@17d
    .line 805
    :cond_5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@17f
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@182
    move-result v0

    #@183
    if-nez v0, :cond_6

    #@185
    .line 806
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@187
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@189
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@18c
    move-result v0

    #@18d
    if-eqz v0, :cond_e

    #@18f
    .line 809
    :cond_6
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@191
    if-eqz v0, :cond_7

    #@193
    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v0

    #@19c
    const-string/jumbo v1, "resourceDirs="

    #@19f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v0

    #@1a3
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@1a5
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1a8
    move-result-object v1

    #@1a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v0

    #@1ad
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v0

    #@1b1
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1b4
    .line 812
    :cond_7
    and-int/lit8 v0, p3, 0x1

    #@1b6
    if-eqz v0, :cond_8

    #@1b8
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@1ba
    if-eqz v0, :cond_8

    #@1bc
    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v0

    #@1c5
    const-string/jumbo v1, "seinfo="

    #@1c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v0

    #@1cc
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@1ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v0

    #@1d2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d5
    move-result-object v0

    #@1d6
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1d9
    .line 815
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v0

    #@1e2
    const-string/jumbo v1, "dataDir="

    #@1e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v0

    #@1e9
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@1eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v0

    #@1ef
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v0

    #@1f3
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1f6
    .line 816
    and-int/lit8 v0, p3, 0x1

    #@1f8
    if-eqz v0, :cond_9

    #@1fa
    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v0

    #@203
    const-string/jumbo v1, "deviceProtectedDataDir="

    #@206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v0

    #@20a
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@20c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v0

    #@210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@213
    move-result-object v0

    #@214
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@217
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v0

    #@220
    const-string/jumbo v1, "credentialProtectedDataDir="

    #@223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v0

    #@227
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v0

    #@22d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@230
    move-result-object v0

    #@231
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@234
    .line 819
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@236
    if-eqz v0, :cond_9

    #@238
    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v0

    #@241
    const-string/jumbo v1, "sharedLibraryFiles="

    #@244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v0

    #@248
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@24a
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@24d
    move-result-object v1

    #@24e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v0

    #@252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@255
    move-result-object v0

    #@256
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@259
    .line 823
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v0

    #@262
    const-string/jumbo v1, "enabled="

    #@265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v0

    #@269
    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@26b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v0

    #@26f
    .line 824
    const-string/jumbo v1, " minSdkVersion="

    #@272
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v0

    #@276
    .line 824
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@278
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v0

    #@27c
    .line 825
    const-string/jumbo v1, " targetSdkVersion="

    #@27f
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v0

    #@283
    .line 825
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@285
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@288
    move-result-object v0

    #@289
    .line 826
    const-string/jumbo v1, " versionCode="

    #@28c
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v0

    #@290
    .line 826
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@292
    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@295
    move-result-object v0

    #@296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@299
    move-result-object v0

    #@29a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@29d
    .line 827
    and-int/lit8 v0, p3, 0x1

    #@29f
    if-eqz v0, :cond_d

    #@2a1
    .line 828
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@2a3
    if-eqz v0, :cond_a

    #@2a5
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2aa
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v0

    #@2ae
    const-string/jumbo v1, "manageSpaceActivityName="

    #@2b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v0

    #@2b5
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@2b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v0

    #@2bb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2be
    move-result-object v0

    #@2bf
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2c2
    .line 831
    :cond_a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@2c4
    if-eqz v0, :cond_b

    #@2c6
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2cb
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v0

    #@2cf
    const-string/jumbo v1, "description=0x"

    #@2d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v0

    #@2d6
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@2d8
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2db
    move-result-object v1

    #@2dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2df
    move-result-object v0

    #@2e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e3
    move-result-object v0

    #@2e4
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2e7
    .line 834
    :cond_b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@2e9
    if-eqz v0, :cond_c

    #@2eb
    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    #@2ed
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v0

    #@2f4
    const-string/jumbo v1, "uiOptions=0x"

    #@2f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v0

    #@2fb
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@2fd
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@300
    move-result-object v1

    #@301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v0

    #@305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v0

    #@309
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@30c
    .line 837
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    #@30e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@311
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v0

    #@315
    const-string/jumbo v1, "supportsRtl="

    #@318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v1

    #@31c
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@31f
    move-result v0

    #@320
    if-eqz v0, :cond_f

    #@322
    const-string/jumbo v0, "true"

    #@325
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v0

    #@329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32c
    move-result-object v0

    #@32d
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@330
    .line 838
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@332
    if-lez v0, :cond_10

    #@334
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    #@336
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@339
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v0

    #@33d
    const-string/jumbo v1, "fullBackupContent=@xml/"

    #@340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@343
    move-result-object v0

    #@344
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@349
    move-result-object v0

    #@34a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34d
    move-result-object v0

    #@34e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@351
    .line 844
    :goto_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@353
    if-eqz v0, :cond_d

    #@355
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    #@357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v0

    #@35e
    const-string/jumbo v1, "networkSecurityConfigRes=0x"

    #@361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v0

    #@365
    .line 846
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@367
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@36a
    move-result-object v1

    #@36b
    .line 845
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v0

    #@36f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@372
    move-result-object v0

    #@373
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@376
    .line 849
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    #@379
    .line 778
    return-void

    #@37a
    .line 807
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    #@37c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@382
    move-result-object v0

    #@383
    const-string/jumbo v1, "splitPublicSourceDirs="

    #@386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@389
    move-result-object v0

    #@38a
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@38c
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@38f
    move-result-object v1

    #@390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@393
    move-result-object v0

    #@394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@397
    move-result-object v0

    #@398
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@39b
    goto/16 :goto_0

    #@39d
    .line 837
    :cond_f
    const-string/jumbo v0, "false"

    #@3a0
    goto :goto_1

    #@3a1
    .line 841
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v0

    #@3aa
    const-string/jumbo v1, "fullBackupContent="

    #@3ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v1

    #@3b1
    .line 842
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@3b3
    if-gez v0, :cond_11

    #@3b5
    const-string/jumbo v0, "false"

    #@3b8
    .line 841
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v0

    #@3bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3bf
    move-result-object v0

    #@3c0
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3c3
    goto :goto_2

    #@3c4
    .line 842
    :cond_11
    const-string/jumbo v0, "true"

    #@3c7
    goto :goto_3
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    #@0
    .prologue
    .line 1208
    return-object p0
.end method

.method public getBaseCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1219
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBaseResourcePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1221
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1220
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSplitResourcePaths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1223
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 862
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasRtlSupport()Z
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x400000

    #@2
    .line 857
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4
    and-int/2addr v0, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public initForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1083
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@2
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    .line 1085
    const-string/jumbo v0, "android"

    #@f
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1086
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@21
    .line 1087
    return-void

    #@22
    .line 1091
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@24
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@26
    .line 1090
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@30
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceEncryptedDataDir:Ljava/lang/String;

    #@32
    .line 1094
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@34
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@36
    .line 1093
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@40
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialEncryptedDataDir:Ljava/lang/String;

    #@42
    .line 1097
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@44
    and-int/lit8 v0, v0, 0x20

    #@46
    if-eqz v0, :cond_1

    #@48
    .line 1099
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@4a
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@4c
    .line 1082
    :goto_0
    return-void

    #@4d
    .line 1101
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@4f
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@51
    goto :goto_0
.end method

.method public isAutoPlayApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1187
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1169
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isDirectBootAware()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1175
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isEphemeralApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1194
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isExternalAsec()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1163
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1164
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b
    const/high16 v2, 0x40000

    #@d
    and-int/2addr v1, v2

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    .line 1163
    :cond_0
    return v0
.end method

.method public isForwardLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1130
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isInternal()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1158
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3
    const/high16 v2, 0x40000

    #@5
    and-int/2addr v1, v2

    #@6
    if-nez v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public isPartiallyDirectBootAware()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1180
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isPrivilegedApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1146
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

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

.method public isRequiredForSystemUser()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1201
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3
    and-int/lit16 v1, v1, 0x400

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isSystemApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1138
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

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

.method public isUpdatedSystemApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1153
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 1110
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2
    const/high16 v1, 0x40000

    #@4
    and-int/2addr v0, v1

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1111
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;->isPackageUnavailable(Landroid/content/pm/PackageManager;)Z

    #@a
    move-result v0

    #@b
    .line 1110
    if-eqz v0, :cond_0

    #@d
    .line 1112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@10
    move-result-object v0

    #@11
    .line 1113
    const v1, 0x1080726

    #@14
    .line 1112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 1115
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1061
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1062
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@9
    invoke-virtual {p1, v1, v2, p0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    .line 1063
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@f
    .line 1064
    return-object v0

    #@10
    .line 1067
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object v3
.end method

.method public setBaseCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseCodePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1212
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setBaseResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseResourcePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1215
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "codePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1211
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1214
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSplitCodePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1213
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSplitResourcePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitResourcePaths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1216
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ApplicationInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 939
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 940
    const-string/jumbo v1, " "

    #@1b
    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 940
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@21
    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 940
    const-string/jumbo v1, "}"

    #@28
    .line 938
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 948
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 949
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 950
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 951
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 952
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 953
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 954
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 955
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 956
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 957
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 958
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 959
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 960
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 961
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@46
    .line 962
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4b
    .line 963
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@50
    .line 964
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@55
    .line 965
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5a
    .line 966
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5f
    .line 967
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@64
    .line 968
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@69
    .line 969
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@6b
    if-eqz v0, :cond_0

    #@6d
    move v0, v1

    #@6e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 970
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@76
    .line 971
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7b
    .line 972
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@7d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@80
    .line 973
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@85
    .line 974
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@8a
    .line 975
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@8c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8f
    .line 976
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@94
    .line 977
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@99
    .line 978
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@9b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    .line 979
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@a0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a3
    .line 980
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a8
    .line 981
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@aa
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@ad
    .line 982
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@af
    if-eqz v0, :cond_1

    #@b1
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 983
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@b6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b9
    .line 984
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@bb
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 985
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@c0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c3
    .line 986
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@c5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c8
    .line 987
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@ca
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 988
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@cf
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 989
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@d4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    .line 990
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@d9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 947
    return-void

    #@dd
    :cond_0
    move v0, v2

    #@de
    .line 969
    goto :goto_0

    #@df
    :cond_1
    move v1, v2

    #@e0
    .line 982
    goto :goto_1
.end method
