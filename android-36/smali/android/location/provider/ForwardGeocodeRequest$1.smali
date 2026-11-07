.class Landroid/location/provider/ForwardGeocodeRequest$1;
.super Ljava/lang/Object;
.source "ForwardGeocodeRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ForwardGeocodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/provider/ForwardGeocodeRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ForwardGeocodeRequest;
    .registers 18
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    new-instance v0, Landroid/location/provider/ForwardGeocodeRequest;

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    new-instance v11, Ljava/util/Locale;

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v15}, Landroid/location/provider/ForwardGeocodeRequest;-><init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;Landroid/location/provider/ForwardGeocodeRequest-IA;)V

    .line 152
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

    .line 149
    invoke-virtual {p0, p1}, Landroid/location/provider/ForwardGeocodeRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ForwardGeocodeRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/provider/ForwardGeocodeRequest;
    .registers 3
    .param p1, "size"    # I

    .line 167
    new-array v0, p1, [Landroid/location/provider/ForwardGeocodeRequest;

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

    .line 149
    invoke-virtual {p0, p1}, Landroid/location/provider/ForwardGeocodeRequest$1;->newArray(I)[Landroid/location/provider/ForwardGeocodeRequest;

    move-result-object p1

    return-object p1
.end method
