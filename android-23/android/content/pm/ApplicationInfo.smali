.class public Landroid/content/pm/ApplicationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationInfo$DisplayNameComparator;,
        Landroid/content/pm/ApplicationInfo$1;
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

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_TEST_ONLY:I = 0x100

.field public static final FLAG_UPDATED_SYSTEM_APP:I = 0x80

.field public static final FLAG_USES_CLEARTEXT_TRAFFIC:I = 0x8000000

.field public static final FLAG_VM_SAFE_MODE:I = 0x4000

.field public static final PRIVATE_FLAG_CANT_SAVE_STATE:I = 0x2

.field public static final PRIVATE_FLAG_FORWARD_LOCK:I = 0x4

.field public static final PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10

.field public static final PRIVATE_FLAG_HIDDEN:I = 0x1

.field public static final PRIVATE_FLAG_PRIVILEGED:I = 0x8


# instance fields
.field public backupAgentName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public dataDir:Ljava/lang/String;

.field public descriptionRes:I

.field public enabled:Z

.field public enabledSetting:I

.field public flags:I

.field public fullBackupContent:I

.field public installLocation:I

.field public largestWidthLimitDp:I

.field public manageSpaceActivityName:Ljava/lang/String;

.field public nativeLibraryDir:Ljava/lang/String;

.field public nativeLibraryRootDir:Ljava/lang/String;

.field public nativeLibraryRootRequiresIsa:Z

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
    .line 844
    new-instance v0, Landroid/content/pm/ApplicationInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo$1;-><init>()V

    #@5
    .line 843
    sput-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 745
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    #@4
    .line 113
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@6
    .line 120
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@8
    .line 413
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    .line 473
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@c
    .line 481
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@e
    .line 489
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@10
    .line 643
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@13
    .line 649
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@15
    .line 655
    const/4 v0, -0x1

    #@16
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@18
    .line 745
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 749
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    #@4
    .line 113
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@6
    .line 120
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@8
    .line 413
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    .line 473
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@c
    .line 481
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@e
    .line 489
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@10
    .line 643
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@13
    .line 649
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@15
    .line 655
    const/4 v0, -0x1

    #@16
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@18
    .line 750
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@1c
    .line 751
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@1e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@20
    .line 752
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@22
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@24
    .line 753
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@26
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@28
    .line 754
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    #@2a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@2c
    .line 755
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2e
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@30
    .line 756
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@32
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@34
    .line 757
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@36
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@38
    .line 758
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@3a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@3c
    .line 759
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@3e
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@40
    .line 760
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@42
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@44
    .line 761
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@46
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@48
    .line 762
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@4a
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@4c
    .line 763
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@4e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@50
    .line 764
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@52
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@54
    .line 765
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@56
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@58
    .line 766
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@5a
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@5c
    .line 767
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@5e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@60
    .line 768
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@62
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@64
    .line 769
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@66
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@68
    .line 770
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@6a
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@6c
    .line 771
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@6e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@70
    .line 772
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@72
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@74
    .line 773
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@76
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@78
    .line 774
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@7a
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@7c
    .line 775
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@7e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@80
    .line 776
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@82
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@84
    .line 777
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@86
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@88
    .line 778
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8c
    .line 779
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@8e
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@90
    .line 780
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@92
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@94
    .line 781
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@96
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@98
    .line 782
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@9a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@9c
    .line 783
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@9e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@a0
    .line 784
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@a2
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@a4
    .line 785
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@a6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@a8
    .line 786
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@aa
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@ac
    .line 787
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@ae
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@b0
    .line 748
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
    .line 854
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 113
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@7
    .line 120
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@9
    .line 413
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@b
    .line 473
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@d
    .line 481
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@f
    .line 489
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@11
    .line 643
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@13
    .line 649
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@15
    .line 655
    const/4 v0, -0x1

    #@16
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@18
    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@1e
    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@24
    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@2a
    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@30
    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@36
    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3c
    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@42
    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@48
    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@4e
    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@54
    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@5a
    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@60
    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@66
    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@6c
    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@72
    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@78
    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@7b
    move-result-object v0

    #@7c
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@7e
    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@84
    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@8a
    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@90
    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_0

    #@96
    move v0, v1

    #@97
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@99
    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c
    move-result-object v0

    #@9d
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@9f
    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a2
    move-result-object v0

    #@a3
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@a5
    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@a8
    move-result-object v0

    #@a9
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@ab
    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@b1
    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@b7
    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ba
    move-result-object v0

    #@bb
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@bd
    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c0
    move-result v0

    #@c1
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c3
    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v0

    #@c7
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@c9
    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v0

    #@cd
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@cf
    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v0

    #@d3
    if-eqz v0, :cond_1

    #@d5
    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@d7
    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@da
    move-result v0

    #@db
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@dd
    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v0

    #@e1
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@e3
    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@e9
    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@ef
    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f2
    move-result v0

    #@f3
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@f5
    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v0

    #@f9
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@fb
    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v0

    #@ff
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@101
    .line 853
    return-void

    #@102
    :cond_0
    move v0, v2

    #@103
    .line 875
    goto :goto_0

    #@104
    :cond_1
    move v1, v2

    #@105
    .line 885
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
    .line 942
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
    .line 943
    :catch_0
    move-exception v0

    #@f
    .line 944
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 798
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public disableCompatibilityMode()V
    .locals 2

    #@0
    .prologue
    .line 922
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2
    const v1, 0x83e00

    #@5
    or-int/2addr v0, v1

    #@6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8
    .line 921
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 658
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 659
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "className="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@24
    .line 662
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, "permission="

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@45
    .line 665
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    const-string/jumbo v1, "processName="

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@62
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    const-string/jumbo v1, "taskAffinity="

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v0

    #@7c
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@7f
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    const-string/jumbo v1, "uid="

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    const-string/jumbo v1, " flags=0x"

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9e
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    .line 668
    const-string/jumbo v1, " privateFlags=0x"

    #@a9
    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    .line 668
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@af
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b2
    move-result-object v1

    #@b3
    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    .line 669
    const-string/jumbo v1, " theme=0x"

    #@ba
    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    .line 669
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@c0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v0

    #@cc
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@cf
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    const-string/jumbo v1, "requiresSmallestWidthDp="

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    .line 671
    const-string/jumbo v1, " compatibleWidthLimitDp="

    #@e8
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v0

    #@ec
    .line 671
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@ee
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    .line 672
    const-string/jumbo v1, " largestWidthLimitDp="

    #@f5
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    .line 672
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@fb
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v0

    #@ff
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v0

    #@103
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@106
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v0

    #@10f
    const-string/jumbo v1, "sourceDir="

    #@112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v0

    #@116
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v0

    #@120
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@123
    .line 674
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@125
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@127
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12a
    move-result v0

    #@12b
    if-nez v0, :cond_2

    #@12d
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    const-string/jumbo v1, "publicSourceDir="

    #@139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v0

    #@13d
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@13f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v0

    #@143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v0

    #@147
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@14a
    .line 677
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@14c
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@14f
    move-result v0

    #@150
    if-nez v0, :cond_3

    #@152
    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v0

    #@15b
    const-string/jumbo v1, "splitSourceDirs="

    #@15e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v0

    #@162
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@164
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@167
    move-result-object v1

    #@168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v0

    #@16c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v0

    #@170
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@173
    .line 680
    :cond_3
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@175
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@178
    move-result v0

    #@179
    if-nez v0, :cond_4

    #@17b
    .line 681
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@17d
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@17f
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@182
    move-result v0

    #@183
    if-eqz v0, :cond_b

    #@185
    .line 684
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@187
    if-eqz v0, :cond_5

    #@189
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v0

    #@192
    const-string/jumbo v1, "resourceDirs="

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v0

    #@199
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@19b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v0

    #@19f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v0

    #@1a3
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1a6
    .line 687
    :cond_5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@1a8
    if-eqz v0, :cond_6

    #@1aa
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ac
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1af
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v0

    #@1b3
    const-string/jumbo v1, "seinfo="

    #@1b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v0

    #@1ba
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v0

    #@1c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v0

    #@1c4
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1c7
    .line 690
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v0

    #@1d0
    const-string/jumbo v1, "dataDir="

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v0

    #@1d7
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@1d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v0

    #@1dd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v0

    #@1e1
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1e4
    .line 691
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@1e6
    if-eqz v0, :cond_7

    #@1e8
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v0

    #@1f1
    const-string/jumbo v1, "sharedLibraryFiles="

    #@1f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v0

    #@1f8
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@1fa
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1fd
    move-result-object v1

    #@1fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v0

    #@202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v0

    #@206
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@209
    .line 694
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v0

    #@212
    const-string/jumbo v1, "enabled="

    #@215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v0

    #@219
    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@21b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v0

    #@21f
    const-string/jumbo v1, " targetSdkVersion="

    #@222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v0

    #@226
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v0

    #@22c
    .line 695
    const-string/jumbo v1, " versionCode="

    #@22f
    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v0

    #@233
    .line 695
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@235
    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@238
    move-result-object v0

    #@239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23c
    move-result-object v0

    #@23d
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@240
    .line 696
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@242
    if-eqz v0, :cond_8

    #@244
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v0

    #@24d
    const-string/jumbo v1, "manageSpaceActivityName="

    #@250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v0

    #@254
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v0

    #@25a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25d
    move-result-object v0

    #@25e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@261
    .line 699
    :cond_8
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@263
    if-eqz v0, :cond_9

    #@265
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    #@267
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v0

    #@26e
    const-string/jumbo v1, "description=0x"

    #@271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v0

    #@275
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@277
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27a
    move-result-object v1

    #@27b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v0

    #@27f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@282
    move-result-object v0

    #@283
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@286
    .line 702
    :cond_9
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@288
    if-eqz v0, :cond_a

    #@28a
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    #@28c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    move-result-object v0

    #@293
    const-string/jumbo v1, "uiOptions=0x"

    #@296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@299
    move-result-object v0

    #@29a
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@29c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@29f
    move-result-object v1

    #@2a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v0

    #@2a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v0

    #@2a8
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2ab
    .line 705
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    #@2ad
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v0

    #@2b4
    const-string/jumbo v1, "supportsRtl="

    #@2b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v1

    #@2bb
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    #@2be
    move-result v0

    #@2bf
    if-eqz v0, :cond_c

    #@2c1
    const-string/jumbo v0, "true"

    #@2c4
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v0

    #@2c8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v0

    #@2cc
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2cf
    .line 706
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@2d1
    if-lez v0, :cond_d

    #@2d3
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v0

    #@2dc
    const-string/jumbo v1, "fullBackupContent=@xml/"

    #@2df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v0

    #@2e3
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v0

    #@2e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ec
    move-result-object v0

    #@2ed
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2f0
    .line 711
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    #@2f3
    .line 657
    return-void

    #@2f4
    .line 682
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v0

    #@2fd
    const-string/jumbo v1, "splitPublicSourceDirs="

    #@300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v0

    #@304
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@306
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@309
    move-result-object v1

    #@30a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v0

    #@30e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@311
    move-result-object v0

    #@312
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@315
    goto/16 :goto_0

    #@317
    .line 705
    :cond_c
    const-string/jumbo v0, "false"

    #@31a
    goto :goto_1

    #@31b
    .line 709
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    #@31d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@320
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-result-object v0

    #@324
    const-string/jumbo v1, "fullBackupContent="

    #@327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v1

    #@32b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@32d
    if-gez v0, :cond_e

    #@32f
    const-string/jumbo v0, "false"

    #@332
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@335
    move-result-object v0

    #@336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@339
    move-result-object v0

    #@33a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@33d
    goto :goto_2

    #@33e
    :cond_e
    const-string/jumbo v0, "true"

    #@341
    goto :goto_3
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    #@0
    .prologue
    .line 991
    return-object p0
.end method

.method public getBaseCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBaseResourcePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1001
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1003
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSplitResourcePaths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1006
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasRtlSupport()Z
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x400000

    #@2
    .line 719
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

.method public isExternalAsec()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 983
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 984
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
    .line 983
    :cond_0
    return v0
.end method

.method public isForwardLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 952
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
    .line 978
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

.method public isPrivilegedApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 966
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

.method public isSystemApp()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 959
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
    .line 973
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
    .line 932
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2
    const/high16 v1, 0x40000

    #@4
    and-int/2addr v0, v1

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 933
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;->isPackageUnavailable(Landroid/content/pm/PackageManager;)Z

    #@a
    move-result v0

    #@b
    .line 932
    if-eqz v0, :cond_0

    #@d
    .line 934
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@10
    move-result-object v0

    #@11
    .line 935
    const v1, 0x10806a9

    #@14
    .line 934
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 937
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
    .line 907
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 908
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@9
    invoke-virtual {p1, v1, v2, p0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    .line 909
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@f
    .line 910
    return-object v0

    #@10
    .line 913
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object v3
.end method

.method public setBaseCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseCodePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 995
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setBaseResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseResourcePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 998
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "codePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 994
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 997
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSplitCodePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 996
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public setSplitResourcePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "splitResourcePaths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 999
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 792
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
    .line 793
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 794
    const-string/jumbo v1, " "

    #@1b
    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 794
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@21
    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 794
    const-string/jumbo v1, "}"

    #@28
    .line 792
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
    .line 802
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 803
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 804
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 805
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 806
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 807
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 808
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 809
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 810
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 811
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 812
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 813
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 814
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    .line 815
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@46
    .line 816
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4b
    .line 817
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@50
    .line 818
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@55
    .line 819
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5a
    .line 820
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5f
    .line 821
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@64
    .line 822
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@69
    .line 823
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    #@6b
    if-eqz v0, :cond_0

    #@6d
    move v0, v1

    #@6e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 824
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@76
    .line 825
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7b
    .line 826
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@7d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@80
    .line 827
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@85
    .line 828
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@8a
    .line 829
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@8c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8f
    .line 830
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    .line 831
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    .line 832
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@9b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    .line 833
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@a0
    if-eqz v0, :cond_1

    #@a2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    .line 834
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    #@a7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 835
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@ac
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@af
    .line 836
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    #@b1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b4
    .line 837
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@b6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b9
    .line 838
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    #@bb
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 839
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    #@c0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    .line 840
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@c5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c8
    .line 801
    return-void

    #@c9
    :cond_0
    move v0, v2

    #@ca
    .line 823
    goto :goto_0

    #@cb
    :cond_1
    move v1, v2

    #@cc
    .line 833
    goto :goto_1
.end method
