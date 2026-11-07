.class public final Landroid/nfc/NfcAntennaInfo;
.super Ljava/lang/Object;
.source "NfcAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NfcAntennaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAvailableNfcAntennas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/AvailableNfcAntenna;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceFoldable:Z

.field private final blacklist mDeviceHeight:I

.field private final blacklist mDeviceWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Landroid/nfc/NfcAntennaInfo$1;

    invoke-direct {v0}, Landroid/nfc/NfcAntennaInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/NfcAntennaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIZLjava/util/List;)V
    .registers 5
    .param p1, "deviceWidth"    # I
    .param p2, "deviceHeight"    # I
    .param p3, "deviceFoldable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Landroid/nfc/AvailableNfcAntenna;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p4, "availableNfcAntennas":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/AvailableNfcAntenna;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceWidth:I

    .line 46
    iput p2, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceHeight:I

    .line 47
    iput-boolean p3, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceFoldable:Z

    .line 48
    iput-object p4, p0, Landroid/nfc/NfcAntennaInfo;->mAvailableNfcAntennas:Ljava/util/List;

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceWidth:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceHeight:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceFoldable:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAntennaInfo;->mAvailableNfcAntennas:Ljava/util/List;

    .line 88
    iget-object v0, p0, Landroid/nfc/NfcAntennaInfo;->mAvailableNfcAntennas:Ljava/util/List;

    sget-object v1, Landroid/nfc/AvailableNfcAntenna;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/NfcAntennaInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/NfcAntennaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAvailableNfcAntennas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/AvailableNfcAntenna;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/nfc/NfcAntennaInfo;->mAvailableNfcAntennas:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDeviceHeight()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceHeight:I

    return v0
.end method

.method public whitelist getDeviceWidth()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceWidth:I

    return v0
.end method

.method public whitelist isDeviceFoldable()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceFoldable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    iget v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Landroid/nfc/NfcAntennaInfo;->mDeviceFoldable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 115
    iget-object v0, p0, Landroid/nfc/NfcAntennaInfo;->mAvailableNfcAntennas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 116
    return-void
.end method
