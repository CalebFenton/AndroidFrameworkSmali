.class public Landroid/bluetooth/BluetoothGattIncludedService;
.super Ljava/lang/Object;
.source "BluetoothGattIncludedService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattIncludedService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist mInstanceId:I

.field protected blacklist mServiceType:I

.field protected blacklist mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/bluetooth/BluetoothGattIncludedService$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattIncludedService$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattIncludedService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;II)V
    .registers 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 44
    iput p2, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 45
    iput p3, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInstanceId()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    return v0
.end method

.method public blacklist getUuid()Ljava/util/UUID;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
