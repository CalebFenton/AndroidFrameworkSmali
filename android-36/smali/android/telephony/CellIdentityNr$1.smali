.class Landroid/telephony/CellIdentityNr$1;
.super Ljava/lang/Object;
.source "CellIdentityNr.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentityNr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentityNr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 289
    invoke-static {p1}, Landroid/telephony/CellIdentityNr;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;

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

    .line 284
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityNr$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellIdentityNr;
    .registers 3
    .param p1, "size"    # I

    .line 294
    new-array v0, p1, [Landroid/telephony/CellIdentityNr;

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

    .line 284
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityNr$1;->newArray(I)[Landroid/telephony/CellIdentityNr;

    move-result-object p1

    return-object p1
.end method
