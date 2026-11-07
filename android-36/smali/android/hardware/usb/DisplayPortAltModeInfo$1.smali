.class Landroid/hardware/usb/DisplayPortAltModeInfo$1;
.super Ljava/lang/Object;
.source "DisplayPortAltModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/DisplayPortAltModeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/DisplayPortAltModeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/DisplayPortAltModeInfo;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .local v1, "partnerSinkStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "cableStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .local v3, "numLanes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 273
    .local v4, "hotPlugDetect":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    .local v5, "linkTrainingStatus":I
    new-instance v0, Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/DisplayPortAltModeInfo;-><init>(IIIZI)V

    return-object v0
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

    .line 266
    invoke-virtual {p0, p1}, Landroid/hardware/usb/DisplayPortAltModeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/DisplayPortAltModeInfo;
    .registers 3
    .param p1, "size"    # I

    .line 280
    new-array v0, p1, [Landroid/hardware/usb/DisplayPortAltModeInfo;

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

    .line 266
    invoke-virtual {p0, p1}, Landroid/hardware/usb/DisplayPortAltModeInfo$1;->newArray(I)[Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object p1

    return-object p1
.end method
