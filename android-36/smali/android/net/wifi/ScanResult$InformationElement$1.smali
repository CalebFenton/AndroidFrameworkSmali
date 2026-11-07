.class Landroid/net/wifi/ScanResult$InformationElement$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult$InformationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/ScanResult$InformationElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult$InformationElement;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1418
    new-instance v0, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 1419
    .local v0, "informationElement":Landroid/net/wifi/ScanResult$InformationElement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 1422
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

    .line 1416
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$InformationElement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/ScanResult$InformationElement;
    .registers 3
    .param p1, "size"    # I

    .line 1426
    new-array v0, p1, [Landroid/net/wifi/ScanResult$InformationElement;

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

    .line 1416
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$InformationElement$1;->newArray(I)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object p1

    return-object p1
.end method
