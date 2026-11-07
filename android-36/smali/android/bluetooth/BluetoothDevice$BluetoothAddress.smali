.class public final Landroid/bluetooth/BluetoothDevice$BluetoothAddress;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothAddress"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothDevice$BluetoothAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAddress:Ljava/lang/String;

.field private final blacklist mAddressType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3873
    new-instance v0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$BluetoothAddress$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3869
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;-><init>(Ljava/lang/String;I)V

    .line 3870
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I

    .line 3829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3830
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->mAddress:Ljava/lang/String;

    .line 3831
    iput p2, p0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->mAddressType:I

    .line 3832
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3859
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 2

    .line 3843
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAddressType()I
    .registers 2

    .line 3854
    iget v0, p0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->mAddressType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3864
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->mAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 3865
    iget v0, p0, Landroid/bluetooth/BluetoothDevice$BluetoothAddress;->mAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3866
    return-void
.end method
