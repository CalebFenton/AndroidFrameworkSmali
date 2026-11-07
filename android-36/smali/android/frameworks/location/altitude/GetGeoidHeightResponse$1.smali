.class Landroid/frameworks/location/altitude/GetGeoidHeightResponse$1;
.super Ljava/lang/Object;
.source "GetGeoidHeightResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/frameworks/location/altitude/GetGeoidHeightResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 23
    new-instance v0, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    invoke-direct {v0}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;-><init>()V

    .line 24
    .local v0, "_aidl_out":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    invoke-virtual {v0, p1}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
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

    .line 20
    invoke-virtual {p0, p1}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 29
    new-array v0, p1, [Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

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

    .line 20
    invoke-virtual {p0, p1}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse$1;->newArray(I)[Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    move-result-object p1

    return-object p1
.end method
