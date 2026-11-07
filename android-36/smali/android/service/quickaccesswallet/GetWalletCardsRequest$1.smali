.class Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;
.super Ljava/lang/Object;
.source "GetWalletCardsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/GetWalletCardsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/quickaccesswallet/GetWalletCardsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "cardWidthPx":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "cardHeightPx":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "iconSizePx":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "maxCards":I
    new-instance v4, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;-><init>(IIII)V

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

    .line 82
    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .registers 3
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Landroid/service/quickaccesswallet/GetWalletCardsRequest;

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

    .line 82
    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/GetWalletCardsRequest$1;->newArray(I)[Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    move-result-object p1

    return-object p1
.end method
