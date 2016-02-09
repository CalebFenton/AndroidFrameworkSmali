.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
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
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 20
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 518
    const/4 v4, 0x0

    #@1
    .line 519
    .local v4, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v5

    #@5
    const/4 v6, 0x1

    #@6
    if-ne v5, v6, :cond_0

    #@8
    .line 520
    sget-object v5, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    .end local v4    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v4, Landroid/net/wifi/WifiSsid;

    #@12
    .line 522
    :cond_0
    new-instance v3, Landroid/net/wifi/ScanResult;

    #@14
    .line 524
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v8

    #@24
    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v9

    #@28
    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@2b
    move-result-wide v10

    #@2c
    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v12

    #@30
    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v13

    #@34
    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v14

    #@38
    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v15

    #@3c
    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v16

    #@40
    .line 535
    const/16 v17, 0x0

    #@42
    .line 522
    invoke-direct/range {v3 .. v17}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V

    #@45
    .line 538
    .local v3, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@48
    move-result-wide v6

    #@49
    iput-wide v6, v3, Landroid/net/wifi/ScanResult;->seen:J

    #@4b
    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v5

    #@4f
    iput v5, v3, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@51
    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_1

    #@57
    const/4 v5, 0x1

    #@58
    :goto_0
    iput-boolean v5, v3, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@5a
    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v5

    #@5e
    iput v5, v3, Landroid/net/wifi/ScanResult;->numConnection:I

    #@60
    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v5

    #@64
    iput v5, v3, Landroid/net/wifi/ScanResult;->numUsage:I

    #@66
    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v5

    #@6a
    iput v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@6c
    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v5

    #@70
    iput v5, v3, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@72
    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    iput-object v5, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@78
    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    iput-object v5, v3, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@7e
    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@81
    move-result-wide v6

    #@82
    iput-wide v6, v3, Landroid/net/wifi/ScanResult;->flags:J

    #@84
    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v19

    #@88
    .line 549
    .local v19, "n":I
    if-eqz v19, :cond_2

    #@8a
    .line 550
    move/from16 v0, v19

    #@8c
    new-array v5, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    #@8e
    iput-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@90
    .line 551
    const/4 v2, 0x0

    #@91
    .local v2, "i":I
    :goto_1
    move/from16 v0, v19

    #@93
    if-ge v2, v0, :cond_2

    #@95
    .line 552
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@97
    new-instance v6, Landroid/net/wifi/ScanResult$InformationElement;

    #@99
    invoke-direct {v6}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    #@9c
    aput-object v6, v5, v2

    #@9e
    .line 553
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@a0
    aget-object v5, v5, v2

    #@a2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v6

    #@a6
    iput v6, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@a8
    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v18

    #@ac
    .line 555
    .local v18, "len":I
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@ae
    aget-object v5, v5, v2

    #@b0
    move/from16 v0, v18

    #@b2
    new-array v6, v0, [B

    #@b4
    iput-object v6, v5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@b6
    .line 556
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@b8
    aget-object v5, v5, v2

    #@ba
    iget-object v5, v5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readByteArray([B)V

    #@c1
    .line 551
    add-int/lit8 v2, v2, 0x1

    #@c3
    goto :goto_1

    #@c4
    .line 540
    .end local v2    # "i":I
    .end local v18    # "len":I
    .end local v19    # "n":I
    :cond_1
    const/4 v5, 0x0

    #@c5
    goto :goto_0

    #@c6
    .line 559
    .restart local v19    # "n":I
    :cond_2
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 517
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 563
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
