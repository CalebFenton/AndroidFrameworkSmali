.class public Landroid/content/pm/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALL_LOCATION_AUTO:I = 0x0

.field public static final INSTALL_LOCATION_INTERNAL_ONLY:I = 0x1

.field public static final INSTALL_LOCATION_PREFER_EXTERNAL:I = 0x2

.field public static final INSTALL_LOCATION_UNSPECIFIED:I = -0x1

.field public static final REQUESTED_PERMISSION_GRANTED:I = 0x2

.field public static final REQUESTED_PERMISSION_REQUIRED:I = 0x1


# instance fields
.field public activities:[Landroid/content/pm/ActivityInfo;

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public baseRevisionCode:I

.field public configPreferences:[Landroid/content/pm/ConfigurationInfo;

.field public coreApp:Z

.field public featureGroups:[Landroid/content/pm/FeatureGroupInfo;

.field public firstInstallTime:J

.field public gids:[I

.field public installLocation:I

.field public instrumentation:[Landroid/content/pm/InstrumentationInfo;

.field public lastUpdateTime:J

.field public overlayTarget:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permissions:[Landroid/content/pm/PermissionInfo;

.field public providers:[Landroid/content/pm/ProviderInfo;

.field public receivers:[Landroid/content/pm/ActivityInfo;

.field public reqFeatures:[Landroid/content/pm/FeatureInfo;

.field public requestedPermissions:[Ljava/lang/String;

.field public requestedPermissionsFlags:[I

.field public requiredAccountType:Ljava/lang/String;

.field public requiredForAllUsers:Z

.field public restrictedAccountType:Ljava/lang/String;

.field public services:[Landroid/content/pm/ServiceInfo;

.field public sharedUserId:Ljava/lang/String;

.field public sharedUserLabel:I

.field public signatures:[Landroid/content/pm/Signature;

.field public splitNames:[Ljava/lang/String;

.field public splitRevisionCodes:[I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 329
    new-instance v0, Landroid/content/pm/PackageInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageInfo$1;-><init>()V

    #@5
    .line 328
    sput-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 252
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    #@6
    .line 274
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 252
    iput v2, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    #@7
    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@d
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    #@13
    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@19
    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@1f
    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v1

    #@23
    iput v1, p0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    #@25
    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@28
    move-result-object v1

    #@29
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    #@2b
    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@31
    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    iput v1, p0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    #@37
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    .line 351
    .local v0, "hasApp":I
    if-eqz v0, :cond_0

    #@3d
    .line 352
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    #@45
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@47
    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4a
    move-result-wide v4

    #@4b
    iput-wide v4, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@4d
    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@50
    move-result-wide v4

    #@51
    iput-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@53
    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@56
    move-result-object v1

    #@57
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->gids:[I

    #@59
    .line 357
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, [Landroid/content/pm/ActivityInfo;

    #@61
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@63
    .line 358
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@68
    move-result-object v1

    #@69
    check-cast v1, [Landroid/content/pm/ActivityInfo;

    #@6b
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    #@6d
    .line 359
    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    check-cast v1, [Landroid/content/pm/ServiceInfo;

    #@75
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@77
    .line 360
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7c
    move-result-object v1

    #@7d
    check-cast v1, [Landroid/content/pm/ProviderInfo;

    #@7f
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    #@81
    .line 361
    sget-object v1, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@86
    move-result-object v1

    #@87
    check-cast v1, [Landroid/content/pm/InstrumentationInfo;

    #@89
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@8b
    .line 362
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@90
    move-result-object v1

    #@91
    check-cast v1, [Landroid/content/pm/PermissionInfo;

    #@93
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@95
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@9b
    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@9e
    move-result-object v1

    #@9f
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@a1
    .line 365
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a6
    move-result-object v1

    #@a7
    check-cast v1, [Landroid/content/pm/Signature;

    #@a9
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@ab
    .line 366
    sget-object v1, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ad
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@b0
    move-result-object v1

    #@b1
    check-cast v1, [Landroid/content/pm/ConfigurationInfo;

    #@b3
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@b5
    .line 367
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@ba
    move-result-object v1

    #@bb
    check-cast v1, [Landroid/content/pm/FeatureInfo;

    #@bd
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@bf
    .line 368
    sget-object v1, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@c4
    move-result-object v1

    #@c5
    check-cast v1, [Landroid/content/pm/FeatureGroupInfo;

    #@c7
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@c9
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v1

    #@cd
    iput v1, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    #@cf
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v1

    #@d3
    if-eqz v1, :cond_1

    #@d5
    move v1, v2

    #@d6
    :goto_0
    iput-boolean v1, p0, Landroid/content/pm/PackageInfo;->coreApp:Z

    #@d8
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@db
    move-result v1

    #@dc
    if-eqz v1, :cond_2

    #@de
    :goto_1
    iput-boolean v2, p0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    #@e0
    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e3
    move-result-object v1

    #@e4
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@e6
    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    #@ec
    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v1

    #@f0
    iput-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    #@f2
    .line 341
    return-void

    #@f3
    :cond_1
    move v1, v3

    #@f4
    .line 370
    goto :goto_0

    #@f5
    :cond_2
    move v2, v3

    #@f6
    .line 371
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 286
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PackageInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 280
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 281
    const-string/jumbo v1, " "

    #@1b
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 281
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@21
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 281
    const-string/jumbo v1, "}"

    #@28
    .line 279
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
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 291
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 292
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@c
    .line 293
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 294
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 295
    iget v0, p0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 296
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@20
    .line 297
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 298
    iget v0, p0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 299
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 300
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 301
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@36
    .line 305
    :goto_0
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    #@38
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@3b
    .line 306
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@3d
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@40
    .line 307
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->gids:[I

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@45
    .line 308
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    #@47
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4a
    .line 309
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    #@4c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4f
    .line 310
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@51
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@54
    .line 311
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    #@56
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@59
    .line 312
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    #@5b
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@5e
    .line 313
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    #@60
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@63
    .line 314
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@68
    .line 315
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    #@6a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6d
    .line 316
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    #@6f
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@72
    .line 317
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    #@74
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@77
    .line 318
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    #@79
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@7c
    .line 319
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    #@7e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@81
    .line 320
    iget v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    #@83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 321
    iget-boolean v0, p0, Landroid/content/pm/PackageInfo;->coreApp:Z

    #@88
    if-eqz v0, :cond_1

    #@8a
    move v0, v1

    #@8b
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8e
    .line 322
    iget-boolean v0, p0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    #@90
    if-eqz v0, :cond_2

    #@92
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    .line 323
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    #@97
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9a
    .line 324
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    #@9c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9f
    .line 325
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    #@a1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a4
    .line 290
    return-void

    #@a5
    .line 303
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a8
    goto :goto_0

    #@a9
    :cond_1
    move v0, v2

    #@aa
    .line 321
    goto :goto_1

    #@ab
    :cond_2
    move v1, v2

    #@ac
    .line 322
    goto :goto_2
.end method
