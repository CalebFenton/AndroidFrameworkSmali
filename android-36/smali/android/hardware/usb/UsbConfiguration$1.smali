.class Landroid/hardware/usb/UsbConfiguration$1;
.super Ljava/lang/Object;
.source "UsbConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbConfiguration;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .local v2, "attributes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .local v3, "maxPower":I
    const-class v4, Landroid/hardware/usb/UsbInterface;

    .line 176
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/hardware/usb/UsbInterface;

    .line 175
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    .line 177
    .local v4, "interfaces":[Landroid/os/Parcelable;
    new-instance v5, Landroid/hardware/usb/UsbConfiguration;

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 178
    .local v5, "configuration":Landroid/hardware/usb/UsbConfiguration;
    invoke-virtual {v5, v4}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 179
    return-object v5
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

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 183
    new-array v0, p1, [Landroid/hardware/usb/UsbConfiguration;

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

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration$1;->newArray(I)[Landroid/hardware/usb/UsbConfiguration;

    move-result-object p1

    return-object p1
.end method
