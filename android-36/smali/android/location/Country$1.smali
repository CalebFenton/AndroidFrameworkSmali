.class Landroid/location/Country$1;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Country;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/Country;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    new-instance v0, Landroid/location/Country;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/location/Country;-><init>(Ljava/lang/String;IJLandroid/location/Country-IA;)V

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

    .line 179
    invoke-virtual {p0, p1}, Landroid/location/Country$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Country;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/Country;
    .registers 3
    .param p1, "size"    # I

    .line 185
    new-array v0, p1, [Landroid/location/Country;

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

    .line 179
    invoke-virtual {p0, p1}, Landroid/location/Country$1;->newArray(I)[Landroid/location/Country;

    move-result-object p1

    return-object p1
.end method
