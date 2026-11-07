.class public final Landroid/ranging/raw/RawRangingDevice;
.super Ljava/lang/Object;
.source "RawRangingDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/raw/RawRangingDevice$Builder;,
        Landroid/ranging/raw/RawRangingDevice$RangingUpdateRate;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/raw/RawRangingDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist UPDATE_RATE_FREQUENT:I = 0x3

.field public static final whitelist UPDATE_RATE_INFREQUENT:I = 0x2

.field public static final whitelist UPDATE_RATE_NORMAL:I = 0x1


# instance fields
.field private final blacklist mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

.field private final blacklist mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

.field private final blacklist mRangingDevice:Landroid/ranging/RangingDevice;

.field private final blacklist mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

.field private final blacklist mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/ranging/raw/RawRangingDevice$1;

    invoke-direct {v0}, Landroid/ranging/raw/RawRangingDevice$1;-><init>()V

    sput-object v0, Landroid/ranging/raw/RawRangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-class v0, Landroid/ranging/RangingDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/RangingDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingDevice;

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 125
    const-class v0, Landroid/ranging/uwb/UwbRangingParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/uwb/UwbRangingParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/uwb/UwbRangingParams;

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    .line 127
    const-class v0, Landroid/ranging/ble/cs/BleCsRangingParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/ble/cs/BleCsRangingParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/ble/cs/BleCsRangingParams;

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    .line 130
    const-class v0, Landroid/ranging/wifi/rtt/RttRangingParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/wifi/rtt/RttRangingParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/wifi/rtt/RttRangingParams;

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    .line 132
    const-class v0, Landroid/ranging/ble/rssi/BleRssiRangingParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/ble/rssi/BleRssiRangingParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/ble/rssi/BleRssiRangingParams;

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    .line 134
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/raw/RawRangingDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/raw/RawRangingDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/raw/RawRangingDevice$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/raw/RawRangingDevice$Builder;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Landroid/ranging/raw/RawRangingDevice$Builder;->-$$Nest$fgetmRangingDevice(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/RangingDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 115
    invoke-static {p1}, Landroid/ranging/raw/RawRangingDevice$Builder;->-$$Nest$fgetmUwbRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/uwb/UwbRangingParams;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    .line 116
    invoke-static {p1}, Landroid/ranging/raw/RawRangingDevice$Builder;->-$$Nest$fgetmBleCsRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/ble/cs/BleCsRangingParams;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    .line 117
    invoke-static {p1}, Landroid/ranging/raw/RawRangingDevice$Builder;->-$$Nest$fgetmRttRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/wifi/rtt/RttRangingParams;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    .line 118
    invoke-static {p1}, Landroid/ranging/raw/RawRangingDevice$Builder;->-$$Nest$fgetmBleRssiRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/ble/rssi/BleRssiRangingParams;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/raw/RawRangingDevice$Builder;Landroid/ranging/raw/RawRangingDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/raw/RawRangingDevice;-><init>(Landroid/ranging/raw/RawRangingDevice$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBleRssiRangingParams()Landroid/ranging/ble/rssi/BleRssiRangingParams;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    return-object v0
.end method

.method public whitelist getCsRangingParams()Landroid/ranging/ble/cs/BleCsRangingParams;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    return-object v0
.end method

.method public whitelist getRangingDevice()Landroid/ranging/RangingDevice;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRangingDevice:Landroid/ranging/RangingDevice;

    return-object v0
.end method

.method public whitelist getRttRangingParams()Landroid/ranging/wifi/rtt/RttRangingParams;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    return-object v0
.end method

.method public whitelist getUwbRangingParams()Landroid/ranging/uwb/UwbRangingParams;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawRangingDevice{ mRangingDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawRangingDevice;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUwbRangingParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawRangingDevice;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBleCsRangingParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawRangingDevice;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRttRangingParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawRangingDevice;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBleRssiRangingParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/raw/RawRangingDevice;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    return-void
.end method
