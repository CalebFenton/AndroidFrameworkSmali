.class public final Landroid/ranging/ble/cs/BleCsRangingParams;
.super Ljava/lang/Object;
.source "BleCsRangingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/ble/cs/BleCsRangingParams$Builder;,
        Landroid/ranging/ble/cs/BleCsRangingParams$LocationType;,
        Landroid/ranging/ble/cs/BleCsRangingParams$SightType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/ble/cs/BleCsRangingParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LOCATION_TYPE_INDOOR:I = 0x1

.field public static final whitelist LOCATION_TYPE_OUTDOOR:I = 0x2

.field public static final whitelist LOCATION_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist SIGHT_TYPE_LINE_OF_SIGHT:I = 0x1

.field public static final whitelist SIGHT_TYPE_NON_LINE_OF_SIGHT:I = 0x2

.field public static final whitelist SIGHT_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mLocationType:I

.field private final blacklist mPeerBluetoothAddress:Ljava/lang/String;

.field private final blacklist mRangingUpdateRate:I

.field private final blacklist mSecurityLevel:I

.field private final blacklist mSightType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/ranging/ble/cs/BleCsRangingParams$1;

    invoke-direct {v0}, Landroid/ranging/ble/cs/BleCsRangingParams$1;-><init>()V

    sput-object v0, Landroid/ranging/ble/cs/BleCsRangingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/ble/cs/BleCsRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/ble/cs/BleCsRangingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/ble/cs/BleCsRangingParams$Builder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->-$$Nest$fgetmPeerBluetoothAddress(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->-$$Nest$fgetmRangingUpdateRate(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    .line 104
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->-$$Nest$fgetmSightType(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    .line 105
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->-$$Nest$fgetmLocationType(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    .line 106
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->-$$Nest$fgetmSecurityLevel(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;Landroid/ranging/ble/cs/BleCsRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/ble/cs/BleCsRangingParams;-><init>(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 300
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 301
    :cond_4
    instance-of v1, p1, Landroid/ranging/ble/cs/BleCsRangingParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    move-object v1, p1

    check-cast v1, Landroid/ranging/ble/cs/BleCsRangingParams;

    .line 302
    .local v1, "that":Landroid/ranging/ble/cs/BleCsRangingParams;
    iget v3, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    iget v4, v1, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    if-ne v3, v4, :cond_2f

    iget v3, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    iget v4, v1, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    if-ne v3, v4, :cond_2f

    iget v3, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    iget v4, v1, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    if-ne v3, v4, :cond_2f

    iget v3, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    iget v4, v1, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    if-ne v3, v4, :cond_2f

    iget-object v3, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    iget-object v4, v1, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 304
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 302
    :goto_30
    return v0

    .line 301
    .end local v1    # "that":Landroid/ranging/ble/cs/BleCsRangingParams;
    :cond_31
    return v2
.end method

.method public whitelist getLocationType()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    return v0
.end method

.method public whitelist getPeerBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRangingUpdateRate()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    return v0
.end method

.method public whitelist getSecurityLevel()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    return v0
.end method

.method public whitelist getSightType()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 312
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    iget v1, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    .line 313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 312
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mRangingUpdateRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSightType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mLocationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams;->mSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
