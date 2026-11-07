.class public final Landroid/bluetooth/le/AdvertiseSettings;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseSettings$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ADVERTISE_MODE_BALANCED:I = 0x1

.field public static final whitelist ADVERTISE_MODE_LOW_LATENCY:I = 0x2

.field public static final whitelist ADVERTISE_MODE_LOW_POWER:I = 0x0

.field public static final whitelist ADVERTISE_TX_POWER_HIGH:I = 0x3

.field public static final whitelist ADVERTISE_TX_POWER_LOW:I = 0x1

.field public static final whitelist ADVERTISE_TX_POWER_MEDIUM:I = 0x2

.field public static final whitelist ADVERTISE_TX_POWER_ULTRA_LOW:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertiseSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdvertiseConnectable:Z

.field private final blacklist mAdvertiseDiscoverable:Z

.field private final blacklist mAdvertiseMode:I

.field private final blacklist mAdvertiseTimeoutMillis:I

.field private final blacklist mAdvertiseTxPowerLevel:I

.field private final blacklist mOwnAddressType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/le/AdvertiseSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-class v0, Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/AdvertiseSettings;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIZZII)V
    .registers 7
    .param p1, "advertiseMode"    # I
    .param p2, "advertiseTxPowerLevel"    # I
    .param p3, "advertiseConnectable"    # Z
    .param p4, "discoverable"    # Z
    .param p5, "advertiseTimeout"    # I
    .param p6, "ownAddressType"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    .line 88
    iput p2, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 89
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 90
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseDiscoverable:Z

    .line 91
    iput p5, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 92
    iput p6, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(IIZZIILandroid/bluetooth/le/AdvertiseSettings-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZZII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseDiscoverable:Z

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertiseSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    return v0
.end method

.method public whitelist getOwnAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 135
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    return v0
.end method

.method public whitelist getTimeout()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    return v0
.end method

.method public whitelist getTxPowerLevel()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    return v0
.end method

.method public whitelist isConnectable()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    return v0
.end method

.method public whitelist isDiscoverable()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseDiscoverable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings [mAdvertiseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseConnectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseDiscoverable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseDiscoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwnAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 162
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseDiscoverable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
