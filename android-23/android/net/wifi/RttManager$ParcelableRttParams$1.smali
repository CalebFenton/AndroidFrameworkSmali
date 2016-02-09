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
    .line 495
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
    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    .line 500
    .local v1, "num":I
    if-nez v1, :cond_0

    #@8
    .line 501
    new-instance v4, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct {v4, v5}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    #@e
    return-object v4

    #@f
    .line 504
    :cond_0
    new-array v2, v1, [Landroid/net/wifi/RttManager$RttParams;

    #@11
    .line 505
    .local v2, "params":[Landroid/net/wifi/RttManager$RttParams;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@14
    .line 506
    new-instance v4, Landroid/net/wifi/RttManager$RttParams;

    #@16
    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    #@19
    aput-object v4, v2, v0

    #@1b
    .line 507
    aget-object v4, v2, v0

    #@1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v7

    #@21
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@23
    .line 508
    aget-object v4, v2, v0

    #@25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v7

    #@29
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@2b
    .line 509
    aget-object v4, v2, v0

    #@2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    iput-object v7, v4, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@33
    .line 510
    aget-object v4, v2, v0

    #@35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v7

    #@39
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    #@3b
    .line 511
    aget-object v4, v2, v0

    #@3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v7

    #@41
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    #@43
    .line 512
    aget-object v4, v2, v0

    #@45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v7

    #@49
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    #@4b
    .line 513
    aget-object v4, v2, v0

    #@4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v7

    #@51
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    #@53
    .line 514
    aget-object v4, v2, v0

    #@55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v7

    #@59
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@5b
    .line 515
    aget-object v4, v2, v0

    #@5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v7

    #@61
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->interval:I

    #@63
    .line 516
    aget-object v4, v2, v0

    #@65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v7

    #@69
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@6b
    .line 517
    aget-object v4, v2, v0

    #@6d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v7

    #@71
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@73
    .line 518
    aget-object v4, v2, v0

    #@75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v7

    #@79
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@7b
    .line 519
    aget-object v7, v2, v0

    #@7d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v4

    #@81
    if-ne v4, v5, :cond_1

    #@83
    move v4, v5

    #@84
    :goto_1
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    #@86
    .line 520
    aget-object v7, v2, v0

    #@88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v4

    #@8c
    if-ne v4, v5, :cond_2

    #@8e
    move v4, v5

    #@8f
    :goto_2
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    #@91
    .line 521
    aget-object v4, v2, v0

    #@93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v7

    #@97
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@99
    .line 522
    aget-object v4, v2, v0

    #@9b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v7

    #@9f
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@a1
    .line 523
    aget-object v4, v2, v0

    #@a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v7

    #@a7
    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@a9
    .line 505
    add-int/lit8 v0, v0, 0x1

    #@ab
    goto/16 :goto_0

    #@ad
    :cond_1
    move v4, v6

    #@ae
    .line 519
    goto :goto_1

    #@af
    :cond_2
    move v4, v6

    #@b0
    .line 520
    goto :goto_2

    #@b1
    .line 526
    :cond_3
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@b3
    invoke-direct {v3, v2}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    #@b6
    .line 527
    .local v3, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 496
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
    .line 531
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 530
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
