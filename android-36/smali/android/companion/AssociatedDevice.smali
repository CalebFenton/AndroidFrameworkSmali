.class public final Landroid/companion/AssociatedDevice;
.super Ljava/lang/Object;
.source "AssociatedDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist BLUETOOTH_LE:I = 0x1

.field private static final blacklist CLASSIC_BLUETOOTH:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociatedDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WIFI:I = 0x2


# instance fields
.field private final blacklist mDevice:Landroid/os/Parcelable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/companion/AssociatedDevice$1;

    invoke-direct {v0}, Landroid/companion/AssociatedDevice$1;-><init>()V

    sput-object v0, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/companion/AssociatedDevice;->getDeviceCreator(I)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 50
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<+Landroid/os/Parcelable;>;"
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/AssociatedDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/AssociatedDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "device"    # Landroid/os/Parcelable;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    .line 46
    return-void
.end method

.method private static blacklist getDeviceCreator(I)Landroid/os/Parcelable$Creator;
    .registers 3
    .param p0, "deviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/Parcelable$Creator<",
            "+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 109
    packed-switch p0, :pswitch_data_14

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported device type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :pswitch_b
    sget-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0

    .line 111
    :pswitch_e
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0

    .line 110
    :pswitch_11
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist getDeviceType()I
    .registers 3

    .line 102
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 103
    :cond_8
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/bluetooth/le/ScanResult;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    .line 104
    :cond_10
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    return v0

    .line 105
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported device type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 141
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_47

    .line 142
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/companion/AssociatedDevice;

    .line 143
    .local v1, "that":Landroid/companion/AssociatedDevice;
    invoke-direct {p0}, Landroid/companion/AssociatedDevice;->getDeviceType()I

    move-result v2

    invoke-direct {v1}, Landroid/companion/AssociatedDevice;->getDeviceType()I

    move-result v3

    if-eq v2, v3, :cond_20

    return v0

    .line 146
    :cond_20
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/bluetooth/le/ScanResult;

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_2d

    goto :goto_36

    .line 151
    :cond_2d
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    iget-object v2, v1, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 148
    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    invoke-interface {v2}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 141
    .end local v1    # "that":Landroid/companion/AssociatedDevice;
    :cond_47
    :goto_47
    return v0
.end method

.method public whitelist getBleDevice()Landroid/bluetooth/le/ScanResult;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/bluetooth/le/ScanResult;

    if-eqz v0, :cond_b

    .line 72
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    return-object v0

    .line 74
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0

    .line 62
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWifiDevice()Landroid/net/wifi/ScanResult;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    instance-of v0, v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    check-cast v0, Landroid/net/wifi/ScanResult;

    return-object v0

    .line 86
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociatedDevice { device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

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

    .line 92
    invoke-direct {p0}, Landroid/companion/AssociatedDevice;->getDeviceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Landroid/companion/AssociatedDevice;->mDevice:Landroid/os/Parcelable;

    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    return-void
.end method
