.class Landroid/os/CoolingDevice$1;
.super Ljava/lang/Object;
.source "CoolingDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CoolingDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CoolingDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/CoolingDevice;
    .registers 7
    .param p1, "p"    # Landroid/os/Parcel;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 177
    .local v0, "value":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Landroid/os/CoolingDevice;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

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

    .line 173
    invoke-virtual {p0, p1}, Landroid/os/CoolingDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CoolingDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/CoolingDevice;
    .registers 3
    .param p1, "size"    # I

    .line 184
    new-array v0, p1, [Landroid/os/CoolingDevice;

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

    .line 173
    invoke-virtual {p0, p1}, Landroid/os/CoolingDevice$1;->newArray(I)[Landroid/os/CoolingDevice;

    move-result-object p1

    return-object p1
.end method
