.class Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;
.super Ljava/lang/Object;
.source "KnownNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 309
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

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

    .line 306
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .registers 3
    .param p1, "size"    # I

    .line 314
    new-array v0, p1, [Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

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

    .line 306
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;->newArray(I)[Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object p1

    return-object p1
.end method
