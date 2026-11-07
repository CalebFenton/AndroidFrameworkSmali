.class final Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;
.super Landroid/net/connectivity/com/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1170
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static blacklist isAvailable()Z
    .registers 1

    .line 1173
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist partialIsValidUtf8(JI)I
    .registers 14
    .param p0, "address"    # J
    .param p2, "remaining"    # I

    .line 1745
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    .line 1746
    .local v0, "skipped":I
    int-to-long v1, v0

    add-long/2addr p0, v1

    .line 1747
    sub-int/2addr p2, v0

    .line 1753
    :goto_7
    const/4 v1, 0x0

    .line 1754
    .local v1, "byte1":I
    :goto_8
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    .end local p0    # "address":J
    .local v4, "address":J
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    move v1, p0

    if-ltz p0, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_8

    :cond_19
    move-wide p0, v4

    .line 1755
    .end local v4    # "address":J
    .restart local p0    # "address":J
    :cond_1a
    if-nez p2, :cond_1e

    .line 1756
    const/4 v2, 0x0

    return v2

    .line 1758
    :cond_1e
    add-int/lit8 p2, p2, -0x1

    .line 1760
    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_3c

    .line 1763
    if-nez p2, :cond_2a

    .line 1765
    return v1

    .line 1767
    :cond_2a
    add-int/lit8 p2, p2, -0x1

    .line 1771
    const/16 v4, -0x3e

    if-lt v1, v4, :cond_3b

    add-long/2addr v2, p0

    .end local p0    # "address":J
    .local v2, "address":J
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v5, :cond_39

    move-wide p0, v2

    goto :goto_3b

    :cond_39
    move-wide p0, v2

    goto :goto_97

    .line 1772
    .end local v2    # "address":J
    .restart local p0    # "address":J
    :cond_3b
    :goto_3b
    return v6

    .line 1774
    :cond_3c
    const/16 v7, -0x10

    if-ge v1, v7, :cond_6a

    .line 1777
    const/4 v7, 0x2

    if-ge p2, v7, :cond_48

    .line 1779
    invoke-static {p0, p1, v1, p2}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    .line 1781
    :cond_48
    add-int/lit8 p2, p2, -0x2

    .line 1783
    add-long v7, p0, v2

    .end local p0    # "address":J
    .local v7, "address":J
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1784
    .local p0, "byte2":B
    if-gt p0, v5, :cond_69

    const/16 p1, -0x60

    if-ne v1, v4, :cond_58

    if-lt p0, p1, :cond_69

    :cond_58
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5e

    if-ge p0, p1, :cond_69

    :cond_5e
    add-long/2addr v2, v7

    .line 1790
    .end local v7    # "address":J
    .restart local v2    # "address":J
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_67

    move-wide v7, v2

    goto :goto_69

    .line 1793
    .end local p0    # "byte2":B
    :cond_67
    move-wide p0, v2

    goto :goto_97

    .line 1791
    .end local v2    # "address":J
    .restart local v7    # "address":J
    .restart local p0    # "byte2":B
    :cond_69
    :goto_69
    return v6

    .line 1796
    .end local v7    # "address":J
    .local p0, "address":J
    :cond_6a
    const/4 v4, 0x3

    if-ge p2, v4, :cond_72

    .line 1798
    invoke-static {p0, p1, v1, p2}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    .line 1800
    :cond_72
    add-int/lit8 p2, p2, -0x3

    .line 1802
    add-long v7, p0, v2

    .end local p0    # "address":J
    .restart local v7    # "address":J
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1803
    .local p0, "byte2":B
    if-gt p0, v5, :cond_9a

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p0, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_9a

    add-long v9, v7, v2

    .line 1810
    .end local v7    # "address":J
    .local v9, "address":J
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-gt p1, v5, :cond_99

    add-long v7, v9, v2

    .line 1812
    .end local v9    # "address":J
    .restart local v7    # "address":J
    invoke-static {v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_96

    goto :goto_9a

    :cond_96
    move-wide p0, v7

    .line 1816
    .end local v1    # "byte1":I
    .end local v7    # "address":J
    .local p0, "address":J
    :goto_97
    goto/16 :goto_7

    .line 1810
    .restart local v1    # "byte1":I
    .restart local v9    # "address":J
    .local p0, "byte2":B
    :cond_99
    move-wide v7, v9

    .line 1813
    .end local v9    # "address":J
    .restart local v7    # "address":J
    :cond_9a
    :goto_9a
    return v6
.end method

.method private static blacklist partialIsValidUtf8([BJI)I
    .registers 15
    .param p0, "bytes"    # [B
    .param p1, "offset"    # J
    .param p3, "remaining"    # I

    .line 1671
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    .line 1672
    .local v0, "skipped":I
    sub-int/2addr p3, v0

    .line 1673
    int-to-long v1, v0

    add-long/2addr p1, v1

    .line 1679
    :goto_7
    const/4 v1, 0x0

    .line 1680
    .local v1, "byte1":I
    :goto_8
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    .end local p1    # "offset":J
    .local v4, "offset":J
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move v1, p1

    if-ltz p1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_8

    :cond_19
    move-wide p1, v4

    .line 1681
    .end local v4    # "offset":J
    .restart local p1    # "offset":J
    :cond_1a
    if-nez p3, :cond_1e

    .line 1682
    const/4 v2, 0x0

    return v2

    .line 1684
    :cond_1e
    add-int/lit8 p3, p3, -0x1

    .line 1687
    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_3c

    .line 1689
    if-nez p3, :cond_2a

    .line 1691
    return v1

    .line 1693
    :cond_2a
    add-int/lit8 p3, p3, -0x1

    .line 1697
    const/16 v4, -0x3e

    if-lt v1, v4, :cond_3b

    add-long/2addr v2, p1

    .end local p1    # "offset":J
    .local v2, "offset":J
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_39

    move-wide p1, v2

    goto :goto_3b

    :cond_39
    move-wide p1, v2

    goto :goto_99

    .line 1698
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :cond_3b
    :goto_3b
    return v6

    .line 1700
    :cond_3c
    const/16 v7, -0x10

    if-ge v1, v7, :cond_6b

    .line 1702
    const/4 v7, 0x2

    if-ge p3, v7, :cond_48

    .line 1704
    invoke-static {p0, v1, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    .line 1706
    :cond_48
    add-int/lit8 p3, p3, -0x2

    .line 1709
    add-long v7, p1, v2

    .end local p1    # "offset":J
    .local v7, "offset":J
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move p2, p1

    .local p2, "byte2":I
    if-gt p1, v5, :cond_6a

    const/16 p1, -0x60

    if-ne v1, v4, :cond_59

    if-lt p2, p1, :cond_6a

    :cond_59
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5f

    if-ge p2, p1, :cond_6a

    :cond_5f
    add-long/2addr v2, v7

    .line 1715
    .end local v7    # "offset":J
    .restart local v2    # "offset":J
    invoke-static {p0, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_68

    move-wide v7, v2

    goto :goto_6a

    .line 1718
    .end local p2    # "byte2":I
    :cond_68
    move-wide p1, v2

    goto :goto_99

    .line 1716
    .end local v2    # "offset":J
    .restart local v7    # "offset":J
    .restart local p2    # "byte2":I
    :cond_6a
    :goto_6a
    return v6

    .line 1720
    .end local v7    # "offset":J
    .end local p2    # "byte2":I
    .restart local p1    # "offset":J
    :cond_6b
    const/4 v4, 0x3

    if-ge p3, v4, :cond_73

    .line 1722
    invoke-static {p0, v1, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    .line 1724
    :cond_73
    add-int/lit8 p3, p3, -0x3

    .line 1727
    add-long v7, p1, v2

    .end local p1    # "offset":J
    .restart local v7    # "offset":J
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move p2, p1

    .restart local p2    # "byte2":I
    if-gt p1, v5, :cond_9c

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p2, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_9c

    add-long v9, v7, v2

    .line 1734
    .end local v7    # "offset":J
    .local v9, "offset":J
    invoke-static {p0, v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v5, :cond_9b

    add-long v7, v9, v2

    .line 1736
    .end local v9    # "offset":J
    .restart local v7    # "offset":J
    invoke-static {p0, v9, v10}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_98

    goto :goto_9c

    :cond_98
    move-wide p1, v7

    .line 1740
    .end local v1    # "byte1":I
    .end local v7    # "offset":J
    .end local p2    # "byte2":I
    .restart local p1    # "offset":J
    :goto_99
    goto/16 :goto_7

    .line 1734
    .end local p1    # "offset":J
    .restart local v1    # "byte1":I
    .restart local v9    # "offset":J
    .restart local p2    # "byte2":I
    :cond_9b
    move-wide v7, v9

    .line 1737
    .end local v9    # "offset":J
    .restart local v7    # "offset":J
    :cond_9c
    :goto_9c
    return v6
.end method

.method private static blacklist unsafeEstimateConsecutiveAscii(JI)I
    .registers 9
    .param p0, "address"    # J
    .param p2, "maxChars"    # I

    .line 1643
    move v0, p2

    .line 1644
    .local v0, "remaining":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    .line 1646
    const/4 v1, 0x0

    return v1

    .line 1652
    :cond_7
    neg-long v1, p0

    const-wide/16 v3, 0x7

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 1653
    .local v1, "unaligned":I
    move v2, v1

    .local v2, "j":I
    :goto_d
    if-lez v2, :cond_1f

    .line 1654
    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    .end local p0    # "address":J
    .local v3, "address":J
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1b

    .line 1655
    sub-int p0, v1, v2

    return p0

    .line 1653
    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v3

    goto :goto_d

    .line 1662
    .end local v2    # "j":I
    .end local v3    # "address":J
    .restart local p0    # "address":J
    :cond_1f
    sub-int/2addr v0, v1

    .line 1664
    :goto_20
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3a

    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    .line 1665
    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_20

    .line 1666
    :cond_3a
    sub-int v2, p2, v0

    return v2
.end method

.method private static blacklist unsafeEstimateConsecutiveAscii([BJI)I
    .registers 12
    .param p0, "bytes"    # [B
    .param p1, "offset"    # J
    .param p3, "maxChars"    # I

    .line 1603
    const/16 v0, 0x10

    if-ge p3, v0, :cond_6

    .line 1605
    const/4 v0, 0x0

    return v0

    .line 1613
    :cond_6
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x8

    .line 1615
    .local v0, "unaligned":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    const-wide/16 v2, 0x1

    if-ge v1, v0, :cond_1c

    .line 1616
    add-long/2addr v2, p1

    .end local p1    # "offset":J
    .local v2, "offset":J
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_18

    .line 1617
    return v1

    .line 1615
    :cond_18
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v2

    goto :goto_c

    .line 1621
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :cond_1c
    :goto_1c
    add-int/lit8 v4, v1, 0x8

    if-gt v4, p3, :cond_3a

    .line 1622
    sget-wide v4, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v4, p1

    invoke-static {p0, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide v6, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_34

    .line 1625
    goto :goto_3a

    .line 1627
    :cond_34
    const-wide/16 v4, 0x8

    add-long/2addr p1, v4

    .line 1621
    add-int/lit8 v1, v1, 0x8

    goto :goto_1c

    .line 1630
    :cond_3a
    :goto_3a
    if-ge v1, p3, :cond_49

    .line 1631
    add-long v4, p1, v2

    .end local p1    # "offset":J
    .local v4, "offset":J
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_45

    .line 1632
    return v1

    .line 1630
    :cond_45
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v4

    goto :goto_3a

    .line 1635
    .end local v4    # "offset":J
    .restart local p1    # "offset":J
    :cond_49
    return p3
.end method

.method private static blacklist unsafeIncompleteStateFor(JII)I
    .registers 7
    .param p0, "address"    # J
    .param p2, "byte1"    # I
    .param p3, "remaining"    # I

    .line 1835
    packed-switch p3, :pswitch_data_28

    .line 1844
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1841
    :pswitch_9
    nop

    .line 1842
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    invoke-static {v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    .line 1841
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p2, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$100(III)I

    move-result v0

    return v0

    .line 1839
    :pswitch_1a
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p2, v0}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$000(II)I

    move-result v0

    return v0

    .line 1837
    :pswitch_23
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p2}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$1200(I)I

    move-result v0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist unsafeIncompleteStateFor([BIJI)I
    .registers 8
    .param p0, "bytes"    # [B
    .param p1, "byte1"    # I
    .param p2, "offset"    # J
    .param p4, "remaining"    # I

    .line 1821
    packed-switch p4, :pswitch_data_28

    .line 1830
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1827
    :pswitch_9
    nop

    .line 1828
    invoke-static {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    invoke-static {p0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    .line 1827
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$100(III)I

    move-result v0

    return v0

    .line 1825
    :pswitch_1a
    invoke-static {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$000(II)I

    move-result v0

    return v0

    .line 1823
    :pswitch_23
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$1200(I)I

    move-result v0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method blacklist decodeUtf8([BII)Ljava/lang/String;
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1370
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1374
    .local v0, "s":Ljava/lang/String;
    const-string v1, "\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1375
    return-object v0

    .line 1383
    :cond_10
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 1384
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    add-int v2, p2, p3

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1383
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1385
    return-object v0

    .line 1388
    :cond_23
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method blacklist decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 20
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1395
    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_d7

    .line 1399
    invoke-static/range {p1 .. p1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 1400
    .local v2, "address":J
    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 1404
    .local v4, "addressLimit":J
    new-array v10, v1, [C

    .line 1405
    .local v10, "resultArr":[C
    const/4 v6, 0x0

    .line 1409
    .local v6, "resultPos":I
    :goto_1a
    cmp-long v7, v2, v4

    const-wide/16 v12, 0x1

    if-gez v7, :cond_33

    .line 1410
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    .line 1411
    .local v7, "b":B
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v7}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 1412
    goto :goto_33

    .line 1414
    :cond_2b
    add-long/2addr v2, v12

    .line 1415
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "resultPos":I
    .local v8, "resultPos":I
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v7, v10, v6}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1416
    .end local v7    # "b":B
    move v6, v8

    goto :goto_1a

    .line 1418
    .end local v8    # "resultPos":I
    .restart local v6    # "resultPos":I
    :cond_33
    :goto_33
    move v11, v6

    .end local v6    # "resultPos":I
    .local v11, "resultPos":I
    :goto_34
    cmp-long v6, v2, v4

    if-gez v6, :cond_d0

    .line 1419
    add-long v6, v2, v12

    move-wide v7, v6

    .end local v2    # "address":J
    .local v7, "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1420
    .local v6, "byte1":B
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1421
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "resultPos":I
    .local v2, "resultPos":I
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v6, v10, v11}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1424
    :goto_4a
    cmp-long v3, v7, v4

    if-gez v3, :cond_61

    .line 1425
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    .line 1426
    .local v3, "b":B
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_59

    .line 1427
    goto :goto_61

    .line 1429
    :cond_59
    add-long/2addr v7, v12

    .line 1430
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "resultPos":I
    .local v9, "resultPos":I
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v3, v10, v2}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1431
    .end local v3    # "b":B
    move v2, v9

    goto :goto_4a

    .line 1462
    .end local v6    # "byte1":B
    .end local v9    # "resultPos":I
    .restart local v2    # "resultPos":I
    :cond_61
    :goto_61
    move v11, v2

    move-wide v2, v7

    goto :goto_c9

    .line 1432
    .end local v2    # "resultPos":I
    .restart local v6    # "byte1":B
    .restart local v11    # "resultPos":I
    :cond_64
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1433
    cmp-long v2, v7, v4

    if-gez v2, :cond_7b

    .line 1436
    add-long v2, v7, v12

    .line 1437
    .end local v7    # "address":J
    .local v2, "address":J
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-int/lit8 v8, v11, 0x1

    .line 1436
    .end local v11    # "resultPos":I
    .restart local v8    # "resultPos":I
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v6, v7, v10, v11}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v11, v8

    goto :goto_c9

    .line 1434
    .end local v2    # "address":J
    .end local v8    # "resultPos":I
    .restart local v7    # "address":J
    .restart local v11    # "resultPos":I
    :cond_7b
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1438
    :cond_80
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v6}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1439
    sub-long v2, v4, v12

    cmp-long v2, v7, v2

    if-gez v2, :cond_a0

    .line 1442
    add-long v2, v7, v12

    .line 1444
    .end local v7    # "address":J
    .restart local v2    # "address":J
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-long v8, v2, v12

    .line 1445
    .end local v2    # "address":J
    .local v8, "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    add-int/lit8 v3, v11, 0x1

    .line 1442
    .end local v11    # "resultPos":I
    .local v3, "resultPos":I
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v6, v7, v2, v10, v11}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v11, v3

    move-wide v2, v8

    goto :goto_c9

    .line 1440
    .end local v3    # "resultPos":I
    .end local v8    # "address":J
    .restart local v7    # "address":J
    .restart local v11    # "resultPos":I
    :cond_a0
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1449
    :cond_a5
    const-wide/16 v2, 0x2

    sub-long v2, v4, v2

    cmp-long v2, v7, v2

    if-gez v2, :cond_cb

    .line 1452
    add-long v2, v7, v12

    .line 1454
    .end local v7    # "address":J
    .restart local v2    # "address":J
    invoke-static {v7, v8}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-long v8, v2, v12

    .line 1455
    .end local v2    # "address":J
    .restart local v8    # "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    add-long v14, v8, v12

    .line 1456
    .end local v8    # "address":J
    .local v14, "address":J
    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    add-int/lit8 v3, v11, 0x1

    .line 1452
    .end local v11    # "resultPos":I
    .restart local v3    # "resultPos":I
    move v8, v2

    .restart local v11    # "resultPos":I
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v6 .. v11}, Landroid/net/connectivity/com/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1460
    .end local v11    # "resultPos":I
    add-int/lit8 v3, v3, 0x1

    move v11, v3

    move-wide v2, v14

    .line 1462
    .end local v3    # "resultPos":I
    .end local v6    # "byte1":B
    .end local v14    # "address":J
    .restart local v2    # "address":J
    .restart local v11    # "resultPos":I
    :goto_c9
    goto/16 :goto_34

    .line 1450
    .end local v2    # "address":J
    .restart local v6    # "byte1":B
    .restart local v7    # "address":J
    :cond_cb
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1464
    .end local v6    # "byte1":B
    .end local v7    # "address":J
    .restart local v2    # "address":J
    :cond_d0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v10, v7, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 1396
    .end local v2    # "address":J
    .end local v4    # "addressLimit":J
    .end local v10    # "resultArr":[C
    .end local v11    # "resultPos":I
    :cond_d7
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1397
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 25
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1469
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    .line 1470
    .local v4, "outIx":J
    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1471
    .local v6, "outLimit":J
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1472
    .local v8, "inLimit":I
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_149

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_149

    .line 1480
    const/4 v11, 0x0

    .line 1481
    .local v11, "inIx":I
    :goto_1a
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v11, v8, :cond_36

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "c":C
    if-ge v15, v12, :cond_34

    .line 1482
    add-long v12, v4, v13

    move/from16 v15, v16

    .end local v4    # "outIx":J
    .end local v16    # "c":C
    .local v12, "outIx":J
    .local v15, "c":C
    int-to-byte v14, v15

    invoke-static {v1, v4, v5, v14}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1481
    add-int/lit8 v11, v11, 0x1

    move-wide v4, v12

    goto :goto_1a

    .end local v12    # "outIx":J
    .end local v15    # "c":C
    .restart local v4    # "outIx":J
    .restart local v16    # "c":C
    :cond_34
    move/from16 v15, v16

    .line 1484
    .end local v16    # "c":C
    :cond_36
    if-ne v11, v8, :cond_3a

    .line 1486
    long-to-int v9, v4

    return v9

    .line 1489
    :cond_3a
    :goto_3a
    if-ge v11, v8, :cond_147

    .line 1490
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 1491
    .restart local v15    # "c":C
    if-ge v15, v12, :cond_53

    cmp-long v16, v4, v6

    if-gez v16, :cond_53

    .line 1492
    add-long v16, v4, v13

    move-wide/from16 v18, v13

    .end local v4    # "outIx":J
    .local v16, "outIx":J
    int-to-byte v13, v15

    invoke-static {v1, v4, v5, v13}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move v3, v12

    move-wide/from16 v4, v16

    goto/16 :goto_fb

    .line 1491
    .end local v16    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_53
    move-wide/from16 v18, v13

    .line 1493
    const/16 v13, 0x800

    if-ge v15, v13, :cond_7a

    const-wide/16 v13, 0x2

    sub-long v13, v6, v13

    cmp-long v13, v4, v13

    if-gtz v13, :cond_7a

    .line 1494
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .local v13, "outIx":J
    ushr-int/lit8 v12, v15, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1495
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v12, v15, 0x3f

    const/16 v2, 0x80

    or-int/2addr v12, v2

    int-to-byte v2, v12

    invoke-static {v1, v13, v14, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    const/16 v3, 0x80

    goto/16 :goto_fb

    .line 1496
    :cond_7a
    const v2, 0xdfff

    const v12, 0xd800

    if-lt v15, v12, :cond_84

    if-ge v2, v15, :cond_b0

    :cond_84
    const-wide/16 v13, 0x3

    sub-long v13, v6, v13

    cmp-long v13, v4, v13

    if-gtz v13, :cond_b0

    .line 1498
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v2, v15, 0xc

    or-int/lit16 v2, v2, 0x1e0

    int-to-byte v2, v2

    invoke-static {v1, v4, v5, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1499
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    ushr-int/lit8 v2, v15, 0x6

    and-int/lit8 v2, v2, 0x3f

    const/16 v12, 0x80

    or-int/2addr v2, v12

    int-to-byte v2, v2

    invoke-static {v1, v13, v14, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1500
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    and-int/lit8 v2, v15, 0x3f

    or-int/2addr v2, v12

    int-to-byte v2, v2

    invoke-static {v1, v4, v5, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide v4, v13

    const/16 v3, 0x80

    goto :goto_fb

    .line 1501
    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_b0
    const-wide/16 v13, 0x4

    sub-long v13, v6, v13

    cmp-long v13, v4, v13

    if-gtz v13, :cond_10e

    .line 1505
    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_106

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v12, v2

    .local v12, "low":C
    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 1508
    invoke-static {v15, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1509
    .local v2, "codePoint":I
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    move/from16 v17, v2

    .end local v2    # "codePoint":I
    .local v17, "codePoint":I
    ushr-int/lit8 v2, v17, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-static {v1, v4, v5, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1510
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    ushr-int/lit8 v2, v17, 0xc

    and-int/lit8 v2, v2, 0x3f

    const/16 v3, 0x80

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v13, v14, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1511
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v2, v17, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v4, v5, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1512
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v2, v17, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v13, v14, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1513
    .end local v12    # "low":C
    .end local v17    # "codePoint":I
    nop

    .line 1489
    :goto_fb
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p3

    move v12, v3

    move-wide/from16 v13, v18

    move/from16 v3, p4

    goto/16 :goto_3a

    .line 1506
    :cond_106
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v3, v11, -0x1

    invoke-direct {v2, v3, v8}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    .line 1514
    :cond_10e
    if-gt v12, v15, :cond_128

    if-gt v15, v2, :cond_128

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_122

    add-int/lit8 v2, v11, 0x1

    .line 1515
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-nez v2, :cond_128

    .line 1517
    :cond_122
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v2, v11, v8}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    .line 1520
    :cond_128
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1525
    .end local v15    # "c":C
    :cond_147
    long-to-int v2, v4

    return v2

    .line 1474
    .end local v11    # "inIx":I
    :cond_149
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v10, v8, -0x1

    .line 1475
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v9, p3, p4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 25
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 1530
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1531
    .local v2, "address":J
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1532
    .local v4, "outIx":J
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1533
    .local v6, "outLimit":J
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1534
    .local v8, "inLimit":I
    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_164

    .line 1542
    const/4 v9, 0x0

    .line 1543
    .local v9, "inIx":I
    :goto_24
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_40

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "c":C
    if-ge v15, v12, :cond_3e

    .line 1544
    add-long v12, v4, v13

    move/from16 v15, v16

    .end local v4    # "outIx":J
    .end local v16    # "c":C
    .local v12, "outIx":J
    .local v15, "c":C
    int-to-byte v14, v15

    invoke-static {v4, v5, v14}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1543
    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_24

    .end local v12    # "outIx":J
    .end local v15    # "c":C
    .restart local v4    # "outIx":J
    .restart local v16    # "c":C
    :cond_3e
    move/from16 v15, v16

    .line 1546
    .end local v16    # "c":C
    :cond_40
    if-ne v9, v8, :cond_49

    .line 1548
    sub-long v10, v4, v2

    long-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1549
    return-void

    .line 1552
    :cond_49
    :goto_49
    if-ge v9, v8, :cond_15b

    .line 1553
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 1554
    .restart local v15    # "c":C
    if-ge v15, v12, :cond_64

    cmp-long v16, v4, v6

    if-gez v16, :cond_64

    .line 1555
    add-long v16, v4, v13

    move-wide/from16 v18, v13

    .end local v4    # "outIx":J
    .local v16, "outIx":J
    int-to-byte v13, v15

    invoke-static {v4, v5, v13}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v20, v2

    move v2, v12

    move-wide/from16 v4, v16

    goto/16 :goto_111

    .line 1554
    .end local v16    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_64
    move-wide/from16 v18, v13

    .line 1556
    const/16 v13, 0x800

    if-ge v15, v13, :cond_8e

    const-wide/16 v13, 0x2

    sub-long v13, v6, v13

    cmp-long v13, v4, v13

    if-gtz v13, :cond_8e

    .line 1557
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .local v13, "outIx":J
    ushr-int/lit8 v12, v15, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    invoke-static {v4, v5, v12}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1558
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v12, v15, 0x3f

    move-wide/from16 v20, v2

    const/16 v2, 0x80

    .end local v2    # "address":J
    .local v20, "address":J
    or-int/lit16 v3, v12, 0x80

    int-to-byte v2, v3

    invoke-static {v13, v14, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    const/16 v2, 0x80

    goto/16 :goto_111

    .line 1556
    .end local v20    # "address":J
    .restart local v2    # "address":J
    :cond_8e
    move-wide/from16 v20, v2

    .line 1559
    .end local v2    # "address":J
    .restart local v20    # "address":J
    const v2, 0xdfff

    const v3, 0xd800

    if-lt v15, v3, :cond_9a

    if-ge v2, v15, :cond_c6

    :cond_9a
    const-wide/16 v12, 0x3

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_c6

    .line 1561
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v2, v15, 0xc

    or-int/lit16 v2, v2, 0x1e0

    int-to-byte v2, v2

    invoke-static {v4, v5, v2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1562
    add-long v2, v13, v18

    .end local v13    # "outIx":J
    .local v2, "outIx":J
    ushr-int/lit8 v4, v15, 0x6

    and-int/lit8 v4, v4, 0x3f

    const/16 v5, 0x80

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-static {v13, v14, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1563
    add-long v13, v2, v18

    .end local v2    # "outIx":J
    .restart local v13    # "outIx":J
    and-int/lit8 v4, v15, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v13

    const/16 v2, 0x80

    goto :goto_111

    .line 1564
    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_c6
    const-wide/16 v12, 0x4

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_122

    .line 1568
    add-int/lit8 v2, v9, 0x1

    if-eq v2, v8, :cond_11a

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "low":C
    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 1571
    invoke-static {v15, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1572
    .local v2, "codePoint":I
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v12, v2, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    invoke-static {v4, v5, v12}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1573
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    ushr-int/lit8 v12, v2, 0xc

    and-int/lit8 v12, v12, 0x3f

    move/from16 v17, v2

    const/16 v2, 0x80

    .end local v2    # "codePoint":I
    .local v17, "codePoint":I
    or-int/2addr v12, v2

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1574
    add-long v13, v4, v18

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v12, v17, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v2

    int-to-byte v12, v12

    invoke-static {v4, v5, v12}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1575
    add-long v4, v13, v18

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v12, v17, 0x3f

    or-int/2addr v12, v2

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1576
    .end local v3    # "low":C
    .end local v17    # "codePoint":I
    nop

    .line 1552
    :goto_111
    add-int/lit8 v9, v9, 0x1

    move v12, v2

    move-wide/from16 v13, v18

    move-wide/from16 v2, v20

    goto/16 :goto_49

    .line 1569
    :cond_11a
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v3, v9, -0x1

    invoke-direct {v2, v3, v8}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    .line 1577
    :cond_122
    if-gt v3, v15, :cond_13c

    if-gt v15, v2, :cond_13c

    add-int/lit8 v2, v9, 0x1

    if-eq v2, v8, :cond_136

    add-int/lit8 v2, v9, 0x1

    .line 1578
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 1580
    :cond_136
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v2, v9, v8}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    .line 1583
    :cond_13c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1588
    .end local v15    # "c":C
    .end local v20    # "address":J
    .local v2, "address":J
    :cond_15b
    move-wide/from16 v20, v2

    .end local v2    # "address":J
    .restart local v20    # "address":J
    sub-long v2, v4, v20

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1589
    return-void

    .line 1536
    .end local v9    # "inIx":I
    .end local v20    # "address":J
    .restart local v2    # "address":J
    :cond_164
    move-wide/from16 v20, v2

    .end local v2    # "address":J
    .restart local v20    # "address":J
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v9, v8, -0x1

    .line 1537
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist partialIsValidUtf8(I[BII)I
    .registers 22
    .param p1, "state"    # I
    .param p2, "bytes"    # [B
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 1179
    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    array-length v5, v1

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    if-ltz v4, :cond_b6

    .line 1183
    int-to-long v4, v2

    .line 1184
    .local v4, "offset":J
    int-to-long v6, v3

    .line 1185
    .local v6, "offsetLimit":J
    if-eqz v0, :cond_ae

    .line 1193
    cmp-long v8, v4, v6

    if-ltz v8, :cond_18

    .line 1194
    return v0

    .line 1196
    :cond_18
    int-to-byte v8, v0

    .line 1198
    .local v8, "byte1":I
    const/16 v9, -0x20

    const/4 v10, -0x1

    const/16 v11, -0x41

    const-wide/16 v12, 0x1

    if-ge v8, v9, :cond_33

    .line 1203
    const/16 v9, -0x3e

    if-lt v8, v9, :cond_32

    add-long/2addr v12, v4

    .line 1205
    .end local v4    # "offset":J
    .local v12, "offset":J
    invoke-static {v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_2f

    move-wide v4, v12

    goto :goto_32

    :cond_2f
    move-wide v4, v12

    goto/16 :goto_ae

    .line 1206
    .end local v12    # "offset":J
    .restart local v4    # "offset":J
    :cond_32
    :goto_32
    return v10

    .line 1208
    :cond_33
    const/16 v14, -0x10

    if-ge v8, v14, :cond_67

    .line 1212
    shr-int/lit8 v14, v0, 0x8

    not-int v14, v14

    int-to-byte v14, v14

    .line 1213
    .local v14, "byte2":I
    if-nez v14, :cond_4d

    .line 1214
    add-long v15, v4, v12

    .end local v4    # "offset":J
    .local v15, "offset":J
    invoke-static {v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v14

    .line 1215
    cmp-long v4, v15, v6

    if-ltz v4, :cond_4c

    .line 1216
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v8, v14}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$000(II)I

    move-result v4

    return v4

    .line 1215
    :cond_4c
    move-wide v4, v15

    .line 1219
    .end local v15    # "offset":J
    .restart local v4    # "offset":J
    :cond_4d
    if-gt v14, v11, :cond_66

    const/16 v15, -0x60

    if-ne v8, v9, :cond_55

    if-lt v14, v15, :cond_66

    :cond_55
    const/16 v9, -0x13

    if-ne v8, v9, :cond_5b

    if-ge v14, v15, :cond_66

    :cond_5b
    add-long/2addr v12, v4

    .line 1225
    .end local v4    # "offset":J
    .restart local v12    # "offset":J
    invoke-static {v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_64

    move-wide v4, v12

    goto :goto_66

    .line 1228
    .end local v14    # "byte2":I
    :cond_64
    move-wide v4, v12

    goto :goto_ae

    .line 1226
    .end local v12    # "offset":J
    .restart local v4    # "offset":J
    .restart local v14    # "byte2":I
    :cond_66
    :goto_66
    return v10

    .line 1232
    .end local v14    # "byte2":I
    :cond_67
    shr-int/lit8 v9, v0, 0x8

    not-int v9, v9

    int-to-byte v9, v9

    .line 1233
    .local v9, "byte2":I
    const/4 v14, 0x0

    .line 1234
    .local v14, "byte3":I
    if-nez v9, :cond_7f

    .line 1235
    add-long v15, v4, v12

    .end local v4    # "offset":J
    .restart local v15    # "offset":J
    invoke-static {v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v9

    .line 1236
    cmp-long v4, v15, v6

    if-ltz v4, :cond_7d

    .line 1237
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v8, v9}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$000(II)I

    move-result v4

    return v4

    .line 1236
    :cond_7d
    move-wide v4, v15

    goto :goto_82

    .line 1240
    .end local v15    # "offset":J
    .restart local v4    # "offset":J
    :cond_7f
    shr-int/lit8 v15, v0, 0x10

    int-to-byte v14, v15

    .line 1242
    :goto_82
    if-nez v14, :cond_94

    .line 1243
    add-long v15, v4, v12

    .end local v4    # "offset":J
    .restart local v15    # "offset":J
    invoke-static {v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v14

    .line 1244
    cmp-long v4, v15, v6

    if-ltz v4, :cond_93

    .line 1245
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v8, v9, v14}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$100(III)I

    move-result v4

    return v4

    .line 1244
    :cond_93
    move-wide v4, v15

    .line 1253
    .end local v15    # "offset":J
    .restart local v4    # "offset":J
    :cond_94
    if-gt v9, v11, :cond_ad

    shl-int/lit8 v15, v8, 0x1c

    add-int/lit8 v16, v9, 0x70

    add-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x1e

    if-nez v15, :cond_ad

    if-gt v14, v11, :cond_ad

    add-long/2addr v12, v4

    .line 1262
    .end local v4    # "offset":J
    .restart local v12    # "offset":J
    invoke-static {v1, v4, v5}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_ab

    move-wide v4, v12

    goto :goto_ad

    :cond_ab
    move-wide v4, v12

    goto :goto_ae

    .line 1263
    .end local v12    # "offset":J
    .restart local v4    # "offset":J
    :cond_ad
    :goto_ad
    return v10

    .line 1268
    .end local v8    # "byte1":I
    .end local v9    # "byte2":I
    .end local v14    # "byte3":I
    :cond_ae
    :goto_ae
    sub-long v8, v6, v4

    long-to-int v8, v8

    invoke-static {v1, v4, v5, v8}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result v8

    return v8

    .line 1180
    .end local v4    # "offset":J
    .end local v6    # "offsetLimit":J
    :cond_b6
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v5, v1

    .line 1181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Array length=%d, index=%d, limit=%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method blacklist partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 20
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 1275
    move/from16 v0, p1

    move/from16 v1, p3

    or-int v2, v1, p4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v3, v3, p4

    or-int/2addr v2, v3

    if-ltz v2, :cond_bd

    .line 1279
    invoke-static/range {p2 .. p2}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 1280
    .local v2, "address":J
    sub-int v4, p4, v1

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1281
    .local v4, "addressLimit":J
    if-eqz v0, :cond_b5

    .line 1289
    cmp-long v6, v2, v4

    if-ltz v6, :cond_20

    .line 1290
    return v0

    .line 1293
    :cond_20
    int-to-byte v6, v0

    .line 1295
    .local v6, "byte1":I
    const/16 v7, -0x20

    const/4 v8, -0x1

    const/16 v9, -0x41

    const-wide/16 v10, 0x1

    if-ge v6, v7, :cond_3b

    .line 1300
    const/16 v7, -0x3e

    if-lt v6, v7, :cond_3a

    add-long/2addr v10, v2

    .line 1302
    .end local v2    # "address":J
    .local v10, "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_37

    move-wide v2, v10

    goto :goto_3a

    :cond_37
    move-wide v2, v10

    goto/16 :goto_b5

    .line 1303
    .end local v10    # "address":J
    .restart local v2    # "address":J
    :cond_3a
    :goto_3a
    return v8

    .line 1305
    :cond_3b
    const/16 v12, -0x10

    if-ge v6, v12, :cond_6f

    .line 1309
    shr-int/lit8 v12, v0, 0x8

    not-int v12, v12

    int-to-byte v12, v12

    .line 1310
    .local v12, "byte2":I
    if-nez v12, :cond_55

    .line 1311
    add-long v13, v2, v10

    .end local v2    # "address":J
    .local v13, "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    .line 1312
    cmp-long v2, v13, v4

    if-ltz v2, :cond_54

    .line 1313
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v6, v12}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$000(II)I

    move-result v2

    return v2

    .line 1312
    :cond_54
    move-wide v2, v13

    .line 1316
    .end local v13    # "address":J
    .restart local v2    # "address":J
    :cond_55
    if-gt v12, v9, :cond_6e

    const/16 v13, -0x60

    if-ne v6, v7, :cond_5d

    if-lt v12, v13, :cond_6e

    :cond_5d
    const/16 v7, -0x13

    if-ne v6, v7, :cond_63

    if-ge v12, v13, :cond_6e

    :cond_63
    add-long/2addr v10, v2

    .line 1322
    .end local v2    # "address":J
    .restart local v10    # "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_6c

    move-wide v2, v10

    goto :goto_6e

    .line 1325
    .end local v12    # "byte2":I
    :cond_6c
    move-wide v2, v10

    goto :goto_b5

    .line 1323
    .end local v10    # "address":J
    .restart local v2    # "address":J
    .restart local v12    # "byte2":I
    :cond_6e
    :goto_6e
    return v8

    .line 1329
    .end local v12    # "byte2":I
    :cond_6f
    shr-int/lit8 v7, v0, 0x8

    not-int v7, v7

    int-to-byte v7, v7

    .line 1330
    .local v7, "byte2":I
    const/4 v12, 0x0

    .line 1331
    .local v12, "byte3":I
    if-nez v7, :cond_87

    .line 1332
    add-long v13, v2, v10

    .end local v2    # "address":J
    .restart local v13    # "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    .line 1333
    cmp-long v2, v13, v4

    if-ltz v2, :cond_85

    .line 1334
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v6, v7}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$000(II)I

    move-result v2

    return v2

    .line 1333
    :cond_85
    move-wide v2, v13

    goto :goto_8a

    .line 1337
    .end local v13    # "address":J
    .restart local v2    # "address":J
    :cond_87
    shr-int/lit8 v13, v0, 0x10

    int-to-byte v12, v13

    .line 1339
    :goto_8a
    if-nez v12, :cond_9c

    .line 1340
    add-long v13, v2, v10

    .end local v2    # "address":J
    .restart local v13    # "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    .line 1341
    cmp-long v2, v13, v4

    if-ltz v2, :cond_9b

    .line 1342
    # invokes: Landroid/net/connectivity/com/google/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v6, v7, v12}, Landroid/net/connectivity/com/google/protobuf/Utf8;->access$100(III)I

    move-result v2

    return v2

    .line 1341
    :cond_9b
    move-wide v2, v13

    .line 1350
    .end local v13    # "address":J
    .restart local v2    # "address":J
    :cond_9c
    if-gt v7, v9, :cond_b4

    shl-int/lit8 v13, v6, 0x1c

    add-int/lit8 v14, v7, 0x70

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x1e

    if-nez v13, :cond_b4

    if-gt v12, v9, :cond_b4

    add-long/2addr v10, v2

    .line 1359
    .end local v2    # "address":J
    .restart local v10    # "address":J
    invoke-static {v2, v3}, Landroid/net/connectivity/com/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_b2

    move-wide v2, v10

    goto :goto_b4

    :cond_b2
    move-wide v2, v10

    goto :goto_b5

    .line 1360
    .end local v10    # "address":J
    .restart local v2    # "address":J
    :cond_b4
    :goto_b4
    return v8

    .line 1365
    .end local v6    # "byte1":I
    .end local v7    # "byte2":I
    .end local v12    # "byte3":I
    :cond_b5
    :goto_b5
    sub-long v6, v4, v2

    long-to-int v6, v6

    invoke-static {v2, v3, v6}, Landroid/net/connectivity/com/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result v6

    return v6

    .line 1276
    .end local v2    # "address":J
    .end local v4    # "addressLimit":J
    :cond_bd
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1277
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
