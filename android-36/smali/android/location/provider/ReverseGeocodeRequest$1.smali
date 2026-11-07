.class Landroid/location/provider/ReverseGeocodeRequest$1;
.super Ljava/lang/Object;
.source "ReverseGeocodeRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ReverseGeocodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/provider/ReverseGeocodeRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ReverseGeocodeRequest;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    new-instance v0, Landroid/location/provider/ReverseGeocodeRequest;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/util/Locale;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/location/provider/ReverseGeocodeRequest;-><init>(DDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;Landroid/location/provider/ReverseGeocodeRequest-IA;)V

    .line 120
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

    .line 117
    invoke-virtual {p0, p1}, Landroid/location/provider/ReverseGeocodeRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ReverseGeocodeRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/provider/ReverseGeocodeRequest;
    .registers 3
    .param p1, "size"    # I

    .line 132
    new-array v0, p1, [Landroid/location/provider/ReverseGeocodeRequest;

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

    .line 117
    invoke-virtual {p0, p1}, Landroid/location/provider/ReverseGeocodeRequest$1;->newArray(I)[Landroid/location/provider/ReverseGeocodeRequest;

    move-result-object p1

    return-object p1
.end method
