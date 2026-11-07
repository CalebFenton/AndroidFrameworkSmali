.class Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .local v0, "num":I
    new-array v1, v0, [Landroid/net/wifi/RttManager$RttParams;

    .line 567
    .local v1, "params":[Landroid/net/wifi/RttManager$RttParams;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_b3

    .line 568
    new-instance v3, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v3}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    aput-object v3, v1, v2

    .line 569
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 570
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 571
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2c

    move v4, v6

    goto :goto_2d

    :cond_2c
    move v4, v5

    :goto_2d
    iput-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    .line 572
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 573
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 574
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 575
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    .line 576
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    .line 577
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 578
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->interval:I

    .line 579
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 580
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 581
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 582
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v6, :cond_89

    move v4, v6

    goto :goto_8a

    :cond_89
    move v4, v5

    :goto_8a
    iput-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 583
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v6, :cond_95

    move v5, v6

    :cond_95
    iput-boolean v5, v3, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 584
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 585
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 586
    aget-object v3, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 567
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 589
    .end local v2    # "i":I
    :cond_b3
    new-instance v2, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v2, v1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .line 590
    .local v2, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
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

    .line 561
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .registers 3
    .param p1, "size"    # I

    .line 595
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

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

    .line 561
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p1

    return-object p1
.end method
