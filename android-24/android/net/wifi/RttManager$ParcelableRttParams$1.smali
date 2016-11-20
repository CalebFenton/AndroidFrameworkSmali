.class final Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    .line 531
    .local v1, "num":I
    new-array v2, v1, [Landroid/net/wifi/RttManager$RttParams;

    #@8
    .line 532
    .local v2, "params":[Landroid/net/wifi/RttManager$RttParams;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@b
    .line 533
    new-instance v4, Landroid/net/wifi/RttManager$RttParams;

    #@d
    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    #@10
    aput-object v4, v2, v0

    #@12
    .line 534
    aget-object v4, v2, v0

    #@14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v7

    #@18
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@1a
    .line 535
    aget-object v4, v2, v0

    #@1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v7

    #@20
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@22
    .line 536
    aget-object v7, v2, v0

    #@24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    move v4, v5

    #@2b
    :goto_1
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    #@2d
    .line 537
    aget-object v4, v2, v0

    #@2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    iput-object v7, v4, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@35
    .line 538
    aget-object v4, v2, v0

    #@37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v7

    #@3b
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    #@3d
    .line 539
    aget-object v4, v2, v0

    #@3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v7

    #@43
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    #@45
    .line 540
    aget-object v4, v2, v0

    #@47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v7

    #@4b
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    #@4d
    .line 541
    aget-object v4, v2, v0

    #@4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v7

    #@53
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    #@55
    .line 542
    aget-object v4, v2, v0

    #@57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v7

    #@5b
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@5d
    .line 543
    aget-object v4, v2, v0

    #@5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v7

    #@63
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->interval:I

    #@65
    .line 544
    aget-object v4, v2, v0

    #@67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v7

    #@6b
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@6d
    .line 545
    aget-object v4, v2, v0

    #@6f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v7

    #@73
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@75
    .line 546
    aget-object v4, v2, v0

    #@77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v7

    #@7b
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@7d
    .line 547
    aget-object v7, v2, v0

    #@7f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v4

    #@83
    if-ne v4, v5, :cond_1

    #@85
    move v4, v5

    #@86
    :goto_2
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    #@88
    .line 548
    aget-object v7, v2, v0

    #@8a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v4

    #@8e
    if-ne v4, v5, :cond_2

    #@90
    move v4, v5

    #@91
    :goto_3
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    #@93
    .line 549
    aget-object v4, v2, v0

    #@95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v7

    #@99
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@9b
    .line 550
    aget-object v4, v2, v0

    #@9d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v7

    #@a1
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@a3
    .line 551
    aget-object v4, v2, v0

    #@a5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v7

    #@a9
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@ab
    .line 532
    add-int/lit8 v0, v0, 0x1

    #@ad
    goto/16 :goto_0

    #@af
    :cond_0
    move v4, v6

    #@b0
    .line 536
    goto/16 :goto_1

    #@b2
    :cond_1
    move v4, v6

    #@b3
    .line 547
    goto :goto_2

    #@b4
    :cond_2
    move v4, v6

    #@b5
    .line 548
    goto :goto_3

    #@b6
    .line 554
    :cond_3
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@b8
    invoke-direct {v3, v2}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    #@bb
    .line 555
    .local v3, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 528
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 560
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 559
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
