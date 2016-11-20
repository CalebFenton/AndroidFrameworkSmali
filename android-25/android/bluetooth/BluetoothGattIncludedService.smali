.class public Landroid/bluetooth/BluetoothGattIncludedService;
.super Ljava/lang/Object;
.source "BluetoothGattIncludedService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattIncludedService$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothGattIncludedService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Landroid/bluetooth/BluetoothGattIncludedService$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattIncludedService$1;-><init>()V

    #@5
    .line 65
    sput-object v0, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/ParcelUuid;

    #@a
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    #@10
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    #@16
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    #@1c
    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattIncludedService;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    #@5
    .line 51
    iput p2, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    #@7
    .line 52
    iput p3, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    #@9
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getInstanceId()I
    .locals 1

    #@0
    .prologue
    .line 101
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    #@2
    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 60
    new-instance v0, Landroid/os/ParcelUuid;

    #@2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    #@4
    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 61
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 62
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 59
    return-void
.end method
