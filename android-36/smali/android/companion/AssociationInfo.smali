.class public final Landroid/companion/AssociationInfo;
.super Ljava/lang/Object;
.source "AssociationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LAST_TIME_CONNECTED_NONE:Ljava/lang/String; = "None"


# instance fields
.field private final blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private final blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceId:Landroid/companion/DeviceId;

.field private final blacklist mDeviceMacAddress:Landroid/net/MacAddress;

.field private final blacklist mDeviceProfile:Ljava/lang/String;

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private final blacklist mLastTimeConnectedMs:J

.field private final blacklist mNotifyOnDeviceNearby:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPending:Z

.field private final blacklist mRevoked:Z

.field private final blacklist mSelfManaged:Z

.field private final blacklist mSystemDataSyncFlags:I

.field private final blacklist mTimeApprovedMs:J

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I
    .registers 1

    iget p0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 480
    new-instance v0, Landroid/companion/AssociationInfo$1;

    invoke-direct {v0}, Landroid/companion/AssociationInfo$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V
    .registers 35
    .param p1, "id"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "macAddress"    # Landroid/net/MacAddress;
    .param p5, "displayName"    # Ljava/lang/CharSequence;
    .param p6, "deviceProfile"    # Ljava/lang/String;
    .param p7, "associatedDevice"    # Landroid/companion/AssociatedDevice;
    .param p8, "selfManaged"    # Z
    .param p9, "notifyOnDeviceNearby"    # Z
    .param p10, "revoked"    # Z
    .param p11, "pending"    # Z
    .param p12, "timeApprovedMs"    # J
    .param p14, "lastTimeConnectedMs"    # J
    .param p16, "systemDataSyncFlags"    # I
    .param p17, "deviceIcon"    # Landroid/graphics/drawable/Icon;
    .param p18, "deviceId"    # Landroid/companion/DeviceId;

    .line 104
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-lez v1, :cond_55

    .line 108
    if-nez v2, :cond_1a

    if-eqz v3, :cond_12

    goto :goto_1a

    .line 109
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MAC address and the Display Name must NOT be null at the same time"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_1a
    :goto_1a
    iput v1, v0, Landroid/companion/AssociationInfo;->mId:I

    .line 114
    move/from16 v4, p2

    iput v4, v0, Landroid/companion/AssociationInfo;->mUserId:I

    .line 115
    move-object/from16 v5, p3

    iput-object v5, v0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    .line 116
    iput-object v2, v0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 117
    iput-object v3, v0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 118
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    .line 119
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 120
    move/from16 v8, p8

    iput-boolean v8, v0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    .line 121
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    .line 122
    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/companion/AssociationInfo;->mRevoked:Z

    .line 123
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/companion/AssociationInfo;->mPending:Z

    .line 124
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    .line 125
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    .line 126
    move/from16 v1, p16

    iput v1, v0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    .line 127
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 128
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    .line 129
    return-void

    .line 106
    :cond_55
    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v1, p18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Association ID should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mId:I

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    .line 454
    sget-object v0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    .line 457
    sget-object v0, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociatedDevice;

    iput-object v0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .local v0, "deviceIcon":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_78

    if-ne v0, v2, :cond_78

    .line 467
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    goto :goto_7a

    .line 469
    :cond_78
    iput-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 471
    :goto_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 472
    .local v1, "deviceId":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationTag()Z

    move-result v4

    if-eqz v4, :cond_91

    if-ne v1, v2, :cond_91

    .line 473
    sget-object v2, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/DeviceId;

    iput-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    goto :goto_93

    .line 475
    :cond_91
    iput-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    .line 477
    :goto_93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/AssociationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/AssociationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist isSameIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 5
    .param p1, "iconA"    # Landroid/graphics/drawable/Icon;
    .param p2, "iconB"    # Landroid/graphics/drawable/Icon;

    .line 402
    if-nez p1, :cond_4

    if-eqz p2, :cond_16

    :cond_4
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 403
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 402
    :goto_19
    return v0
.end method


# virtual methods
.method public blacklist belongsToPackage(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 241
    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 377
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 378
    :cond_4
    instance-of v1, p1, Landroid/companion/AssociationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 379
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 381
    .local v1, "that":Landroid/companion/AssociationInfo;
    iget v3, p0, Landroid/companion/AssociationInfo;->mId:I

    iget v4, v1, Landroid/companion/AssociationInfo;->mId:I

    if-ne v3, v4, :cond_8e

    iget v3, p0, Landroid/companion/AssociationInfo;->mUserId:I

    iget v4, v1, Landroid/companion/AssociationInfo;->mUserId:I

    if-ne v3, v4, :cond_8e

    iget-boolean v3, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    iget-boolean v4, v1, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-ne v3, v4, :cond_8e

    iget-boolean v3, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    iget-boolean v4, v1, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    if-ne v3, v4, :cond_8e

    iget-boolean v3, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    iget-boolean v4, v1, Landroid/companion/AssociationInfo;->mRevoked:Z

    if-ne v3, v4, :cond_8e

    iget-boolean v3, p0, Landroid/companion/AssociationInfo;->mPending:Z

    iget-boolean v4, v1, Landroid/companion/AssociationInfo;->mPending:Z

    if-ne v3, v4, :cond_8e

    iget-wide v3, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    iget-wide v5, v1, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8e

    iget-wide v3, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    iget-wide v5, v1, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    .line 389
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 390
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 391
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    .line 392
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 393
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget v3, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    iget v4, v1, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    if-ne v3, v4, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 395
    invoke-direct {p0, v3, v4}, Landroid/companion/AssociationInfo;->isSameIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    iget-object v4, v1, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    .line 396
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    goto :goto_8f

    :cond_8e
    move v0, v2

    .line 381
    :goto_8f
    return v0
.end method

.method public whitelist getAssociatedDevice()Landroid/companion/AssociatedDevice;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object v0
.end method

.method public blacklist getDeviceIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getDeviceId()Landroid/companion/DeviceId;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    return-object v0
.end method

.method public whitelist getDeviceMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getDeviceMacAddressAsString()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/companion/AssociationInfo;->mId:I

    return v0
.end method

.method public blacklist getLastTimeConnectedMs()J
    .registers 3

    .line 274
    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSystemDataSyncFlags()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    return v0
.end method

.method public blacklist getTimeApprovedMs()J
    .registers 3

    .line 236
    iget-wide v0, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    return-wide v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 19

    .line 408
    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/AssociationInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v6, v0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    iget-object v8, v0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    .line 409
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mRevoked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/companion/AssociationInfo;->mPending:Z

    .line 410
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-wide v13, v0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget v1, v0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    move-object/from16 v17, v1

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 408
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isActive()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isLinkedTo(Ljava/lang/String;)Z
    .registers 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 312
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 314
    :cond_6
    if-nez p1, :cond_9

    return v1

    .line 318
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_15

    .line 321
    .local v0, "macAddress":Landroid/net/MacAddress;
    nop

    .line 322
    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 319
    .end local v0    # "macAddress":Landroid/net/MacAddress;
    :catch_15
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v1
.end method

.method public blacklist isNotifyOnDeviceNearby()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    return v0
.end method

.method public blacklist isPending()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    return v0
.end method

.method public blacklist isRevoked()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    return v0
.end method

.method public blacklist shouldBindWhenPresent()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .registers 4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_22

    .line 343
    const-string v1, ", addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_22
    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    if-eqz v1, :cond_2b

    .line 346
    const-string v1, ", self-managed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2b
    const-string v1, ", pkg=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceMacAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDeviceProfile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAssociatedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifyOnDeviceNearby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRevoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationInfo;->mPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeApprovedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTimeConnectedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    iget-wide v1, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_bc

    .line 369
    const-string v1, "None"

    goto :goto_c3

    :cond_bc
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSystemDataSyncFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 421
    iget v0, p0, Landroid/companion/AssociationInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v0, p0, Landroid/companion/AssociationInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceMacAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 428
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mSelfManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 429
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mNotifyOnDeviceNearby:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 430
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mRevoked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    iget-boolean v0, p0, Landroid/companion/AssociationInfo;->mPending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 432
    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mTimeApprovedMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    iget-wide v2, p0, Landroid/companion/AssociationInfo;->mLastTimeConnectedMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 434
    iget v0, p0, Landroid/companion/AssociationInfo;->mSystemDataSyncFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5b

    .line 436
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5e

    .line 439
    :cond_5b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    :goto_5e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationTag()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    if-eqz v0, :cond_71

    .line 443
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Landroid/companion/AssociationInfo;->mDeviceId:Landroid/companion/DeviceId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_74

    .line 446
    :cond_71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    :goto_74
    return-void
.end method
