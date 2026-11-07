.class Landroid/net/wifi/MloLink$1;
.super Ljava/lang/Object;
.source "MloLink.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MloLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/MloLink;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/MloLink;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 568
    new-instance v0, Landroid/net/wifi/MloLink;

    invoke-direct {v0}, Landroid/net/wifi/MloLink;-><init>()V

    .line 569
    .local v0, "link":Landroid/net/wifi/MloLink;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmBand(Landroid/net/wifi/MloLink;I)V

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmChannel(Landroid/net/wifi/MloLink;I)V

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmLinkId(Landroid/net/wifi/MloLink;I)V

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmState(Landroid/net/wifi/MloLink;I)V

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmRssi(Landroid/net/wifi/MloLink;I)V

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmRxLinkSpeed(Landroid/net/wifi/MloLink;I)V

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmTxLinkSpeed(Landroid/net/wifi/MloLink;I)V

    .line 576
    const-class v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmApMacAddress(Landroid/net/wifi/MloLink;Landroid/net/MacAddress;)V

    .line 577
    const-class v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    invoke-static {v0, v1}, Landroid/net/wifi/MloLink;->-$$Nest$fputmStaMacAddress(Landroid/net/wifi/MloLink;Landroid/net/MacAddress;)V

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/MloLink;->-$$Nest$fputmLostTxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/MloLink;->-$$Nest$fputmSuccessfulTxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/MloLink;->-$$Nest$fputmSuccessfulRxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/MloLink;->-$$Nest$fputmTxRetriedTxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/MloLink;->txBad:J

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/MloLink;->txRetries:J

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/MloLink;->txSuccess:J

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/MloLink;->rxSuccess:J

    .line 586
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

    .line 566
    invoke-virtual {p0, p1}, Landroid/net/wifi/MloLink$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/MloLink;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/MloLink;
    .registers 3
    .param p1, "size"    # I

    .line 590
    new-array v0, p1, [Landroid/net/wifi/MloLink;

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

    .line 566
    invoke-virtual {p0, p1}, Landroid/net/wifi/MloLink$1;->newArray(I)[Landroid/net/wifi/MloLink;

    move-result-object p1

    return-object p1
.end method
