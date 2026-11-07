.class final Landroid/icu/impl/UCharacterName$AlgorithmName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlgorithmName"
.end annotation


# static fields
.field static final blacklist TYPE_0_:I = 0x0

.field static final blacklist TYPE_1_:I = 0x1


# instance fields
.field private blacklist m_factor_:[C

.field private blacklist m_factorstring_:[B

.field private blacklist m_prefix_:Ljava/lang/String;

.field private blacklist m_rangeend_:I

.field private blacklist m_rangestart_:I

.field private blacklist m_type_:B

.field private blacklist m_utilIntBuffer_:[I

.field private blacklist m_utilStringBuffer_:Ljava/lang/StringBuffer;

.field private blacklist m_variant_:B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetm_rangeend_(Landroid/icu/impl/UCharacterName$AlgorithmName;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetm_rangestart_(Landroid/icu/impl/UCharacterName$AlgorithmName;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    return p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    .line 867
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 603
    return-void
.end method

.method private blacklist compareFactorString([IILjava/lang/String;I)Z
    .registers 13
    .param p1, "index"    # [I
    .param p2, "length"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "offset"    # I

    .line 919
    iget-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v0, v0

    .line 920
    .local v0, "size":I
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    if-eq p2, v0, :cond_9

    goto :goto_3d

    .line 923
    :cond_9
    const/4 v2, 0x0

    .line 924
    .local v2, "count":I
    move v3, p4

    .line 926
    .local v3, "strcount":I
    add-int/lit8 v0, v0, -0x1

    .line 927
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-gt v4, v0, :cond_34

    .line 929
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v5, v5, v4

    .line 930
    .local v5, "factor":I
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v7, p1, v4

    invoke-static {v6, v2, v7}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v2

    .line 932
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {p3, v6, v3, v2}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v3

    .line 934
    if-gez v3, :cond_25

    .line 935
    return v1

    .line 938
    :cond_25
    if-eq v4, v0, :cond_31

    .line 939
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v7, p1, v4

    sub-int v7, v5, v7

    invoke-static {v6, v2, v7}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v2

    .line 927
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 943
    .end local v4    # "i":I
    .end local v5    # "factor":I
    :cond_34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_3b

    .line 944
    return v1

    .line 946
    :cond_3b
    const/4 v1, 0x1

    return v1

    .line 921
    .end local v2    # "count":I
    .end local v3    # "strcount":I
    :cond_3d
    :goto_3d
    return v1
.end method

.method private blacklist getFactorString([II)Ljava/lang/String;
    .registers 10
    .param p1, "index"    # [I
    .param p2, "length"    # I

    .line 880
    iget-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    array-length v0, v0

    .line 881
    .local v0, "size":I
    if-eqz p1, :cond_48

    if-eq p2, v0, :cond_8

    goto :goto_48

    .line 885
    :cond_8
    iget-object v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 886
    :try_start_b
    iget-object v2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 887
    const/4 v2, 0x0

    .line 889
    .local v2, "count":I
    add-int/lit8 v0, v0, -0x1

    .line 890
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-gt v3, v0, :cond_3d

    .line 891
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v4, v4, v3

    .line 892
    .local v4, "factor":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v3

    invoke-static {v5, v2, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v5

    .line 894
    .end local v2    # "count":I
    .local v5, "count":I
    iget-object v2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    invoke-static {v2, v6, v5}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v2

    .line 897
    .end local v5    # "count":I
    .restart local v2    # "count":I
    if-eq v3, v0, :cond_3a

    .line 898
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    aget v6, p1, v3

    sub-int v6, v4, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v2, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    move-result v5

    move v2, v5

    .line 890
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 903
    .end local v3    # "i":I
    .end local v4    # "factor":I
    :cond_3d
    iget-object v3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 904
    .end local v2    # "count":I
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_b .. :try_end_47} :catchall_45

    throw v2

    .line 882
    :cond_48
    :goto_48
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method blacklist add([II)I
    .registers 11
    .param p1, "set"    # [I
    .param p2, "maxlength"    # I

    .line 803
    iget-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/icu/impl/UCharacterName;->-$$Nest$smadd([ILjava/lang/String;)I

    move-result v0

    .line 804
    .local v0, "length":I
    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v1, :pswitch_data_54

    goto :goto_4f

    .line 818
    :pswitch_c
    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-lez v1, :cond_4f

    .line 820
    const/4 v2, 0x0

    .line 821
    .local v2, "maxfactorlength":I
    const/4 v3, 0x0

    .line 822
    .local v3, "count":I
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v4, v4, v1

    .local v4, "factor":I
    :goto_18
    if-lez v4, :cond_47

    .line 823
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v5

    .line 824
    :try_start_1d
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 825
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    .line 826
    invoke-static {v6, v7, v3}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    move-result v6

    move v3, v6

    .line 829
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p1, v6}, Landroid/icu/impl/UCharacterName;->-$$Nest$smadd([ILjava/lang/StringBuffer;)I

    .line 830
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v2, :cond_40

    .line 833
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    .line 834
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move v2, v6

    .line 836
    :cond_40
    monitor-exit v5

    .line 822
    add-int/lit8 v4, v4, -0x1

    goto :goto_18

    .line 836
    :catchall_44
    move-exception v6

    monitor-exit v5
    :try_end_46
    .catchall {:try_start_1d .. :try_end_46} :catchall_44

    throw v6

    .line 838
    .end local v4    # "factor":I
    :cond_47
    add-int/2addr v0, v2

    .line 818
    .end local v2    # "maxfactorlength":I
    .end local v3    # "count":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 808
    .end local v1    # "i":I
    :pswitch_4b
    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/2addr v0, v1

    .line 812
    nop

    .line 842
    :cond_4f
    :goto_4f
    if-le v0, p2, :cond_52

    .line 843
    return v0

    .line 845
    :cond_52
    return p2

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_c
    .end packed-switch
.end method

.method blacklist appendName(ILjava/lang/StringBuffer;)V
    .registers 9
    .param p1, "ch"    # I
    .param p2, "str"    # Ljava/lang/StringBuffer;

    .line 690
    iget-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    iget-byte v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 699
    :pswitch_b
    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v0, p1, v0

    .line 700
    .local v0, "offset":I
    iget-object v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 706
    .local v1, "indexes":[I
    iget-object v2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v2

    .line 707
    :try_start_14
    iget-byte v3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_18
    if-lez v3, :cond_2a

    .line 709
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    .line 710
    .local v4, "factor":I
    rem-int v5, v0, v4

    aput v5, v1, v3

    .line 711
    div-int v5, v0, v4

    move v0, v5

    .line 707
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 717
    .end local v3    # "i":I
    .end local v4    # "factor":I
    :cond_2a
    const/4 v3, 0x0

    aput v0, v1, v3

    .line 720
    iget-byte v3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v1, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getFactorString([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    monitor-exit v2

    goto :goto_46

    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_38

    throw v3

    .line 695
    .end local v0    # "offset":I
    .end local v1    # "indexes":[I
    :pswitch_3b
    int-to-long v0, p1

    iget-byte v2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    nop

    .line 724
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_b
    .end packed-switch
.end method

.method blacklist contains(I)Z
    .registers 3
    .param p1, "ch"    # I

    .line 678
    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist getChar(Ljava/lang/String;)I
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .line 732
    iget-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 733
    .local v0, "prefixlen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v1, v0, :cond_70

    iget-object v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    .line 734
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_70

    .line 738
    :cond_1b
    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    packed-switch v1, :pswitch_data_72

    goto :goto_6f

    .line 758
    :pswitch_21
    iget v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    .local v1, "ch":I
    :goto_23
    iget v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    if-gt v1, v4, :cond_6f

    .line 760
    iget v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    sub-int v4, v1, v4

    .line 761
    .local v4, "offset":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    .line 767
    .local v5, "indexes":[I
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    monitor-enter v6

    .line 768
    :try_start_30
    iget-byte v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_34
    if-lez v7, :cond_46

    .line 770
    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    aget-char v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    .line 771
    .local v8, "factor":I
    rem-int v9, v4, v8

    aput v9, v5, v7

    .line 772
    div-int v9, v4, v8

    move v4, v9

    .line 768
    add-int/lit8 v7, v7, -0x1

    goto :goto_34

    .line 778
    .end local v7    # "i":I
    .end local v8    # "factor":I
    :cond_46
    aput v4, v5, v3

    .line 781
    iget-byte v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    invoke-direct {p0, v5, v7, p1, v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->compareFactorString([IILjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 783
    monitor-exit v6

    return v1

    .line 785
    :cond_52
    monitor-exit v6

    .line 758
    .end local v4    # "offset":I
    .end local v5    # "indexes":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 785
    .restart local v4    # "offset":I
    .restart local v5    # "indexes":[I
    :catchall_56
    move-exception v2

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_56

    throw v2

    .line 743
    .end local v1    # "ch":I
    .end local v4    # "offset":I
    .end local v5    # "indexes":[I
    :pswitch_59
    :try_start_59
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 746
    .local v1, "result":I
    iget v3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    if-gt v3, v1, :cond_6c

    iget v3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_69} :catch_6d

    if-gt v1, v3, :cond_6c

    .line 747
    return v1

    .line 753
    .end local v1    # "result":I
    :cond_6c
    goto :goto_6f

    .line 750
    :catch_6d
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 789
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6f
    :goto_6f
    return v2

    .line 735
    :cond_70
    :goto_70
    return v2

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_21
    .end packed-switch
.end method

.method blacklist setFactor([C)Z
    .registers 4
    .param p1, "factor"    # [C

    .line 638
    array-length v0, p1

    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    if-ne v0, v1, :cond_9

    .line 639
    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    .line 640
    const/4 v0, 0x1

    return v0

    .line 642
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setFactorString([B)Z
    .registers 3
    .param p1, "string"    # [B

    .line 668
    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method blacklist setInfo(IIBB)Z
    .registers 6
    .param p1, "rangestart"    # I
    .param p2, "rangeend"    # I
    .param p3, "type"    # B
    .param p4, "variant"    # B

    .line 619
    if-ltz p1, :cond_17

    if-gt p1, p2, :cond_17

    const v0, 0x10ffff

    if-gt p2, v0, :cond_17

    const/4 v0, 0x1

    if-eqz p3, :cond_e

    if-ne p3, v0, :cond_17

    .line 622
    :cond_e
    iput p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    .line 623
    iput p2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    .line 624
    iput-byte p3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    .line 625
    iput-byte p4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    .line 626
    return v0

    .line 628
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setPrefix(Ljava/lang/String;)Z
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 652
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 653
    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    .line 654
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
