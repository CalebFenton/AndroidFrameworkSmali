.class Landroid/location/LastLocationRequest$1;
.super Ljava/lang/Object;
.source "LastLocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LastLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/LastLocationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/LastLocationRequest;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Landroid/location/LastLocationRequest;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/LastLocationRequest;-><init>(ZZZLandroid/location/LastLocationRequest-IA;)V

    .line 109
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

    .line 106
    invoke-virtual {p0, p1}, Landroid/location/LastLocationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LastLocationRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/LastLocationRequest;
    .registers 3
    .param p1, "size"    # I

    .line 116
    new-array v0, p1, [Landroid/location/LastLocationRequest;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/location/LastLocationRequest$1;->newArray(I)[Landroid/location/LastLocationRequest;

    move-result-object p1

    return-object p1
.end method
