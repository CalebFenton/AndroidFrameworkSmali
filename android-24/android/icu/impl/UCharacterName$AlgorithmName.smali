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
.field static final TYPE_0_:I = 0x0

.field static final TYPE_1_:I = 0x1


# instance fields
.field private m_factor_:[C

.field private m_factorstring_:[B

.field private m_prefix_:Ljava/lang/String;

.field private m_rangeend_:I

.field private m_rangestart_:I

.field private m_type_:B

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;

.field private m_variant_:B


# direct methods
.method static synthetic -get0(Landroid/icu/impl/UCharacterName$AlgorithmName;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/icu/impl/UCharacterName$AlgorithmName;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@2
    return v0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 862
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@a
    .line 866
    const/16 v0, 0x100

    #@c
    new-array v0, v0, [I

    #@e
    iput-object v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    #@10
    .line 599
    return-void
.end method

.method private compareFactorString([IILjava/lang/String;I)Z
    .locals 8
    .param p1, "index"    # [I
    .param p2, "length"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "offset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 918
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@3
    array-length v3, v5

    #@4
    .line 919
    .local v3, "size":I
    if-eqz p1, :cond_0

    #@6
    if-eq p2, v3, :cond_1

    #@8
    .line 920
    :cond_0
    return v7

    #@9
    .line 922
    :cond_1
    const/4 v0, 0x0

    #@a
    .line 923
    .local v0, "count":I
    move v4, p4

    #@b
    .line 925
    .local v4, "strcount":I
    add-int/lit8 v3, v3, -0x1

    #@d
    .line 926
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_4

    #@10
    .line 928
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@12
    aget-char v1, v5, v2

    #@14
    .line 930
    .local v1, "factor":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@16
    aget v6, p1, v2

    #@18
    .line 929
    invoke-static {v5, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    #@1b
    move-result v0

    #@1c
    .line 932
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@1e
    .line 931
    invoke-static {p3, v5, v4, v0}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    #@21
    move-result v4

    #@22
    .line 933
    if-gez v4, :cond_2

    #@24
    .line 934
    return v7

    #@25
    .line 937
    :cond_2
    if-eq v2, v3, :cond_3

    #@27
    .line 939
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@29
    aget v6, p1, v2

    #@2b
    sub-int v6, v1, v6

    #@2d
    .line 938
    invoke-static {v5, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    #@30
    move-result v0

    #@31
    .line 926
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 942
    .end local v1    # "factor":I
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@37
    move-result v5

    #@38
    if-eq v4, v5, :cond_5

    #@3a
    .line 943
    return v7

    #@3b
    .line 945
    :cond_5
    const/4 v5, 0x1

    #@3c
    return v5
.end method

.method private getFactorString([II)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # [I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 879
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@3
    array-length v3, v4

    #@4
    .line 880
    .local v3, "size":I
    if-eqz p1, :cond_0

    #@6
    if-eq p2, v3, :cond_1

    #@8
    .line 881
    :cond_0
    return-object v5

    #@9
    .line 884
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@b
    monitor-enter v5

    #@c
    .line 885
    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@e
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@10
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    #@13
    move-result v6

    #@14
    const/4 v7, 0x0

    #@15
    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@18
    .line 886
    const/4 v0, 0x0

    #@19
    .line 888
    .local v0, "count":I
    add-int/lit8 v3, v3, -0x1

    #@1b
    .line 889
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_3

    #@1e
    .line 890
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@20
    aget-char v1, v4, v2

    #@22
    .line 892
    .local v1, "factor":I
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@24
    aget v6, p1, v2

    #@26
    .line 891
    invoke-static {v4, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    #@29
    move-result v0

    #@2a
    .line 894
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@2c
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@2e
    .line 893
    invoke-static {v4, v6, v0}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    #@31
    move-result v0

    #@32
    .line 896
    if-eq v2, v3, :cond_2

    #@34
    .line 898
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@36
    .line 899
    aget v6, p1, v2

    #@38
    sub-int v6, v1, v6

    #@3a
    add-int/lit8 v6, v6, -0x1

    #@3c
    .line 897
    invoke-static {v4, v0, v6}, Landroid/icu/impl/UCharacterUtility;->skipNullTermByteSubString([BII)I

    #@3f
    move-result v0

    #@40
    .line 889
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 902
    .end local v1    # "factor":I
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    move-result-object v4

    #@49
    monitor-exit v5

    #@4a
    return-object v4

    #@4b
    .line 884
    .end local v0    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    #@4c
    monitor-exit v5

    #@4d
    throw v4
.end method


# virtual methods
.method add([II)I
    .locals 9
    .param p1, "set"    # [I
    .param p2, "maxlength"    # I

    #@0
    .prologue
    .line 801
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    #@2
    invoke-static {p1, v5}, Landroid/icu/impl/UCharacterName;->-wrap1([ILjava/lang/String;)I

    #@5
    move-result v3

    #@6
    .line 802
    .local v3, "length":I
    iget-byte v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    #@8
    packed-switch v5, :pswitch_data_0

    #@b
    .line 841
    :cond_0
    :goto_0
    if-le v3, p2, :cond_3

    #@d
    .line 842
    return v3

    #@e
    .line 806
    :pswitch_0
    iget-byte v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@10
    add-int/2addr v3, v5

    #@11
    .line 810
    goto :goto_0

    #@12
    .line 816
    :pswitch_1
    iget-byte v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@14
    add-int/lit8 v2, v5, -0x1

    #@16
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_0

    #@18
    .line 818
    const/4 v4, 0x0

    #@19
    .line 819
    .local v4, "maxfactorlength":I
    const/4 v0, 0x0

    #@1a
    .line 820
    .local v0, "count":I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@1c
    aget-char v1, v5, v2

    #@1e
    .local v1, "factor":I
    :goto_2
    if-lez v1, :cond_2

    #@20
    .line 821
    iget-object v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@22
    monitor-enter v6

    #@23
    .line 822
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@25
    .line 823
    iget-object v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@27
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    #@2a
    move-result v7

    #@2b
    .line 822
    const/4 v8, 0x0

    #@2c
    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@2f
    .line 826
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@31
    .line 827
    iget-object v7, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@33
    .line 825
    invoke-static {v5, v7, v0}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    #@36
    move-result v0

    #@37
    .line 828
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@39
    invoke-static {p1, v5}, Landroid/icu/impl/UCharacterName;->-wrap0([ILjava/lang/StringBuffer;)I

    #@3c
    .line 829
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@41
    move-result v5

    #@42
    if-le v5, v4, :cond_1

    #@44
    .line 833
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result v4

    #@4a
    :cond_1
    monitor-exit v6

    #@4b
    .line 820
    add-int/lit8 v1, v1, -0x1

    #@4d
    goto :goto_2

    #@4e
    .line 821
    :catchall_0
    move-exception v5

    #@4f
    monitor-exit v6

    #@50
    throw v5

    #@51
    .line 837
    :cond_2
    add-int/2addr v3, v4

    #@52
    .line 816
    add-int/lit8 v2, v2, -0x1

    #@54
    goto :goto_1

    #@55
    .line 844
    .end local v0    # "count":I
    .end local v1    # "factor":I
    .end local v2    # "i":I
    .end local v4    # "maxfactorlength":I
    :cond_3
    return p2

    #@56
    .line 802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method appendName(ILjava/lang/StringBuffer;)V
    .locals 7
    .param p1, "ch"    # I
    .param p2, "str"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 688
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    #@2
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 689
    iget-byte v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    #@7
    packed-switch v4, :pswitch_data_0

    #@a
    .line 686
    :goto_0
    return-void

    #@b
    .line 693
    :pswitch_0
    int-to-long v4, p1

    #@c
    iget-byte v6, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@e
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    goto :goto_0

    #@16
    .line 697
    :pswitch_1
    iget v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@18
    sub-int v3, p1, v4

    #@1a
    .line 698
    .local v3, "offset":I
    iget-object v2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    #@1c
    .line 704
    .local v2, "indexes":[I
    iget-object v5, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    #@1e
    monitor-enter v5

    #@1f
    .line 705
    :try_start_0
    iget-byte v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@21
    add-int/lit8 v1, v4, -0x1

    #@23
    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_0

    #@25
    .line 707
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@27
    aget-char v4, v4, v1

    #@29
    and-int/lit16 v0, v4, 0xff

    #@2b
    .line 708
    .local v0, "factor":I
    rem-int v4, v3, v0

    #@2d
    aput v4, v2, v1

    #@2f
    .line 709
    div-int/2addr v3, v0

    #@30
    .line 705
    add-int/lit8 v1, v1, -0x1

    #@32
    goto :goto_1

    #@33
    .line 715
    .end local v0    # "factor":I
    :cond_0
    const/4 v4, 0x0

    #@34
    aput v3, v2, v4

    #@36
    .line 718
    iget-byte v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@38
    invoke-direct {p0, v2, v4}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getFactorString([II)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v5

    #@40
    goto :goto_0

    #@41
    .line 704
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@42
    monitor-exit v5

    #@43
    throw v4

    #@44
    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method contains(I)Z
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 676
    iget v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@3
    if-gt v1, p1, :cond_0

    #@5
    iget v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method getChar(Ljava/lang/String;)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 730
    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    #@4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@7
    move-result v6

    #@8
    .line 731
    .local v6, "prefixlen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v8

    #@c
    if-lt v8, v6, :cond_1

    #@e
    .line 732
    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_1

    #@1a
    .line 736
    iget-byte v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    #@1c
    packed-switch v8, :pswitch_data_0

    #@1f
    .line 787
    :cond_0
    return v10

    #@20
    .line 733
    :cond_1
    return v10

    #@21
    .line 741
    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    .line 742
    const/16 v9, 0x10

    #@27
    .line 741
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2a
    move-result v7

    #@2b
    .line 744
    .local v7, "result":I
    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@2d
    if-gt v8, v7, :cond_0

    #@2f
    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    if-gt v7, v8, :cond_0

    #@33
    .line 745
    return v7

    #@34
    .line 749
    .end local v7    # "result":I
    :catch_0
    move-exception v1

    #@35
    .line 750
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v10

    #@36
    .line 756
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    iget v0, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@38
    .local v0, "ch":I
    :goto_0
    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    #@3a
    if-gt v0, v8, :cond_0

    #@3c
    .line 758
    iget v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@3e
    sub-int v5, v0, v8

    #@40
    .line 759
    .local v5, "offset":I
    iget-object v4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    #@42
    .line 765
    .local v4, "indexes":[I
    iget-object v9, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_utilIntBuffer_:[I

    #@44
    monitor-enter v9

    #@45
    .line 766
    :try_start_1
    iget-byte v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@47
    add-int/lit8 v3, v8, -0x1

    #@49
    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_2

    #@4b
    .line 768
    iget-object v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@4d
    aget-char v8, v8, v3

    #@4f
    and-int/lit16 v2, v8, 0xff

    #@51
    .line 769
    .local v2, "factor":I
    rem-int v8, v5, v2

    #@53
    aput v8, v4, v3

    #@55
    .line 770
    div-int/2addr v5, v2

    #@56
    .line 766
    add-int/lit8 v3, v3, -0x1

    #@58
    goto :goto_1

    #@59
    .line 776
    .end local v2    # "factor":I
    :cond_2
    const/4 v8, 0x0

    #@5a
    aput v5, v4, v8

    #@5c
    .line 779
    iget-byte v8, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@5e
    invoke-direct {p0, v4, v8, p1, v6}, Landroid/icu/impl/UCharacterName$AlgorithmName;->compareFactorString([IILjava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    move-result v8

    #@62
    if-eqz v8, :cond_3

    #@64
    monitor-exit v9

    #@65
    .line 781
    return v0

    #@66
    :cond_3
    monitor-exit v9

    #@67
    .line 756
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 765
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    #@6b
    monitor-exit v9

    #@6c
    throw v8

    #@6d
    .line 736
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setFactor([C)Z
    .locals 2
    .param p1, "factor"    # [C

    #@0
    .prologue
    .line 636
    array-length v0, p1

    #@1
    iget-byte v1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 637
    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factor_:[C

    #@7
    .line 638
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 640
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method setFactorString([B)Z
    .locals 1
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 666
    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_factorstring_:[B

    #@2
    .line 667
    const/4 v0, 0x1

    #@3
    return v0
.end method

.method setInfo(IIBB)Z
    .locals 3
    .param p1, "rangestart"    # I
    .param p2, "rangeend"    # I
    .param p3, "type"    # B
    .param p4, "variant"    # B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 617
    if-ltz p1, :cond_1

    #@4
    if-gt p1, p2, :cond_1

    #@6
    .line 618
    const v0, 0x10ffff

    #@9
    if-gt p2, v0, :cond_1

    #@b
    .line 619
    if-eqz p3, :cond_0

    #@d
    if-ne p3, v2, :cond_1

    #@f
    .line 620
    :cond_0
    iput p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangestart_:I

    #@11
    .line 621
    iput p2, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_rangeend_:I

    #@13
    .line 622
    iput-byte p3, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_type_:B

    #@15
    .line 623
    iput-byte p4, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_variant_:B

    #@17
    .line 624
    return v2

    #@18
    .line 626
    :cond_1
    return v1
.end method

.method setPrefix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 650
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 651
    iput-object p1, p0, Landroid/icu/impl/UCharacterName$AlgorithmName;->m_prefix_:Ljava/lang/String;

    #@b
    .line 652
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 654
    :cond_0
    return v1
.end method
