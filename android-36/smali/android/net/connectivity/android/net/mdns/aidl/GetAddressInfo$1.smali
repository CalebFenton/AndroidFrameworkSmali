.class Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$1;
.super Ljava/lang/Object;
.source "GetAddressInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 58
    invoke-static {p1}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->-$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object v0

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

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 62
    new-array v0, p1, [Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

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

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$1;->newArray(I)[Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    move-result-object p1

    return-object p1
.end method
