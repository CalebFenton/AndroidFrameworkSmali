.class Landroid/telephony/CellInfoWcdma$1;
.super Ljava/lang/Object;
.source "CellInfoWcdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfoWcdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellInfoWcdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 157
    invoke-static {p1}, Landroid/telephony/CellInfoWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

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

    .line 153
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoWcdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellInfoWcdma;
    .registers 3
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Landroid/telephony/CellInfoWcdma;

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

    .line 153
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoWcdma$1;->newArray(I)[Landroid/telephony/CellInfoWcdma;

    move-result-object p1

    return-object p1
.end method
