.class public final Landroid/hardware/radio/V1_6/QosFilter;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;,
        Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;,
        Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;
    }
.end annotation


# instance fields
.field public blacklist direction:B

.field public blacklist flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

.field public blacklist localAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist localPort:Landroid/hardware/radio/V1_6/MaybePort;

.field public blacklist precedence:I

.field public blacklist protocol:B

.field public blacklist remoteAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist remotePort:Landroid/hardware/radio/V1_6/MaybePort;

.field public blacklist spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

.field public blacklist tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 630
    new-instance v0, Landroid/hardware/radio/V1_6/MaybePort;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/MaybePort;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 631
    new-instance v0, Landroid/hardware/radio/V1_6/MaybePort;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/MaybePort;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 635
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 639
    new-instance v1, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    .line 643
    new-instance v1, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    .line 647
    new-instance v1, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    .line 651
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 657
    iput v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosFilter;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 757
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 758
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 759
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 758
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 762
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 763
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 764
    new-instance v5, Landroid/hardware/radio/V1_6/QosFilter;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/QosFilter;-><init>()V

    .line 765
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter;
    mul-int/lit8 v6, v3, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/QosFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 766
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 770
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter;",
            ">;)V"
        }
    .end annotation

    .line 831
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosFilter;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 833
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 834
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 835
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 836
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 837
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 838
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/QosFilter;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/QosFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 837
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 840
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 843
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 844
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 661
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 662
    return v0

    .line 664
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 665
    return v1

    .line 667
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/QosFilter;

    if-eq v2, v3, :cond_11

    .line 668
    return v1

    .line 670
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/QosFilter;

    .line 671
    .local v2, "other":Landroid/hardware/radio/V1_6/QosFilter;
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 672
    return v1

    .line 674
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 675
    return v1

    .line 677
    :cond_2a
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 678
    return v1

    .line 680
    :cond_35
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 681
    return v1

    .line 683
    :cond_40
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    if-eq v3, v4, :cond_47

    .line 684
    return v1

    .line 686
    :cond_47
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 687
    return v1

    .line 689
    :cond_52
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 690
    return v1

    .line 692
    :cond_5d
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 693
    return v1

    .line 695
    :cond_68
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    if-eq v3, v4, :cond_6f

    .line 696
    return v1

    .line 698
    :cond_6f
    iget v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    iget v4, v2, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    if-eq v3, v4, :cond_76

    .line 699
    return v1

    .line 701
    :cond_76
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 12

    .line 706
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 707
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 708
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 709
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 710
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 711
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    .line 712
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    .line 713
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    .line 714
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 715
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    .line 716
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 706
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 24
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 776
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-wide/16 v10, 0x0

    add-long v1, p3, v10

    const-wide/16 v12, 0x8

    add-long/2addr v1, v12

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 777
    .local v14, "_hidl_vec_size":I
    mul-int/lit8 v1, v14, 0x10

    int-to-long v2, v1

    .line 778
    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v10

    add-long/2addr v6, v10

    .line 777
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v15

    .line 781
    .local v15, "childBlob":Landroid/os/HwBlob;
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 782
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_26
    if-ge v1, v14, :cond_61

    .line 783
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 784
    .local v2, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v3, v1, 0x10

    int-to-long v3, v3

    invoke-virtual {v15, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 786
    nop

    .line 787
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 788
    move-object v6, v2

    move-wide v2, v3

    .end local v2    # "_hidl_vec_element":Ljava/lang/String;
    .local v6, "_hidl_vec_element":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v7, v1, 0x10

    add-int/lit8 v7, v7, 0x0

    int-to-long v7, v7

    .line 786
    move-object/from16 v16, v6

    move-wide v6, v7

    .end local v6    # "_hidl_vec_element":Ljava/lang/String;
    .local v16, "_hidl_vec_element":Ljava/lang/String;
    const/4 v8, 0x0

    move-wide/from16 v17, v10

    move-object/from16 v10, v16

    move/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "_hidl_index_0":I
    .local v10, "_hidl_vec_element":Ljava/lang/String;
    .local v16, "_hidl_index_0":I
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 791
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v10    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v1, v16, 0x1

    move-wide/from16 v10, v17

    .end local v16    # "_hidl_index_0":I
    .restart local v1    # "_hidl_index_0":I
    goto :goto_26

    :cond_61
    move/from16 v16, v1

    move-wide/from16 v17, v10

    .line 795
    .end local v1    # "_hidl_index_0":I
    .end local v14    # "_hidl_vec_size":I
    .end local v15    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    add-long/2addr v3, v12

    invoke-virtual {v9, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 796
    .local v10, "_hidl_vec_size":I
    mul-int/lit8 v3, v10, 0x10

    int-to-long v3, v3

    .line 797
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v6

    add-long v6, v6, v17

    .line 796
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v11

    .line 800
    .local v11, "childBlob":Landroid/os/HwBlob;
    iget-object v1, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 801
    const/4 v1, 0x0

    move v12, v1

    .local v12, "_hidl_index_0":I
    :goto_89
    if-ge v12, v10, :cond_b7

    .line 802
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 803
    .local v1, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v2, v12, 0x10

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v13

    .line 805
    .end local v1    # "_hidl_vec_element":Ljava/lang/String;
    .local v13, "_hidl_vec_element":Ljava/lang/String;
    nop

    .line 806
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 807
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v12, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v6, v1

    .line 805
    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 810
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v13    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    :cond_b7
    move-object/from16 v1, p1

    .line 813
    .end local v10    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_index_0":I
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v3, 0x20

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/MaybePort;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 814
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v3, 0x2c

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/MaybePort;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 815
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 816
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    const-wide/16 v3, 0x39

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 817
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v3, 0x3c

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 818
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    const-wide/16 v3, 0x44

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 819
    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 820
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    .line 821
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 748
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 749
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 750
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, ".localAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, ", .remoteAddresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, ", .localPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, ", .remotePort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, ", .protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/QosProtocol;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, ", .tos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, ", .flowLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, ", .spi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, ", .direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/QosFilterDirection;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, ", .precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget v1, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 17
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 849
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 850
    .local v0, "_hidl_vec_size":I
    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 851
    add-long v3, p2, v1

    const-wide/16 v7, 0xc

    add-long/2addr v3, v7

    const/4 v9, 0x0

    invoke-virtual {p1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 852
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 853
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_21
    if-ge v4, v0, :cond_34

    .line 854
    mul-int/lit8 v10, v4, 0x10

    int-to-long v10, v10

    iget-object v12, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v10, v11, v12}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 853
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 856
    .end local v4    # "_hidl_index_0":I
    :cond_34
    add-long v10, p2, v1

    add-long/2addr v10, v1

    invoke-virtual {p1, v10, v11, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 859
    .end local v0    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 860
    .restart local v0    # "_hidl_vec_size":I
    const-wide/16 v3, 0x10

    add-long v10, p2, v3

    add-long/2addr v10, v5

    invoke-virtual {p1, v10, v11, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 861
    add-long v5, p2, v3

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 862
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 863
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_56
    if-ge v6, v0, :cond_69

    .line 864
    mul-int/lit8 v7, v6, 0x10

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 863
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 866
    .end local v6    # "_hidl_index_0":I
    :cond_69
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 868
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/MaybePort;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 869
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    const-wide/16 v1, 0x2c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/MaybePort;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 870
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 871
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    const-wide/16 v1, 0x39

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 872
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 873
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    const-wide/16 v1, 0x44

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 874
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 875
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 876
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 824
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 825
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 826
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 827
    return-void
.end method
