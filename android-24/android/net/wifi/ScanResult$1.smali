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
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 28
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 575
    const/4 v5, 0x0

    #@1
    .line 576
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v6

    #@5
    const/4 v7, 0x1

    #@6
    if-ne v6, v7, :cond_0

    #@8
    .line 577
    sget-object v6, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    .end local v5    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v5, Landroid/net/wifi/WifiSsid;

    #@12
    .line 579
    :cond_0
    new-instance v4, Landroid/net/wifi/ScanResult;

    #@14
    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@1f
    move-result-wide v8

    #@20
    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v10

    #@24
    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v11

    #@28
    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v12

    #@2c
    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v13

    #@30
    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@33
    move-result-wide v14

    #@34
    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v16

    #@38
    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v17

    #@3c
    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v18

    #@40
    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v19

    #@44
    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v20

    #@48
    .line 594
    const/16 v21, 0x0

    #@4a
    .line 579
    invoke-direct/range {v4 .. v21}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    #@4d
    .line 598
    .local v4, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@50
    move-result-wide v6

    #@51
    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->seen:J

    #@53
    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_1

    #@59
    const/4 v6, 0x1

    #@5a
    :goto_0
    iput-boolean v6, v4, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@5c
    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v6

    #@60
    iput v6, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    #@62
    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v6

    #@66
    iput v6, v4, Landroid/net/wifi/ScanResult;->numUsage:I

    #@68
    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v6

    #@6c
    iput v6, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@6e
    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v6

    #@72
    iput v6, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@74
    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    iput-object v6, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@7a
    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    iput-object v6, v4, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@80
    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    #@83
    move-result-wide v6

    #@84
    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->flags:J

    #@86
    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v25

    #@8a
    .line 608
    .local v25, "n":I
    if-eqz v25, :cond_2

    #@8c
    .line 609
    move/from16 v0, v25

    #@8e
    new-array v6, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    #@90
    iput-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@92
    .line 610
    const/16 v23, 0x0

    #@94
    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    #@96
    move/from16 v1, v25

    #@98
    if-ge v0, v1, :cond_2

    #@9a
    .line 611
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@9c
    new-instance v7, Landroid/net/wifi/ScanResult$InformationElement;

    #@9e
    invoke-direct {v7}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    #@a1
    aput-object v7, v6, v23

    #@a3
    .line 612
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@a5
    aget-object v6, v6, v23

    #@a7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v7

    #@ab
    iput v7, v6, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@ad
    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v24

    #@b1
    .line 614
    .local v24, "len":I
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@b3
    aget-object v6, v6, v23

    #@b5
    move/from16 v0, v24

    #@b7
    new-array v7, v0, [B

    #@b9
    iput-object v7, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@bb
    .line 615
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@bd
    aget-object v6, v6, v23

    #@bf
    iget-object v6, v6, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readByteArray([B)V

    #@c6
    .line 610
    add-int/lit8 v23, v23, 0x1

    #@c8
    goto :goto_1

    #@c9
    .line 599
    .end local v23    # "i":I
    .end local v24    # "len":I
    .end local v25    # "n":I
    :cond_1
    const/4 v6, 0x0

    #@ca
    goto :goto_0

    #@cb
    .line 619
    .restart local v25    # "n":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v25

    #@cf
    .line 620
    if-eqz v25, :cond_3

    #@d1
    .line 621
    new-instance v6, Ljava/util/ArrayList;

    #@d3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@d6
    iput-object v6, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@d8
    .line 622
    const/16 v23, 0x0

    #@da
    .restart local v23    # "i":I
    :goto_2
    move/from16 v0, v23

    #@dc
    move/from16 v1, v25

    #@de
    if-ge v0, v1, :cond_3

    #@e0
    .line 623
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@e2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e9
    .line 622
    add-int/lit8 v23, v23, 0x1

    #@eb
    goto :goto_2

    #@ec
    .line 626
    .end local v23    # "i":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v25

    #@f0
    .line 627
    if-eqz v25, :cond_4

    #@f2
    .line 628
    move/from16 v0, v25

    #@f4
    new-array v6, v0, [Landroid/net/wifi/AnqpInformationElement;

    #@f6
    iput-object v6, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@f8
    .line 629
    const/16 v23, 0x0

    #@fa
    .restart local v23    # "i":I
    :goto_3
    move/from16 v0, v23

    #@fc
    move/from16 v1, v25

    #@fe
    if-ge v0, v1, :cond_4

    #@100
    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v27

    #@104
    .line 631
    .local v27, "vendorId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@107
    move-result v22

    #@108
    .line 632
    .local v22, "elementId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@10b
    move-result v24

    #@10c
    .line 633
    .restart local v24    # "len":I
    move/from16 v0, v24

    #@10e
    new-array v0, v0, [B

    #@110
    move-object/from16 v26, v0

    #@112
    .line 634
    .local v26, "payload":[B
    move-object/from16 v0, p1

    #@114
    move-object/from16 v1, v26

    #@116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    #@119
    .line 635
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@11b
    .line 636
    new-instance v7, Landroid/net/wifi/AnqpInformationElement;

    #@11d
    move/from16 v0, v27

    #@11f
    move/from16 v1, v22

    #@121
    move-object/from16 v2, v26

    #@123
    invoke-direct {v7, v0, v1, v2}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    #@126
    .line 635
    aput-object v7, v6, v23

    #@128
    .line 629
    add-int/lit8 v23, v23, 0x1

    #@12a
    goto :goto_3

    #@12b
    .line 639
    .end local v22    # "elementId":I
    .end local v23    # "i":I
    .end local v24    # "len":I
    .end local v26    # "payload":[B
    .end local v27    # "vendorId":I
    :cond_4
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 574
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
    .line 643
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 642
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
