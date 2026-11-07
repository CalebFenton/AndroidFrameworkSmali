.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;
.source "AccessNetworkUtils.java"


# static fields
.field private static final blacklist FREQUENCY_KHZ:I = 0x3e8

.field private static final blacklist FREQUENCY_RANGE_HIGH_KHZ:I = 0x5b8d80

.field private static final blacklist FREQUENCY_RANGE_LOW_KHZ:I = 0xf4240

.field private static final blacklist FREQUENCY_RANGE_MID_KHZ:I = 0x2dc6c0

.field public static final greylist-max-o INVALID_BAND:I = -0x1

.field public static final blacklist INVALID_FREQUENCY:I = -0x1

.field private static final blacklist JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "jp"

.field private static final blacklist TAG:Ljava/lang/String; = "AccessNetworkUtils"

.field private static final blacklist UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    .line 46
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertArfcnToFrequency(III)I
    .registers 4
    .param p0, "arfcn"    # I
    .param p1, "uplinkFrequencyFirstKhz"    # I
    .param p2, "arfcnOffset"    # I

    .line 853
    sub-int v0, p0, p2

    mul-int/lit16 v0, v0, 0xc8

    add-int/2addr v0, p1

    return v0
.end method

.method private static blacklist convertEarfcnToFrequency(III)I
    .registers 4
    .param p0, "low"    # I
    .param p1, "earfcn"    # I
    .param p2, "offset"    # I

    .line 722
    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p0

    return v0
.end method

.method private static blacklist convertUarfcnTddToFrequency(II)I
    .registers 4
    .param p0, "band"    # I
    .param p1, "uarfcn"    # I

    .line 786
    const/16 v0, 0x68

    if-eq p0, v0, :cond_9

    .line 787
    mul-int/lit8 v0, p1, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 789
    :cond_9
    mul-int/lit16 v0, p1, 0x3e8

    const v1, 0x20ced4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private static blacklist convertUarfcnToFrequency(II)I
    .registers 3
    .param p0, "offsetKhz"    # I
    .param p1, "uarfcn"    # I

    .line 775
    mul-int/lit16 v0, p1, 0xc8

    add-int/2addr v0, p0

    return v0
.end method

.method public static greylist-max-o getDuplexModeForEutranBand(I)I
    .registers 4
    .param p0, "band"    # I

    .line 64
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    .line 65
    return v1

    .line 68
    :cond_5
    const/16 v0, 0x58

    if-le p0, v0, :cond_a

    .line 69
    return v1

    .line 70
    :cond_a
    const/16 v0, 0x41

    const/4 v2, 0x1

    if-lt p0, v0, :cond_10

    .line 71
    return v2

    .line 72
    :cond_10
    const/16 v0, 0x21

    if-lt p0, v0, :cond_16

    .line 73
    const/4 v0, 0x2

    return v0

    .line 74
    :cond_16
    if-lt p0, v2, :cond_19

    .line 75
    return v2

    .line 78
    :cond_19
    return v1
.end method

.method public static blacklist getFrequencyFromArfcn(IIZ)I
    .registers 13
    .param p0, "band"    # I
    .param p1, "arfcn"    # I
    .param p2, "isUplink"    # Z

    .line 814
    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ne p1, v0, :cond_7

    .line 815
    return v1

    .line 818
    :cond_7
    const/4 v0, 0x0

    .line 819
    .local v0, "uplinkFrequencyFirst":I
    const/4 v2, 0x0

    .line 820
    .local v2, "arfcnOffset":I
    const/4 v3, 0x0

    .line 821
    .local v3, "downlinkOffset":I
    const/4 v4, 0x0

    .line 823
    .local v4, "frequency":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v5

    .line 822
    array-length v6, v5

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_5c

    aget-object v8, v5, v7

    .line 824
    .local v8, "arfcnFrequency":Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    iget v9, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    if-ne p0, v9, :cond_59

    .line 825
    iget v5, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    if-lt p1, v5, :cond_2c

    iget v5, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    if-gt p1, v5, :cond_2c

    .line 827
    iget v0, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    .line 828
    iget v3, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    .line 829
    iget v2, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    .line 830
    invoke-static {p1, v0, v2}, Landroid/telephony/AccessNetworkUtils;->convertArfcnToFrequency(III)I

    move-result v4

    .line 832
    goto :goto_5c

    .line 834
    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Band and the range of ARFCN are not consistent: band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,arfcn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,isUplink = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AccessNetworkUtils"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return v1

    .line 822
    .end local v8    # "arfcnFrequency":Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 841
    :cond_5c
    :goto_5c
    if-eqz p2, :cond_60

    move v1, v4

    goto :goto_62

    :cond_60
    add-int v1, v4, v3

    :goto_62
    return v1
.end method

.method public static blacklist getFrequencyFromEarfcn(IIZ)I
    .registers 10
    .param p0, "band"    # I
    .param p1, "earfcn"    # I
    .param p2, "isUplink"    # Z

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "low":I
    const/4 v1, 0x0

    .line 698
    .local v1, "offset":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_58

    aget-object v5, v2, v4

    .line 699
    .local v5, "earfcnFrequency":Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;
    iget v6, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_55

    .line 700
    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 701
    if-eqz p2, :cond_1b

    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkLowKhz:I

    goto :goto_1d

    :cond_1b
    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkLowKhz:I

    :goto_1d
    move v0, v2

    .line 702
    if-eqz p2, :cond_23

    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_25

    .line 703
    :cond_23
    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    :goto_25
    move v1, v2

    .line 704
    goto :goto_58

    .line 706
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band and the range of EARFCN are not consistent: band = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,earfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isUplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessNetworkUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v2, -0x1

    return v2

    .line 698
    .end local v5    # "earfcnFrequency":Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 712
    :cond_58
    :goto_58
    invoke-static {v0, p1, v1}, Landroid/telephony/AccessNetworkUtils;->convertEarfcnToFrequency(III)I

    move-result v2

    return v2
.end method

.method public static blacklist getFrequencyFromNrArfcn(I)I
    .registers 9
    .param p0, "nrArfcn"    # I

    .line 671
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_7

    .line 672
    const/4 v0, -0x1

    return v0

    .line 675
    :cond_7
    const/4 v0, 0x0

    .line 676
    .local v0, "globalKhz":I
    const/4 v1, 0x0

    .line 677
    .local v1, "rangeOffset":I
    const/4 v2, 0x0

    .line 679
    .local v2, "arfcnOffset":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    move-result-object v3

    .line 678
    array-length v4, v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_26

    aget-object v6, v3, v5

    .line 680
    .local v6, "nrArfcnFrequency":Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    iget v7, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeFirst:I

    if-lt p0, v7, :cond_23

    iget v7, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeLast:I

    if-gt p0, v7, :cond_23

    .line 682
    iget v0, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->globalKhz:I

    .line 683
    iget v1, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeOffset:I

    .line 684
    iget v2, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->arfcnOffset:I

    .line 685
    goto :goto_26

    .line 678
    .end local v6    # "nrArfcnFrequency":Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 688
    :cond_26
    :goto_26
    sub-int v3, p0, v2

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    return v3
.end method

.method public static blacklist getFrequencyFromUarfcn(IIZ)I
    .registers 10
    .param p0, "band"    # I
    .param p1, "uarfcn"    # I
    .param p2, "isUplink"    # Z

    .line 740
    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ne p1, v0, :cond_7

    .line 741
    return v1

    .line 744
    :cond_7
    const/4 v0, 0x0

    .line 746
    .local v0, "offsetKhz":I
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    move-result-object v2

    .line 745
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    .line 747
    .local v5, "uarfcnFrequency":Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    iget v6, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_52

    .line 748
    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 749
    if-eqz p2, :cond_21

    iget v1, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_23

    .line 750
    :cond_21
    iget v1, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkOffset:I

    :goto_23
    move v0, v1

    .line 751
    goto :goto_55

    .line 753
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band and the range of UARFCN are not consistent: band = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,uarfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isUplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessNetworkUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v1

    .line 745
    .end local v5    # "uarfcnFrequency":Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 760
    :cond_55
    :goto_55
    sget-object v1, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 761
    invoke-static {v0, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnToFrequency(II)I

    move-result v1

    return v1

    .line 763
    :cond_66
    invoke-static {p0, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnTddToFrequency(II)I

    move-result v1

    return v1
.end method

.method public static blacklist getFrequencyRangeFromArfcn(I)I
    .registers 3
    .param p0, "frequency"    # I

    .line 857
    const v0, 0xf4240

    if-ge p0, v0, :cond_7

    .line 858
    const/4 v0, 0x1

    return v0

    .line 859
    :cond_7
    const v1, 0x2dc6c0

    if-ge p0, v1, :cond_10

    if-lt p0, v0, :cond_10

    .line 861
    const/4 v0, 0x2

    return v0

    .line 862
    :cond_10
    const v0, 0x5b8d80

    if-ge p0, v0, :cond_19

    if-lt p0, v1, :cond_19

    .line 864
    const/4 v0, 0x3

    return v0

    .line 866
    :cond_19
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist getFrequencyRangeGroupFromEutranBand(I)I
    .registers 2
    .param p0, "band"    # I

    .line 526
    packed-switch p0, :pswitch_data_c

    .line 591
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 589
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 551
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 580
    :pswitch_9
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromGeranBand(I)I
    .registers 2
    .param p0, "band"    # I

    .line 460
    packed-switch p0, :pswitch_data_a

    .line 478
    const/4 v0, 0x0

    return v0

    .line 476
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 473
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromNrBand(I)I
    .registers 2
    .param p0, "band"    # I

    .line 601
    sparse-switch p0, :sswitch_data_e

    .line 660
    const/4 v0, 0x0

    return v0

    .line 658
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 652
    :sswitch_7
    const/4 v0, 0x3

    return v0

    .line 616
    :sswitch_9
    const/4 v0, 0x1

    return v0

    .line 646
    :sswitch_b
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x3 -> :sswitch_b
        0x5 -> :sswitch_9
        0x7 -> :sswitch_b
        0x8 -> :sswitch_9
        0xc -> :sswitch_9
        0xe -> :sswitch_9
        0x12 -> :sswitch_9
        0x14 -> :sswitch_9
        0x19 -> :sswitch_b
        0x1a -> :sswitch_9
        0x1c -> :sswitch_9
        0x1d -> :sswitch_9
        0x1e -> :sswitch_b
        0x22 -> :sswitch_b
        0x26 -> :sswitch_b
        0x27 -> :sswitch_b
        0x28 -> :sswitch_b
        0x29 -> :sswitch_b
        0x2e -> :sswitch_7
        0x30 -> :sswitch_7
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x35 -> :sswitch_b
        0x41 -> :sswitch_b
        0x42 -> :sswitch_b
        0x46 -> :sswitch_b
        0x47 -> :sswitch_9
        0x4a -> :sswitch_b
        0x4b -> :sswitch_b
        0x4c -> :sswitch_b
        0x4d -> :sswitch_7
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x50 -> :sswitch_b
        0x51 -> :sswitch_9
        0x52 -> :sswitch_9
        0x53 -> :sswitch_9
        0x54 -> :sswitch_b
        0x56 -> :sswitch_b
        0x59 -> :sswitch_9
        0x5a -> :sswitch_b
        0x5b -> :sswitch_b
        0x5c -> :sswitch_b
        0x5d -> :sswitch_b
        0x5e -> :sswitch_b
        0x5f -> :sswitch_b
        0x60 -> :sswitch_5
        0x101 -> :sswitch_5
        0x102 -> :sswitch_5
        0x104 -> :sswitch_5
        0x105 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist getFrequencyRangeGroupFromUtranBand(I)I
    .registers 2
    .param p0, "band"    # I

    .line 486
    sparse-switch p0, :sswitch_data_c

    .line 517
    const/4 v0, 0x0

    return v0

    .line 515
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 496
    :sswitch_7
    const/4 v0, 0x1

    return v0

    .line 513
    :sswitch_9
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_9
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_9
        0x16 -> :sswitch_5
        0x19 -> :sswitch_9
        0x1a -> :sswitch_7
        0x65 -> :sswitch_9
        0x66 -> :sswitch_9
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x69 -> :sswitch_9
        0x6a -> :sswitch_9
    .end sparse-switch
.end method

.method public static blacklist getOperatingBandForArfcn(I)I
    .registers 3
    .param p0, "arfcn"    # I

    .line 344
    const/16 v0, 0xa

    if-ltz p0, :cond_9

    const/16 v1, 0x7c

    if-gt p0, v1, :cond_9

    .line 345
    return v0

    .line 346
    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_14

    const/16 v1, 0xfb

    if-gt p0, v1, :cond_14

    .line 347
    const/16 v0, 0x8

    return v0

    .line 348
    :cond_14
    const/16 v1, 0x103

    if-lt p0, v1, :cond_1e

    const/16 v1, 0x125

    if-gt p0, v1, :cond_1e

    .line 349
    const/4 v0, 0x3

    return v0

    .line 350
    :cond_1e
    const/16 v1, 0x132

    if-lt p0, v1, :cond_28

    const/16 v1, 0x154

    if-gt p0, v1, :cond_28

    .line 351
    const/4 v0, 0x4

    return v0

    .line 352
    :cond_28
    const/16 v1, 0x1b6

    if-lt p0, v1, :cond_32

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_32

    .line 353
    const/4 v0, 0x6

    return v0

    .line 354
    :cond_32
    const/16 v1, 0x200

    if-lt p0, v1, :cond_3d

    const/16 v1, 0x375

    if-gt p0, v1, :cond_3d

    .line 357
    const/16 v0, 0xc

    return v0

    .line 358
    :cond_3d
    const/16 v1, 0x3ac

    if-lt p0, v1, :cond_48

    const/16 v1, 0x3ce

    if-gt p0, v1, :cond_48

    .line 359
    const/16 v0, 0xe

    return v0

    .line 360
    :cond_48
    const/16 v1, 0x3cf

    if-lt p0, v1, :cond_51

    const/16 v1, 0x3ff

    if-gt p0, v1, :cond_51

    .line 361
    return v0

    .line 363
    :cond_51
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getOperatingBandForEarfcn(I)I
    .registers 3
    .param p0, "earfcn"    # I

    .line 90
    const v0, 0x113f5

    const/4 v1, -0x1

    if-le p0, v0, :cond_7

    .line 91
    return v1

    .line 92
    :cond_7
    const v0, 0x113c4

    if-lt p0, v0, :cond_f

    .line 93
    const/16 v0, 0x58

    return v0

    .line 94
    :cond_f
    const v0, 0x11392

    if-lt p0, v0, :cond_17

    .line 95
    const/16 v0, 0x57

    return v0

    .line 96
    :cond_17
    const v0, 0x112de

    if-lt p0, v0, :cond_1f

    .line 97
    const/16 v0, 0x55

    return v0

    .line 98
    :cond_1f
    const v0, 0x10f59

    if-le p0, v0, :cond_25

    .line 99
    return v1

    .line 100
    :cond_25
    const v0, 0x10dac

    if-lt p0, v0, :cond_2d

    .line 101
    const/16 v0, 0x4a

    return v0

    .line 102
    :cond_2d
    const v0, 0x10d7a

    if-lt p0, v0, :cond_35

    .line 103
    const/16 v0, 0x49

    return v0

    .line 104
    :cond_35
    const v0, 0x10d48

    if-lt p0, v0, :cond_3d

    .line 105
    const/16 v0, 0x48

    return v0

    .line 106
    :cond_3d
    const v0, 0x10bea

    if-lt p0, v0, :cond_45

    .line 107
    const/16 v0, 0x47

    return v0

    .line 108
    :cond_45
    const v0, 0x10af0

    if-lt p0, v0, :cond_4d

    .line 109
    const/16 v0, 0x46

    return v0

    .line 110
    :cond_4d
    const v0, 0x108fb

    if-le p0, v0, :cond_53

    .line 111
    return v1

    .line 112
    :cond_53
    const v0, 0x107d0

    if-lt p0, v0, :cond_5b

    .line 113
    const/16 v0, 0x44

    return v0

    .line 114
    :cond_5b
    const v0, 0x10726

    if-lt p0, v0, :cond_61

    .line 115
    return v1

    .line 116
    :cond_61
    const v0, 0x10384

    if-lt p0, v0, :cond_69

    .line 117
    const/16 v0, 0x42

    return v0

    .line 118
    :cond_69
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_70

    .line 119
    const/16 v0, 0x41

    return v0

    .line 120
    :cond_70
    const v0, 0xeb5e

    if-le p0, v0, :cond_76

    .line 121
    return v1

    .line 122
    :cond_76
    const v0, 0xeaec

    if-lt p0, v0, :cond_7e

    .line 123
    const/16 v0, 0x35

    return v0

    .line 124
    :cond_7e
    const v0, 0xe704

    if-lt p0, v0, :cond_86

    .line 125
    const/16 v0, 0x34

    return v0

    .line 126
    :cond_86
    const v0, 0xe6d2

    if-lt p0, v0, :cond_8e

    .line 127
    const/16 v0, 0x33

    return v0

    .line 128
    :cond_8e
    const v0, 0xe380

    if-lt p0, v0, :cond_96

    .line 129
    const/16 v0, 0x32

    return v0

    .line 130
    :cond_96
    const v0, 0xdda4

    if-lt p0, v0, :cond_9e

    .line 131
    const/16 v0, 0x31

    return v0

    .line 132
    :cond_9e
    const v0, 0xd7c8

    if-lt p0, v0, :cond_a6

    .line 133
    const/16 v0, 0x30

    return v0

    .line 134
    :cond_a6
    const v0, 0xd50c

    if-lt p0, v0, :cond_ae

    .line 135
    const/16 v0, 0x2f

    return v0

    .line 136
    :cond_ae
    const v0, 0xb6c6

    if-lt p0, v0, :cond_b6

    .line 137
    const/16 v0, 0x2e

    return v0

    .line 138
    :cond_b6
    const v0, 0xb5fe

    if-lt p0, v0, :cond_be

    .line 139
    const/16 v0, 0x2d

    return v0

    .line 140
    :cond_be
    const v0, 0xb216

    if-lt p0, v0, :cond_c6

    .line 141
    const/16 v0, 0x2c

    return v0

    .line 142
    :cond_c6
    const v0, 0xaa46

    if-lt p0, v0, :cond_ce

    .line 143
    const/16 v0, 0x2b

    return v0

    .line 144
    :cond_ce
    const v0, 0xa276

    if-lt p0, v0, :cond_d6

    .line 145
    const/16 v0, 0x2a

    return v0

    .line 146
    :cond_d6
    const v0, 0x9ae2

    if-lt p0, v0, :cond_de

    .line 147
    const/16 v0, 0x29

    return v0

    .line 148
    :cond_de
    const v0, 0x96fa

    if-lt p0, v0, :cond_e6

    .line 149
    const/16 v0, 0x28

    return v0

    .line 150
    :cond_e6
    const v0, 0x956a

    if-lt p0, v0, :cond_ee

    .line 151
    const/16 v0, 0x27

    return v0

    .line 152
    :cond_ee
    const v0, 0x9376

    if-lt p0, v0, :cond_f6

    .line 153
    const/16 v0, 0x26

    return v0

    .line 154
    :cond_f6
    const v0, 0x92ae

    if-lt p0, v0, :cond_fe

    .line 155
    const/16 v0, 0x25

    return v0

    .line 156
    :cond_fe
    const v0, 0x9056

    if-lt p0, v0, :cond_106

    .line 157
    const/16 v0, 0x24

    return v0

    .line 158
    :cond_106
    const v0, 0x8dfe

    if-lt p0, v0, :cond_10e

    .line 159
    const/16 v0, 0x23

    return v0

    .line 160
    :cond_10e
    const v0, 0x8d68

    if-lt p0, v0, :cond_116

    .line 161
    const/16 v0, 0x22

    return v0

    .line 162
    :cond_116
    const v0, 0x8ca0

    if-lt p0, v0, :cond_11e

    .line 163
    const/16 v0, 0x21

    return v0

    .line 164
    :cond_11e
    const/16 v0, 0x2877

    if-le p0, v0, :cond_123

    .line 165
    return v1

    .line 166
    :cond_123
    const/16 v0, 0x26c0

    if-lt p0, v0, :cond_128

    .line 167
    return v1

    .line 168
    :cond_128
    const/16 v0, 0x268e

    if-lt p0, v0, :cond_12f

    .line 169
    const/16 v0, 0x1f

    return v0

    .line 170
    :cond_12f
    const/16 v0, 0x262a

    if-lt p0, v0, :cond_136

    .line 171
    const/16 v0, 0x1e

    return v0

    .line 172
    :cond_136
    const/16 v0, 0x25bc

    if-lt p0, v0, :cond_13b

    .line 173
    return v1

    .line 174
    :cond_13b
    const/16 v0, 0x23fa

    if-lt p0, v0, :cond_142

    .line 175
    const/16 v0, 0x1c

    return v0

    .line 176
    :cond_142
    const/16 v0, 0x2350

    if-lt p0, v0, :cond_149

    .line 177
    const/16 v0, 0x1b

    return v0

    .line 178
    :cond_149
    const/16 v0, 0x21f2

    if-lt p0, v0, :cond_150

    .line 179
    const/16 v0, 0x1a

    return v0

    .line 180
    :cond_150
    const/16 v0, 0x1f68

    if-lt p0, v0, :cond_157

    .line 181
    const/16 v0, 0x19

    return v0

    .line 182
    :cond_157
    const/16 v0, 0x1e14

    if-lt p0, v0, :cond_15e

    .line 183
    const/16 v0, 0x18

    return v0

    .line 184
    :cond_15e
    const/16 v0, 0x1d4c

    if-lt p0, v0, :cond_165

    .line 185
    const/16 v0, 0x17

    return v0

    .line 186
    :cond_165
    const/16 v0, 0x19c8

    if-lt p0, v0, :cond_16c

    .line 187
    const/16 v0, 0x16

    return v0

    .line 188
    :cond_16c
    const/16 v0, 0x1932

    if-lt p0, v0, :cond_173

    .line 189
    const/16 v0, 0x15

    return v0

    .line 190
    :cond_173
    const/16 v0, 0x1806

    if-lt p0, v0, :cond_17a

    .line 191
    const/16 v0, 0x14

    return v0

    .line 192
    :cond_17a
    const/16 v0, 0x1770

    if-lt p0, v0, :cond_181

    .line 193
    const/16 v0, 0x13

    return v0

    .line 194
    :cond_181
    const/16 v0, 0x16da

    if-lt p0, v0, :cond_188

    .line 195
    const/16 v0, 0x12

    return v0

    .line 196
    :cond_188
    const/16 v0, 0x1662

    if-lt p0, v0, :cond_18f

    .line 197
    const/16 v0, 0x11

    return v0

    .line 198
    :cond_18f
    const/16 v0, 0x1503

    if-le p0, v0, :cond_194

    .line 199
    return v1

    .line 200
    :cond_194
    const/16 v0, 0x14a0

    if-lt p0, v0, :cond_19b

    .line 201
    const/16 v0, 0xe

    return v0

    .line 202
    :cond_19b
    const/16 v0, 0x143c

    if-lt p0, v0, :cond_1a2

    .line 203
    const/16 v0, 0xd

    return v0

    .line 204
    :cond_1a2
    const/16 v0, 0x1392

    if-lt p0, v0, :cond_1a9

    .line 205
    const/16 v0, 0xc

    return v0

    .line 206
    :cond_1a9
    const/16 v0, 0x128e

    if-lt p0, v0, :cond_1b0

    .line 207
    const/16 v0, 0xb

    return v0

    .line 208
    :cond_1b0
    const/16 v0, 0x1036

    if-lt p0, v0, :cond_1b7

    .line 209
    const/16 v0, 0xa

    return v0

    .line 210
    :cond_1b7
    const/16 v0, 0xed8

    if-lt p0, v0, :cond_1be

    .line 211
    const/16 v0, 0x9

    return v0

    .line 212
    :cond_1be
    const/16 v0, 0xd7a

    if-lt p0, v0, :cond_1c5

    .line 213
    const/16 v0, 0x8

    return v0

    .line 214
    :cond_1c5
    const/16 v0, 0xabe

    if-lt p0, v0, :cond_1cb

    .line 215
    const/4 v0, 0x7

    return v0

    .line 216
    :cond_1cb
    const/16 v0, 0xa5a

    if-lt p0, v0, :cond_1d1

    .line 217
    const/4 v0, 0x6

    return v0

    .line 218
    :cond_1d1
    const/16 v0, 0x960

    if-lt p0, v0, :cond_1d7

    .line 219
    const/4 v0, 0x5

    return v0

    .line 220
    :cond_1d7
    const/16 v0, 0x79e

    if-lt p0, v0, :cond_1dd

    .line 221
    const/4 v0, 0x4

    return v0

    .line 222
    :cond_1dd
    const/16 v0, 0x4b0

    if-lt p0, v0, :cond_1e3

    .line 223
    const/4 v0, 0x3

    return v0

    .line 224
    :cond_1e3
    const/16 v0, 0x258

    if-lt p0, v0, :cond_1e9

    .line 225
    const/4 v0, 0x2

    return v0

    .line 226
    :cond_1e9
    if-ltz p0, :cond_1ed

    .line 227
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_1ed
    return v1
.end method

.method public static blacklist getOperatingBandForNrarfcn(I)I
    .registers 10
    .param p0, "nrarfcn"    # I

    .line 243
    const v0, 0x67070

    if-lt p0, v0, :cond_c

    const v1, 0x69f50

    if-gt p0, v1, :cond_c

    .line 244
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_c
    const v1, 0x5e3d0

    if-lt p0, v1, :cond_18

    const v2, 0x612b0

    if-gt p0, v2, :cond_18

    .line 246
    const/4 v0, 0x2

    return v0

    .line 247
    :cond_18
    const v2, 0x58228

    const v3, 0x5bcc0

    if-lt p0, v2, :cond_24

    if-gt p0, v3, :cond_24

    .line 248
    const/4 v0, 0x3

    return v0

    .line 249
    :cond_24
    const v2, 0x2a6e8

    const v4, 0x2ba70

    if-lt p0, v2, :cond_30

    if-gt p0, v4, :cond_30

    .line 250
    const/4 v0, 0x5

    return v0

    .line 251
    :cond_30
    const v2, 0x83590

    const v5, 0x7fee0

    if-lt p0, v5, :cond_3c

    if-gt p0, v2, :cond_3c

    .line 252
    const/4 v0, 0x7

    return v0

    .line 253
    :cond_3c
    const v6, 0x2d2a8

    if-lt p0, v6, :cond_49

    const v6, 0x2ee00

    if-gt p0, v6, :cond_49

    .line 254
    const/16 v0, 0x8

    return v0

    .line 255
    :cond_49
    const v6, 0x23988

    if-lt p0, v6, :cond_56

    const v6, 0x246d0

    if-gt p0, v6, :cond_56

    .line 256
    const/16 v0, 0xc

    return v0

    .line 257
    :cond_56
    const v6, 0x25030

    if-lt p0, v6, :cond_63

    const v7, 0x25800

    if-gt p0, v7, :cond_63

    .line 258
    const/16 v0, 0xe

    return v0

    .line 259
    :cond_63
    const v7, 0x29fe0

    if-lt p0, v7, :cond_70

    const v7, 0x2ab98

    if-gt p0, v7, :cond_70

    .line 260
    const/16 v0, 0x12

    return v0

    .line 261
    :cond_70
    const v7, 0x269f8

    if-lt p0, v7, :cond_7d

    const v7, 0x28168

    if-gt p0, v7, :cond_7d

    .line 262
    const/16 v0, 0x14

    return v0

    .line 263
    :cond_7d
    const v7, 0x61698

    if-lt p0, v1, :cond_87

    if-gt p0, v7, :cond_87

    .line 264
    const/16 v0, 0x19

    return v0

    .line 265
    :cond_87
    const v1, 0x29f18

    if-lt p0, v1, :cond_91

    if-gt p0, v4, :cond_91

    .line 266
    const/16 v0, 0x1a

    return v0

    .line 267
    :cond_91
    if-lt p0, v6, :cond_9b

    const v1, 0x27358

    if-gt p0, v1, :cond_9b

    .line 268
    const/16 v0, 0x1c

    return v0

    .line 269
    :cond_9b
    const v1, 0x23028

    if-lt p0, v1, :cond_a8

    const v1, 0x238c0

    if-gt p0, v1, :cond_a8

    .line 270
    const/16 v0, 0x1d

    return v0

    .line 271
    :cond_a8
    const v1, 0x72bf0

    if-lt p0, v1, :cond_b5

    const v1, 0x733c0

    if-gt p0, v1, :cond_b5

    .line 272
    const/16 v0, 0x1e

    return v0

    .line 273
    :cond_b5
    const v1, 0x62250

    if-lt p0, v1, :cond_c2

    const v1, 0x62e08

    if-gt p0, v1, :cond_c2

    .line 274
    const/16 v0, 0x22

    return v0

    .line 275
    :cond_c2
    const v1, 0x7d7d0

    if-lt p0, v1, :cond_cc

    if-gt p0, v5, :cond_cc

    .line 276
    const/16 v0, 0x26

    return v0

    .line 277
    :cond_cc
    if-lt p0, v3, :cond_d6

    const v1, 0x5dc00

    if-gt p0, v1, :cond_d6

    .line 278
    const/16 v0, 0x27

    return v0

    .line 279
    :cond_d6
    const v1, 0x704e0

    if-lt p0, v1, :cond_e3

    const v1, 0x75300

    if-gt p0, v1, :cond_e3

    .line 280
    const/16 v0, 0x28

    return v0

    .line 281
    :cond_e3
    const v1, 0x79e00

    if-lt p0, v1, :cond_f0

    const v3, 0x8358f

    if-gt p0, v3, :cond_f0

    .line 282
    const/16 v0, 0x29

    return v0

    .line 283
    :cond_f0
    const v3, 0xb57a6

    const v4, 0xc2178

    if-lt p0, v3, :cond_fd

    if-gt p0, v4, :cond_fd

    .line 284
    const/16 v0, 0x2e

    return v0

    .line 285
    :cond_fd
    const v3, 0x9b6fb

    if-lt p0, v3, :cond_10a

    const v3, 0x9de0a

    if-gt p0, v3, :cond_10a

    .line 286
    const/16 v0, 0x30

    return v0

    .line 287
    :cond_10a
    const v3, 0x4a128

    const v5, 0x45ec0

    if-lt p0, v5, :cond_117

    if-gt p0, v3, :cond_117

    .line 288
    const/16 v0, 0x32

    return v0

    .line 289
    :cond_117
    const v6, 0x45ad8    # 3.9993E-40f

    if-lt p0, v6, :cond_121

    if-gt p0, v5, :cond_121

    .line 290
    const/16 v0, 0x33

    return v0

    .line 291
    :cond_121
    const v8, 0x7943c

    if-lt p0, v8, :cond_12e

    const v8, 0x79d38

    if-gt p0, v8, :cond_12e

    .line 292
    const/16 v0, 0x35

    return v0

    .line 293
    :cond_12e
    if-lt p0, v0, :cond_138

    const v0, 0x6b6c0

    if-gt p0, v0, :cond_138

    .line 294
    const/16 v0, 0x41

    return v0

    .line 295
    :cond_138
    if-lt p0, v7, :cond_142

    const v0, 0x62a20

    if-gt p0, v0, :cond_142

    .line 296
    const/16 v0, 0x46

    return v0

    .line 297
    :cond_142
    const v0, 0x1e208

    if-lt p0, v0, :cond_14f

    const v0, 0x1fd60

    if-gt p0, v0, :cond_14f

    .line 298
    const/16 v0, 0x47

    return v0

    .line 299
    :cond_14f
    const v0, 0x48058

    if-lt p0, v0, :cond_15c

    const v0, 0x4a1f0

    if-gt p0, v0, :cond_15c

    .line 300
    const/16 v0, 0x4a

    return v0

    .line 301
    :cond_15c
    if-lt p0, v5, :cond_163

    if-gt p0, v3, :cond_163

    .line 302
    const/16 v0, 0x4b

    return v0

    .line 303
    :cond_163
    if-lt p0, v6, :cond_16a

    if-gt p0, v5, :cond_16a

    .line 304
    const/16 v0, 0x4c

    return v0

    .line 305
    :cond_16a
    const v0, 0x975e0

    if-lt p0, v0, :cond_177

    const v7, 0xa6040

    if-gt p0, v7, :cond_177

    .line 306
    const/16 v0, 0x4d

    return v0

    .line 307
    :cond_177
    if-lt p0, v0, :cond_181

    const v0, 0x9f815

    if-gt p0, v0, :cond_181

    .line 308
    const/16 v0, 0x4e

    return v0

    .line 309
    :cond_181
    const v0, 0xa9456

    if-lt p0, v0, :cond_18e

    const v0, 0xb3095

    if-gt p0, v0, :cond_18e

    .line 310
    const/16 v0, 0x4f

    return v0

    .line 311
    :cond_18e
    if-lt p0, v1, :cond_195

    if-gt p0, v2, :cond_195

    .line 312
    const/16 v0, 0x5a

    return v0

    .line 313
    :cond_195
    if-lt p0, v6, :cond_19c

    if-gt p0, v5, :cond_19c

    .line 314
    const/16 v0, 0x5b

    return v0

    .line 315
    :cond_19c
    if-lt p0, v5, :cond_1a3

    if-gt p0, v3, :cond_1a3

    .line 316
    const/16 v0, 0x5c

    return v0

    .line 317
    :cond_1a3
    if-lt p0, v6, :cond_1aa

    if-gt p0, v5, :cond_1aa

    .line 318
    const/16 v0, 0x5d

    return v0

    .line 319
    :cond_1aa
    if-lt p0, v5, :cond_1b1

    if-gt p0, v3, :cond_1b1

    .line 320
    const/16 v0, 0x5e

    return v0

    .line 321
    :cond_1b1
    if-lt p0, v4, :cond_1bb

    const v0, 0xd59f8

    if-gt p0, v0, :cond_1bb

    .line 322
    const/16 v0, 0x60

    return v0

    .line 323
    :cond_1bb
    const v0, 0x1f5816

    if-lt p0, v0, :cond_1c8

    const v0, 0x201b65

    if-gt p0, v0, :cond_1c8

    .line 324
    const/16 v0, 0x101

    return v0

    .line 325
    :cond_1c8
    const v0, 0x1ec59b

    if-lt p0, v0, :cond_1d5

    const v0, 0x1f9930

    if-gt p0, v0, :cond_1d5

    .line 326
    const/16 v0, 0x102

    return v0

    .line 327
    :cond_1d5
    const v0, 0x2203ae

    if-lt p0, v0, :cond_1e2

    const v0, 0x22c6fd

    if-gt p0, v0, :cond_1e2

    .line 328
    const/16 v0, 0x104

    return v0

    .line 329
    :cond_1e2
    const v0, 0x1f9931

    if-lt p0, v0, :cond_1ef

    const v0, 0x1fd087

    if-gt p0, v0, :cond_1ef

    .line 330
    const/16 v0, 0x105

    return v0

    .line 332
    :cond_1ef
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getOperatingBandForUarfcn(I)I
    .registers 22
    .param p0, "uarfcn"    # I

    .line 376
    move/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [I

    fill-array-data v2, :array_190

    .line 377
    .local v2, "addlBand2":[I
    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_1ac

    .line 378
    .local v4, "addlBand4":[I
    const/4 v5, 0x6

    new-array v6, v5, [I

    fill-array-data v6, :array_1c2

    .line 379
    .local v6, "addlBand5":[I
    const/16 v7, 0x40d

    const/16 v8, 0x426

    filled-new-array {v7, v8}, [I

    move-result-object v7

    .line 380
    .local v7, "addlBand6":[I
    const/16 v8, 0xe

    new-array v9, v8, [I

    fill-array-data v9, :array_1d2

    .line 383
    .local v9, "addlBand7":[I
    new-array v10, v1, [I

    fill-array-data v10, :array_1f2

    .line 385
    .local v10, "addlBand10":[I
    const/16 v11, 0xf93

    const/16 v12, 0xf98

    const/16 v13, 0xf5c

    const/16 v14, 0xf75

    const/16 v15, 0xf7a

    filled-new-array {v13, v14, v15, v11, v12}, [I

    move-result-object v11

    .line 386
    .local v11, "addlBand12":[I
    const/16 v12, 0xfe3

    const/16 v13, 0xffc

    filled-new-array {v12, v13}, [I

    move-result-object v12

    .line 387
    .local v12, "addlBand13":[I
    const/16 v13, 0x1047

    const/16 v14, 0x1060

    filled-new-array {v13, v14}, [I

    move-result-object v13

    .line 388
    .local v13, "addlBand14":[I
    const/16 v14, 0x32c

    const/16 v15, 0x345

    move/from16 v16, v1

    const/16 v1, 0x313

    filled-new-array {v1, v14, v15}, [I

    move-result-object v1

    .line 389
    .local v1, "addlBand19":[I
    const/16 v14, 0xd

    new-array v15, v14, [I

    fill-array-data v15, :array_20e

    .line 391
    .local v15, "addlBand25":[I
    move/from16 v17, v3

    const/16 v3, 0xb

    move/from16 v18, v5

    new-array v5, v3, [I

    fill-array-data v5, :array_22c

    .line 393
    .local v5, "addlBand26":[I
    move/from16 v19, v3

    const/16 v3, 0x2942

    if-lt v0, v3, :cond_72

    const/16 v3, 0x2a56

    if-gt v0, v3, :cond_72

    .line 394
    const/4 v3, 0x1

    return v3

    .line 395
    :cond_72
    const/16 v3, 0x25be

    if-lt v0, v3, :cond_7a

    const/16 v3, 0x26d2

    if-le v0, v3, :cond_80

    .line 396
    :cond_7a
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_82

    .line 397
    :cond_80
    const/4 v3, 0x2

    return v3

    .line 398
    :cond_82
    const/16 v3, 0x48a

    if-lt v0, v3, :cond_8c

    const/16 v3, 0x5e9

    if-gt v0, v3, :cond_8c

    .line 399
    const/4 v3, 0x3

    return v3

    .line 400
    :cond_8c
    const/16 v3, 0x601

    if-lt v0, v3, :cond_94

    const/16 v3, 0x6ca

    if-le v0, v3, :cond_9a

    .line 401
    :cond_94
    invoke-static {v4, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_9c

    .line 402
    :cond_9a
    const/4 v3, 0x4

    return v3

    .line 403
    :cond_9c
    const/16 v3, 0x1123

    const/16 v20, 0x5

    if-lt v0, v3, :cond_b9

    const/16 v3, 0x113d

    if-gt v0, v3, :cond_b9

    .line 405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "country":Ljava/lang/String;
    const-string/jumbo v8, "jp"

    invoke-virtual {v8, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b8

    .line 407
    return v18

    .line 409
    :cond_b8
    return v20

    .line 411
    .end local v3    # "country":Ljava/lang/String;
    :cond_b9
    const/16 v3, 0x1105

    if-lt v0, v3, :cond_c1

    const/16 v3, 0x116a

    if-le v0, v3, :cond_c7

    .line 412
    :cond_c1
    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_c8

    .line 413
    :cond_c7
    return v20

    .line 414
    :cond_c8
    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_cf

    .line 415
    return v18

    .line 416
    :cond_cf
    const/16 v3, 0x8bd

    if-lt v0, v3, :cond_d7

    const/16 v3, 0xa03

    if-le v0, v3, :cond_dd

    .line 417
    :cond_d7
    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_df

    .line 418
    :cond_dd
    const/4 v3, 0x7

    return v3

    .line 419
    :cond_df
    const/16 v3, 0xb79

    if-lt v0, v3, :cond_ea

    const/16 v3, 0xc10

    if-gt v0, v3, :cond_ea

    .line 420
    const/16 v3, 0x8

    return v3

    .line 421
    :cond_ea
    const/16 v3, 0x2415

    if-lt v0, v3, :cond_f3

    const/16 v3, 0x24ab

    if-gt v0, v3, :cond_f3

    .line 422
    return v17

    .line 423
    :cond_f3
    const/16 v3, 0xc28

    if-lt v0, v3, :cond_fb

    const/16 v3, 0xd3c

    if-le v0, v3, :cond_101

    .line 424
    :cond_fb
    invoke-static {v10, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_104

    .line 425
    :cond_101
    const/16 v3, 0xa

    return v3

    .line 426
    :cond_104
    const/16 v3, 0xe80

    if-lt v0, v3, :cond_10d

    const/16 v3, 0xecb

    if-gt v0, v3, :cond_10d

    .line 427
    return v19

    .line 428
    :cond_10d
    const/16 v3, 0xf02

    if-lt v0, v3, :cond_115

    const/16 v3, 0xf3f

    if-le v0, v3, :cond_11b

    .line 429
    :cond_115
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_11c

    .line 430
    :cond_11b
    return v16

    .line 431
    :cond_11c
    const/16 v3, 0xfb1

    if-lt v0, v3, :cond_124

    const/16 v3, 0xfcb

    if-le v0, v3, :cond_12a

    .line 432
    :cond_124
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_12b

    .line 433
    :cond_12a
    return v14

    .line 434
    :cond_12b
    const/16 v3, 0x1015

    if-lt v0, v3, :cond_133

    const/16 v3, 0x102f

    if-le v0, v3, :cond_139

    .line 435
    :cond_133
    invoke-static {v13, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_13a

    .line 436
    :cond_139
    return v8

    .line 437
    :cond_13a
    const/16 v3, 0x2c8

    if-lt v0, v3, :cond_142

    const/16 v3, 0x2fb

    if-le v0, v3, :cond_148

    .line 438
    :cond_142
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_14b

    .line 439
    :cond_148
    const/16 v3, 0x13

    return v3

    .line 440
    :cond_14b
    const/16 v3, 0x11a0

    if-lt v0, v3, :cond_156

    const/16 v3, 0x121e

    if-gt v0, v3, :cond_156

    .line 441
    const/16 v3, 0x14

    return v3

    .line 442
    :cond_156
    const/16 v3, 0x35e

    if-lt v0, v3, :cond_161

    const/16 v3, 0x390

    if-gt v0, v3, :cond_161

    .line 443
    const/16 v3, 0x15

    return v3

    .line 444
    :cond_161
    const/16 v3, 0x1236

    if-lt v0, v3, :cond_16c

    const/16 v3, 0x13ae

    if-gt v0, v3, :cond_16c

    .line 445
    const/16 v3, 0x16

    return v3

    .line 446
    :cond_16c
    const/16 v3, 0x13f8

    if-lt v0, v3, :cond_174

    const/16 v3, 0x1525

    if-le v0, v3, :cond_17a

    .line 447
    :cond_174
    invoke-static {v15, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_17d

    .line 448
    :cond_17a
    const/16 v3, 0x19

    return v3

    .line 449
    :cond_17d
    const/16 v3, 0x1682

    if-lt v0, v3, :cond_185

    const/16 v3, 0x1719

    if-le v0, v3, :cond_18b

    .line 450
    :cond_185
    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_18e

    .line 451
    :cond_18b
    const/16 v3, 0x1a

    return v3

    .line 453
    :cond_18e
    const/4 v3, -0x1

    return v3

    :array_190
    .array-data 4
        0x19c
        0x1b5
        0x1ce
        0x1e7
        0x200
        0x219
        0x232
        0x24b
        0x264
        0x27d
        0x296
        0x2af
    .end array-data

    :array_1ac
    .array-data 4
        0x75f
        0x778
        0x791
        0x7aa
        0x7c3
        0x7dc
        0x7f5
        0x80e
        0x827
    .end array-data

    :array_1c2
    .array-data 4
        0x3ef
        0x3f4
        0x408
        0x40d
        0x426
        0x43f
    .end array-data

    :array_1d2
    .array-data 4
        0xa1b
        0xa34
        0xa4d
        0xa66
        0xa7f
        0xa98
        0xab1
        0xaca
        0xae3
        0xafc
        0xb15
        0xb2e
        0xb47
        0xb60
    .end array-data

    :array_1f2
    .array-data 4
        0xd54
        0xd6d
        0xd86
        0xd9f
        0xdb8
        0xdd1
        0xdea
        0xe03
        0xe1c
        0xe35
        0xe4e
        0xe67
    .end array-data

    :array_20e
    .array-data 4
        0x1894
        0x18ad
        0x18c6
        0x18df
        0x18f8
        0x1911
        0x192a
        0x1943
        0x195c
        0x1975
        0x198e
        0x19a7
        0x19c0
    .end array-data

    :array_22c
    .array-data 4
        0x1731
        0x174a
        0x1763
        0x1768
        0x177c
        0x1781
        0x1795
        0x179a
        0x17ae
        0x17b3
        0x17c7
    .end array-data
.end method

.method private static blacklist isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z
    .registers 6
    .param p0, "earfcn"    # I
    .param p1, "earfcnFrequency"    # Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;
    .param p2, "isUplink"    # Z

    .line 727
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    .line 728
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    if-lt p0, v2, :cond_d

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkRange:I

    if-gt p0, v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 730
    :cond_f
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    if-lt p0, v2, :cond_18

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkRange:I

    if-gt p0, v2, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0
.end method

.method private static blacklist isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z
    .registers 6
    .param p0, "uarfcn"    # I
    .param p1, "uarfcnFrequency"    # Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    .param p2, "isUplink"    # Z

    .line 795
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_e

    .line 796
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeFirst:I

    if-lt p0, v2, :cond_d

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeLast:I

    if-gt p0, v2, :cond_d

    move v0, v1

    :cond_d
    return v0

    .line 799
    :cond_e
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-eqz v2, :cond_20

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-eqz v2, :cond_20

    .line 800
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-lt p0, v2, :cond_1f

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-gt p0, v2, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    .line 804
    :cond_20
    return v1
.end method
