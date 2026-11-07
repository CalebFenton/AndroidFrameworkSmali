.class Landroid/net/wifi/SoftApCapability$1;
.super Ljava/lang/Object;
.source "SoftApCapability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SoftApCapability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApCapability;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 380
    new-instance v0, Landroid/net/wifi/SoftApCapability;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;-><init>(J)V

    .line 381
    .local v0, "capability":Landroid/net/wifi/SoftApCapability;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/SoftApCapability;->-$$Nest$fputmMaximumSupportedClientNumber(Landroid/net/wifi/SoftApCapability;I)V

    .line 382
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 383
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 384
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 385
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApCapability;->setCountryCode(Ljava/lang/String;)V

    .line 387
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

    .line 378
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApCapability$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApCapability;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/SoftApCapability;
    .registers 3
    .param p1, "size"    # I

    .line 391
    new-array v0, p1, [Landroid/net/wifi/SoftApCapability;

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

    .line 378
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApCapability$1;->newArray(I)[Landroid/net/wifi/SoftApCapability;

    move-result-object p1

    return-object p1
.end method
