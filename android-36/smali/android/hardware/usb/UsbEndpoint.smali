.class public Landroid/hardware/usb/UsbEndpoint;
.super Ljava/lang/Object;
.source "UsbEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAddress:I

.field private final greylist-max-o mAttributes:I

.field private final greylist-max-o mInterval:I

.field private final greylist-max-o mMaxPacketSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Landroid/hardware/usb/UsbEndpoint$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbEndpoint$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIII)V
    .registers 5
    .param p1, "address"    # I
    .param p2, "attributes"    # I
    .param p3, "maxPacketSize"    # I
    .param p4, "interval"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    .line 45
    iput p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    .line 46
    iput p3, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    .line 47
    iput p4, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    return v0
.end method

.method public whitelist getAttributes()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    return v0
.end method

.method public whitelist getDirection()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public whitelist getEndpointNumber()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist getInterval()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    return v0
.end method

.method public whitelist getMaxPacketSize()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbEndpoint[mAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMaxPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

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
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
