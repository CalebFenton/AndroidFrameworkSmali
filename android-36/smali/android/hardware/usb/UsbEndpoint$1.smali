.class Landroid/hardware/usb/UsbEndpoint$1;
.super Ljava/lang/Object;
.source "UsbEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbEndpoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbEndpoint;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .local v0, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "attributes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "maxPacketSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "interval":I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbEndpoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbEndpoint;
    .registers 3
    .param p1, "size"    # I

    .line 147
    new-array v0, p1, [Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbEndpoint$1;->newArray(I)[Landroid/hardware/usb/UsbEndpoint;

    move-result-object p1

    return-object p1
.end method
