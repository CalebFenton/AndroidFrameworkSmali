.class public Landroid/content/pm/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INSTALL_LOCATION_AUTO:I = 0x0

.field public static final whitelist INSTALL_LOCATION_INTERNAL_ONLY:I = 0x1

.field public static final whitelist INSTALL_LOCATION_PREFER_EXTERNAL:I = 0x2

.field public static final greylist INSTALL_LOCATION_UNSPECIFIED:I = -0x1

.field public static final whitelist REQUESTED_PERMISSION_GRANTED:I = 0x2

.field public static final whitelist REQUESTED_PERMISSION_IMPLICIT:I = 0x4

.field public static final whitelist REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I = 0x10000

.field public static final greylist REQUESTED_PERMISSION_REQUIRED:I = 0x1


# instance fields
.field public whitelist activities:[Landroid/content/pm/ActivityInfo;

.field public whitelist applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public whitelist attributions:[Landroid/content/pm/Attribution;

.field public whitelist baseRevisionCode:I

.field public greylist-max-o compileSdkVersion:I

.field public greylist-max-o compileSdkVersionCodename:Ljava/lang/String;

.field public whitelist configPreferences:[Landroid/content/pm/ConfigurationInfo;

.field public greylist coreApp:Z

.field public whitelist featureGroups:[Landroid/content/pm/FeatureGroupInfo;

.field public whitelist firstInstallTime:J

.field public whitelist gids:[I

.field public whitelist installLocation:I

.field public whitelist instrumentation:[Landroid/content/pm/InstrumentationInfo;

.field public blacklist isActiveApex:Z

.field public whitelist isApex:Z

.field public greylist-max-o isStub:Z

.field public whitelist lastUpdateTime:J

.field private blacklist mApexPackageName:Ljava/lang/String;

.field private blacklist mArchiveTimeMillis:J

.field public greylist-max-o mOverlayIsStatic:Z

.field public greylist-max-o overlayCategory:Ljava/lang/String;

.field public greylist-max-o overlayPriority:I

.field public greylist overlayTarget:Ljava/lang/String;

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist permissions:[Landroid/content/pm/PermissionInfo;

.field public whitelist providers:[Landroid/content/pm/ProviderInfo;

.field public whitelist receivers:[Landroid/content/pm/ActivityInfo;

.field public whitelist reqFeatures:[Landroid/content/pm/FeatureInfo;

.field public whitelist requestedPermissions:[Ljava/lang/String;

.field public whitelist requestedPermissionsFlags:[I

.field public greylist-max-o requiredAccountType:Ljava/lang/String;

.field public greylist-max-o requiredForAllUsers:Z

.field public greylist-max-o restrictedAccountType:Ljava/lang/String;

.field public whitelist services:[Landroid/content/pm/ServiceInfo;

.field public whitelist sharedUserId:Ljava/lang/String;

.field public whitelist sharedUserLabel:I

.field public whitelist signatures:[Landroid/content/pm/Signature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist signingInfo:Landroid/content/pm/SigningInfo;

.field public whitelist splitNames:[Ljava/lang/String;

.field public whitelist splitRevisionCodes:[I

.field public blacklist targetOverlayableName:Ljava/lang/String;

.field public whitelist versionCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o versionCodeMajor:I

.field public whitelist versionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 645
    new-instance v0, Landroid/content/pm/PackageInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 513
    return-void
.end method

.method private constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 670
    .local v1, "hasApp":I
    if-eqz v1, :cond_4c

    .line 671
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 673
    :cond_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->gids:[I

    .line 676
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ActivityInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 677
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ActivityInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 678
    sget-object v2, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ServiceInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 679
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ProviderInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 680
    sget-object v2, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/InstrumentationInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 681
    sget-object v2, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PermissionInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 684
    sget-object v2, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 685
    sget-object v2, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/ConfigurationInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 686
    sget-object v2, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 687
    sget-object v2, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 688
    sget-object v2, Landroid/content/pm/Attribution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Attribution;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e7

    move v2, v0

    goto :goto_e8

    :cond_e7
    move v2, v3

    :goto_e8
    iput-boolean v2, p0, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f2

    move v2, v0

    goto :goto_f3

    :cond_f2
    move v2, v3

    :goto_f3
    iput-boolean v2, p0, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fc

    goto :goto_fd

    :cond_fc
    move v0, v3

    :goto_fd
    iput-boolean v0, p0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 702
    .local v0, "hasSigningInfo":I
    if-eqz v0, :cond_13f

    .line 703
    sget-object v2, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningInfo;

    iput-object v2, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 705
    :cond_13f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/PackageInfo;->isActiveApex:Z

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/pm/PackageInfo;->mArchiveTimeMillis:J

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 709
    .local v2, "hasApexPackageName":I
    if-eqz v2, :cond_15d

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageInfo;->mApexPackageName:Ljava/lang/String;

    .line 712
    :cond_15d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o composeLongVersionCode(II)J
    .registers 8
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 94
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getApexPackageName()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->mApexPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getArchiveTimeMillis()J
    .registers 3

    .line 538
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->mArchiveTimeMillis:J

    return-wide v0
.end method

.method public whitelist getLongVersionCode()J
    .registers 3

    .line 76
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o isOverlayPackage()Z
    .registers 2

    .line 520
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isStaticOverlayPackage()Z
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist setApexPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 565
    iput-object p1, p0, Landroid/content/pm/PackageInfo;->mApexPackageName:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public blacklist setArchiveTimeMillis(J)V
    .registers 3
    .param p1, "value"    # J

    .line 545
    iput-wide p1, p0, Landroid/content/pm/PackageInfo;->mArchiveTimeMillis:J

    .line 546
    return-void
.end method

.method public whitelist setLongVersionCode(J)V
    .registers 5
    .param p1, "longVersionCode"    # J

    .line 85
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 86
    long-to-int v0, p1

    iput v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 87
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 584
    .local v0, "prevAllowSquashing":Z
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 586
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 589
    iget v1, p0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 591
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 592
    iget v1, p0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_40

    .line 594
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_43

    .line 597
    :cond_40
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    :goto_43
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 601
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->gids:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 602
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 603
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 604
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 605
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 606
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 607
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 608
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 610
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 611
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 612
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 613
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 614
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 615
    iget v1, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->isStub:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->coreApp:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 623
    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    iget v1, p0, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v1, :cond_dc

    .line 628
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/SigningInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_df

    .line 631
    :cond_dc
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    :goto_df
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 634
    iget-boolean v1, p0, Landroid/content/pm/PackageInfo;->isActiveApex:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 635
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->mArchiveTimeMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 636
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->mApexPackageName:Ljava/lang/String;

    if-eqz v1, :cond_fb

    .line 637
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->mApexPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_fe

    .line 640
    :cond_fb
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    :goto_fe
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 643
    return-void
.end method
