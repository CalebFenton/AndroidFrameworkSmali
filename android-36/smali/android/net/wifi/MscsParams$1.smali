.class Landroid/net/wifi/MscsParams$1;
.super Ljava/lang/Object;
.source "MscsParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MscsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/MscsParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/MscsParams;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 207
    new-instance v0, Landroid/net/wifi/MscsParams;

    invoke-direct {v0, p1}, Landroid/net/wifi/MscsParams;-><init>(Landroid/os/Parcel;)V

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

    .line 204
    invoke-virtual {p0, p1}, Landroid/net/wifi/MscsParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/MscsParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/MscsParams;
    .registers 3
    .param p1, "size"    # I

    .line 212
    new-array v0, p1, [Landroid/net/wifi/MscsParams;

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

    .line 204
    invoke-virtual {p0, p1}, Landroid/net/wifi/MscsParams$1;->newArray(I)[Landroid/net/wifi/MscsParams;

    move-result-object p1

    return-object p1
.end method
