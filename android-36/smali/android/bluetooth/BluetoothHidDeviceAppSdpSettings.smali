.class public final Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_DESCRIPTOR_SIZE:I = 0x800


# instance fields
.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mDescriptors:[B

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mProvider:Ljava/lang/String;

.field private final blacklist mSubclass:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "subclass"    # B
    .param p5, "descriptors"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    .line 60
    iput-byte p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    .line 62
    if-eqz p5, :cond_1b

    array-length v0, p5

    const/16 v1, 0x800

    if-gt v0, v1, :cond_1b

    .line 67
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    .line 68
    return-void

    .line 63
    :cond_1b
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "119819889"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptors must be not null and shorter than 2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDescriptors()[B
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProvider()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubclass()B
    .registers 2

    .line 83
    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescription:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mProvider:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 119
    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mSubclass:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->mDescriptors:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 121
    return-void
.end method
