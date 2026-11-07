.class Landroid/telecom/GatewayInfo$1;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/GatewayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/GatewayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/GatewayInfo;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "gatewayPackageName":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 90
    .local v1, "gatewayUri":Landroid/net/Uri;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 91
    .local v2, "originalAddress":Landroid/net/Uri;
    new-instance v3, Landroid/telecom/GatewayInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/GatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v3
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

    .line 84
    invoke-virtual {p0, p1}, Landroid/telecom/GatewayInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/GatewayInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/GatewayInfo;
    .registers 3
    .param p1, "size"    # I

    .line 96
    new-array v0, p1, [Landroid/telecom/GatewayInfo;

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

    .line 84
    invoke-virtual {p0, p1}, Landroid/telecom/GatewayInfo$1;->newArray(I)[Landroid/telecom/GatewayInfo;

    move-result-object p1

    return-object p1
.end method
