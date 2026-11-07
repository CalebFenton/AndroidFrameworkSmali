.class Landroid/bluetooth/le/TransportBlockFilter$1;
.super Ljava/lang/Object;
.source "TransportBlockFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/TransportBlockFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/TransportBlockFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/TransportBlockFilter;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .local v0, "orgId":I
    new-instance v1, Landroid/bluetooth/le/TransportBlockFilter$Builder;

    invoke-direct {v1, v0}, Landroid/bluetooth/le/TransportBlockFilter$Builder;-><init>(I)V

    .line 318
    .local v1, "builder":Landroid/bluetooth/le/TransportBlockFilter$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/TransportBlockFilter$Builder;->setTdsFlags(II)Landroid/bluetooth/le/TransportBlockFilter$Builder;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .local v2, "transportDataLength":I
    new-array v4, v2, [B

    .line 322
    .local v4, "transportData":[B
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 323
    const/4 v5, 0x0

    .line 324
    .local v5, "transportDataMask":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v3, :cond_34

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 326
    .local v6, "transportDataMaskLength":I
    new-array v5, v6, [B

    .line 327
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 329
    .end local v6    # "transportDataMaskLength":I
    :cond_34
    invoke-virtual {v1, v4, v5}, Landroid/bluetooth/le/TransportBlockFilter$Builder;->setTransportData([B[B)Landroid/bluetooth/le/TransportBlockFilter$Builder;

    .line 331
    .end local v2    # "transportDataLength":I
    .end local v4    # "transportData":[B
    .end local v5    # "transportDataMask":[B
    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_49

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .local v2, "wifiNanHashLength":I
    new-array v3, v2, [B

    .line 334
    .local v3, "wifiNanHash":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 335
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/TransportBlockFilter$Builder;->setWifiNanHash([B)Landroid/bluetooth/le/TransportBlockFilter$Builder;

    .line 337
    .end local v2    # "wifiNanHashLength":I
    .end local v3    # "wifiNanHash":[B
    :cond_49
    invoke-virtual {v1}, Landroid/bluetooth/le/TransportBlockFilter$Builder;->build()Landroid/bluetooth/le/TransportBlockFilter;

    move-result-object v2

    return-object v2
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

    .line 313
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/TransportBlockFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/TransportBlockFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/le/TransportBlockFilter;
    .registers 3
    .param p1, "size"    # I

    .line 342
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/bluetooth/le/TransportBlockFilter;

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

    .line 313
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/TransportBlockFilter$1;->newArray(I)[Landroid/bluetooth/le/TransportBlockFilter;

    move-result-object p1

    return-object p1
.end method
