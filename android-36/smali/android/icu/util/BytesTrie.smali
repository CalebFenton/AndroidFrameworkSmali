.class public final Landroid/icu/util/BytesTrie;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BytesTrie$State;,
        Landroid/icu/util/BytesTrie$Result;,
        Landroid/icu/util/BytesTrie$Iterator;,
        Landroid/icu/util/BytesTrie$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o kFiveByteDeltaLead:I = 0xff

.field static final greylist-max-o kFiveByteValueLead:I = 0x7f

.field static final greylist-max-o kFourByteDeltaLead:I = 0xfe

.field static final greylist-max-o kFourByteValueLead:I = 0x7e

.field static final greylist-max-o kMaxBranchLinearSubNodeLength:I = 0x5

.field static final greylist-max-o kMaxLinearMatchLength:I = 0x10

.field static final greylist-max-o kMaxOneByteDelta:I = 0xbf

.field static final greylist-max-o kMaxOneByteValue:I = 0x40

.field static final greylist-max-o kMaxThreeByteDelta:I = 0xdffff

.field static final greylist-max-o kMaxThreeByteValue:I = 0x11ffff

.field static final greylist-max-o kMaxTwoByteDelta:I = 0x2fff

.field static final greylist-max-o kMaxTwoByteValue:I = 0x1aff

.field static final greylist-max-o kMinLinearMatch:I = 0x10

.field static final greylist-max-o kMinOneByteValueLead:I = 0x10

.field static final greylist-max-o kMinThreeByteDeltaLead:I = 0xf0

.field static final greylist-max-o kMinThreeByteValueLead:I = 0x6c

.field static final greylist-max-o kMinTwoByteDeltaLead:I = 0xc0

.field static final greylist-max-o kMinTwoByteValueLead:I = 0x51

.field static final greylist-max-o kMinValueLead:I = 0x20

.field private static final greylist-max-o kValueIsFinal:I = 0x1

.field private static greylist-max-o valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private greylist-max-o bytes_:[B

.field private greylist-max-o pos_:I

.field private greylist-max-o remainingMatchLength_:I

.field private greylist-max-o root_:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadValue([BII)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smskipDelta([BI)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smskipValue(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 30
    nop

    .line 801
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/BytesTrie;)V
    .registers 3
    .param p1, "other"    # Landroid/icu/util/BytesTrie;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Landroid/icu/util/BytesTrie;->bytes_:[B

    iput-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    .line 59
    iget v0, p1, Landroid/icu/util/BytesTrie;->root_:I

    iput v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    .line 60
    iget v0, p1, Landroid/icu/util/BytesTrie;->pos_:I

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 61
    iget v0, p1, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 62
    return-void
.end method

.method public constructor greylist-max-o <init>([BI)V
    .registers 4
    .param p1, "trieBytes"    # [B
    .param p2, "offset"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    .line 47
    iput p2, p0, Landroid/icu/util/BytesTrie;->root_:I

    iput p2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 49
    return-void
.end method

.method private static greylist-max-o append(Ljava/lang/Appendable;I)V
    .registers 4
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "c"    # I

    .line 1000
    int-to-char v0, p1

    :try_start_1
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 1003
    nop

    .line 1004
    return-void

    .line 1001
    :catch_6
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o branchNext(III)Landroid/icu/util/BytesTrie$Result;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "inByte"    # I

    .line 806
    if-nez p2, :cond_b

    .line 807
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-byte p1, v0, p1

    and-int/lit16 p2, p1, 0xff

    move p1, v1

    .line 809
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :cond_b
    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 812
    :goto_d
    const/4 v1, 0x5

    if-le p2, v1, :cond_2d

    .line 813
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    if-ge p3, p1, :cond_23

    .line 814
    shr-int/lit8 p2, p2, 0x1

    .line 815
    iget-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v2}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result p1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_d

    .line 817
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_23
    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p2, p1

    .line 818
    iget-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v2}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_d

    .line 825
    :cond_2d
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x20

    if-ne p3, p1, :cond_e2

    .line 827
    iget-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 828
    .local p1, "node":I
    nop

    .line 829
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_48

    .line 831
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    goto/16 :goto_df

    .line 834
    .end local v0    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    .line 836
    shr-int/lit8 p1, p1, 0x1

    .line 838
    const/16 v0, 0x51

    if-ge p1, v0, :cond_54

    .line 839
    add-int/lit8 v0, p1, -0x10

    .local v0, "delta":I
    goto/16 :goto_cc

    .line 840
    .end local v0    # "delta":I
    :cond_54
    const/16 v0, 0x6c

    if-ge p1, v0, :cond_67

    .line 841
    add-int/lit8 v0, p1, -0x51

    shl-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "pos":I
    .local v4, "pos":I
    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    move v2, v4

    .restart local v0    # "delta":I
    goto :goto_cc

    .line 842
    .end local v0    # "delta":I
    .end local v4    # "pos":I
    .restart local v2    # "pos":I
    :cond_67
    const/16 v0, 0x7e

    if-ge p1, v0, :cond_84

    .line 843
    add-int/lit8 v0, p1, -0x6c

    shl-int/lit8 v0, v0, 0x10

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 844
    .restart local v0    # "delta":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_cc

    .line 845
    .end local v0    # "delta":I
    :cond_84
    if-ne p1, v0, :cond_a5

    .line 846
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 847
    .restart local v0    # "delta":I
    add-int/lit8 v2, v2, 0x3

    goto :goto_cc

    .line 849
    .end local v0    # "delta":I
    :cond_a5
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 850
    .restart local v0    # "delta":I
    add-int/lit8 v2, v2, 0x4

    .line 853
    :goto_cc
    add-int/2addr v2, v0

    .line 854
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, v2

    and-int/lit16 p1, v3, 0xff

    .line 855
    if-lt p1, v1, :cond_dc

    sget-object v1, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v3, p1, 0x1

    aget-object v1, v1, v3

    goto :goto_de

    :cond_dc
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_de
    move-object v0, v1

    .line 857
    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    :goto_df
    iput v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 858
    return-object v0

    .line 860
    .end local v0    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local p1    # "node":I
    :cond_e2
    add-int/lit8 p2, p2, -0x1

    .line 861
    iget-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v2}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    .line 862
    .end local v2    # "pos":I
    .local p1, "pos":I
    if-gt p2, v0, :cond_2d

    .line 863
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    if-ne p3, p1, :cond_10a

    .line 864
    iput v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 865
    iget-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 866
    .local p1, "node":I
    if-lt p1, v1, :cond_107

    sget-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    goto :goto_109

    :cond_107
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_109
    return-object v0

    .line 868
    .end local p1    # "node":I
    :cond_10a
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 869
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p1
.end method

.method private static greylist-max-o findUniqueValue([BIJ)J
    .registers 12
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "uniqueValue"    # J

    .line 952
    nop

    :goto_1
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 953
    .local p1, "node":I
    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    if-ge p1, v1, :cond_28

    .line 954
    if-nez p1, :cond_16

    .line 955
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v0, p0, v0

    and-int/lit16 p1, v0, 0xff

    move v0, v1

    .line 957
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :cond_16
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p2

    .line 958
    cmp-long v1, p2, v2

    if-nez v1, :cond_21

    .line 959
    return-wide v2

    .line 961
    :cond_21
    const/16 v1, 0x21

    ushr-long v1, p2, v1

    long-to-int v0, v1

    move p1, v0

    goto :goto_58

    .line 962
    :cond_28
    const/16 v1, 0x20

    const/4 v4, 0x1

    if-ge p1, v1, :cond_33

    .line 964
    add-int/lit8 v1, p1, -0x10

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    move p1, v0

    goto :goto_58

    .line 966
    :cond_33
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_39

    move v1, v4

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 967
    .local v1, "isFinal":Z
    :goto_3a
    shr-int/lit8 v5, p1, 0x1

    invoke-static {p0, v0, v5}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v5

    .line 968
    .local v5, "value":I
    cmp-long v6, p2, v2

    if-eqz v6, :cond_4a

    .line 969
    shr-long v6, p2, v4

    long-to-int v4, v6

    if-eq v5, v4, :cond_50

    .line 970
    return-wide v2

    .line 973
    :cond_4a
    int-to-long v2, v5

    shl-long/2addr v2, v4

    const-wide/16 v6, 0x1

    or-long p2, v2, v6

    .line 975
    :cond_50
    if-eqz v1, :cond_53

    .line 976
    return-wide p2

    .line 978
    :cond_53
    invoke-static {v0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    move p1, v0

    .line 980
    .end local v0    # "pos":I
    .end local v1    # "isFinal":Z
    .end local v5    # "value":I
    .local p1, "pos":I
    :goto_58
    goto :goto_1
.end method

.method private static greylist-max-o findUniqueValueFromBranch([BIIJ)J
    .registers 15
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "uniqueValue"    # J

    .line 912
    nop

    :goto_1
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_1f

    .line 913
    add-int/lit8 p1, p1, 0x1

    .line 914
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    shr-int/lit8 v3, p2, 0x1

    invoke-static {p0, v0, v3, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p3

    .line 915
    cmp-long v0, p3, v1

    if-nez v0, :cond_17

    .line 916
    return-wide v1

    .line 918
    :cond_17
    shr-int/lit8 v0, p2, 0x1

    sub-int/2addr p2, v0

    .line 919
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_1

    .line 922
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 924
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "pos":I
    .local v3, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 925
    .local p1, "node":I
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2d

    move v4, v0

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    .line 926
    .local v4, "isFinal":Z
    :goto_2e
    shr-int/lit8 v5, p1, 0x1

    invoke-static {p0, v3, v5}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v5

    .line 927
    .local v5, "value":I
    invoke-static {v3, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v3

    .line 928
    if-eqz v4, :cond_4b

    .line 929
    cmp-long v6, p3, v1

    if-eqz v6, :cond_44

    .line 930
    shr-long v6, p3, v0

    long-to-int v6, v6

    if-eq v5, v6, :cond_56

    .line 931
    return-wide v1

    .line 934
    :cond_44
    int-to-long v6, v5

    shl-long/2addr v6, v0

    const-wide/16 v8, 0x1

    or-long p3, v6, v8

    goto :goto_56

    .line 937
    :cond_4b
    add-int v6, v3, v5

    invoke-static {p0, v6, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide p3

    .line 938
    cmp-long v6, p3, v1

    if-nez v6, :cond_56

    .line 939
    return-wide v1

    .line 942
    .end local v4    # "isFinal":Z
    .end local v5    # "value":I
    .end local p1    # "node":I
    :cond_56
    :goto_56
    add-int/lit8 p2, p2, -0x1

    if-gt p2, v0, :cond_68

    .line 944
    add-int/lit8 p1, v3, 0x1

    int-to-long v0, p1

    const/16 p1, 0x21

    shl-long/2addr v0, p1

    const-wide v4, 0x1ffffffffL

    and-long/2addr v4, p3

    or-long/2addr v0, v4

    return-wide v0

    .line 942
    :cond_68
    move p1, v3

    goto :goto_1f
.end method

.method private static greylist-max-o getNextBranchBytes([BIILjava/lang/Appendable;)V
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/lang/Appendable;

    .line 986
    nop

    :goto_1
    const/4 v0, 0x5

    if-le p2, v0, :cond_17

    .line 987
    add-int/lit8 p1, p1, 0x1

    .line 988
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    shr-int/lit8 v1, p2, 0x1

    invoke-static {p0, v0, v1, p3}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    .line 989
    shr-int/lit8 v0, p2, 0x1

    sub-int/2addr p2, v0

    .line 990
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_1

    .line 993
    :cond_17
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    .line 994
    invoke-static {p0, v0}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    .line 995
    .end local v0    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_17

    .line 996
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-static {p3, v0}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    .line 997
    return-void
.end method

.method public static greylist-max-o iterator([BII)Landroid/icu/util/BytesTrie$Iterator;
    .registers 9
    .param p0, "trieBytes"    # [B
    .param p1, "offset"    # I
    .param p2, "maxStringLength"    # I

    .line 475
    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    .end local p0    # "trieBytes":[B
    .end local p1    # "offset":I
    .end local p2    # "maxStringLength":I
    .local v1, "trieBytes":[B
    .local v2, "offset":I
    .local v4, "maxStringLength":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie-IA;)V

    return-object v0
.end method

.method public static greylist-max-o jumpByDelta([BI)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 769
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 770
    .local p1, "delta":I
    const/16 v1, 0xc0

    if-ge p1, v1, :cond_b

    goto :goto_73

    .line 772
    :cond_b
    const/16 v1, 0xf0

    if-ge p1, v1, :cond_1d

    .line 773
    add-int/lit16 v1, p1, -0xc0

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int p1, v1, v0

    move v0, v2

    goto :goto_73

    .line 774
    .end local v2    # "pos":I
    .restart local v0    # "pos":I
    :cond_1d
    const/16 v1, 0xfe

    if-ge p1, v1, :cond_37

    .line 775
    add-int/lit16 v1, p1, -0xf0

    shl-int/lit8 v1, v1, 0x10

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int p1, v1, v2

    .line 776
    add-int/lit8 v0, v0, 0x2

    goto :goto_73

    .line 777
    :cond_37
    if-ne p1, v1, :cond_53

    .line 778
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int p1, v1, v2

    .line 779
    add-int/lit8 v0, v0, 0x3

    goto :goto_73

    .line 781
    :cond_53
    aget-byte v1, p0, v0

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int p1, v1, v2

    .line 782
    add-int/lit8 v0, v0, 0x4

    .line 784
    :goto_73
    add-int v1, v0, p1

    return v1
.end method

.method private greylist-max-o nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .registers 8
    .param p1, "pos"    # I
    .param p2, "inByte"    # I

    .line 876
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 877
    .local p1, "node":I
    const/16 v0, 0x10

    if-ge p1, v0, :cond_12

    .line 878
    invoke-direct {p0, v1, p1, p2}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0

    .line 879
    :cond_12
    const/16 v0, 0x20

    if-ge p1, v0, :cond_3f

    .line 881
    add-int/lit8 v2, p1, -0x10

    .line 882
    .local v2, "length":I
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p2, v1, :cond_3d

    .line 883
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 884
    iput v4, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 885
    if-gez v2, :cond_3a

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    move p1, v1

    if-lt v1, v0, :cond_3a

    .line 886
    sget-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    goto :goto_3c

    :cond_3a
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 885
    :goto_3c
    return-object v0

    .line 882
    :cond_3d
    move v1, v4

    goto :goto_44

    .line 891
    .end local v2    # "length":I
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_3f
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4a

    .line 893
    nop

    .line 901
    .end local p1    # "node":I
    :goto_44
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 902
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p1

    .line 896
    .restart local p1    # "node":I
    :cond_4a
    invoke-static {v1, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    .line 898
    .end local v1    # "pos":I
    .local v0, "pos":I
    nop

    .line 900
    .end local p1    # "node":I
    move p1, v0

    goto :goto_1
.end method

.method private static greylist-max-o readValue([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "leadByte"    # I

    .line 731
    const/16 v0, 0x51

    if-ge p2, v0, :cond_7

    .line 732
    add-int/lit8 v0, p2, -0x10

    .local v0, "value":I
    goto :goto_62

    .line 733
    .end local v0    # "value":I
    :cond_7
    const/16 v0, 0x6c

    if-ge p2, v0, :cond_15

    .line 734
    add-int/lit8 v0, p2, -0x51

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .restart local v0    # "value":I
    goto :goto_62

    .line 735
    .end local v0    # "value":I
    :cond_15
    const/16 v0, 0x7e

    if-ge p2, v0, :cond_2c

    .line 736
    add-int/lit8 v0, p2, -0x6c

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .restart local v0    # "value":I
    goto :goto_62

    .line 737
    .end local v0    # "value":I
    :cond_2c
    if-ne p2, v0, :cond_45

    .line 738
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .restart local v0    # "value":I
    goto :goto_62

    .line 740
    .end local v0    # "value":I
    :cond_45
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 742
    .restart local v0    # "value":I
    :goto_62
    return v0
.end method

.method private static greylist-max-o skipDelta([BI)I
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    .line 788
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 789
    .local p1, "delta":I
    const/16 v1, 0xc0

    if-lt p1, v1, :cond_1d

    .line 790
    const/16 v1, 0xf0

    if-ge p1, v1, :cond_11

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 792
    :cond_11
    const/16 v1, 0xfe

    if-ge p1, v1, :cond_18

    .line 793
    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    .line 795
    :cond_18
    and-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 798
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static greylist-max-o skipValue(II)I
    .registers 3
    .param p0, "pos"    # I
    .param p1, "leadByte"    # I

    .line 745
    nop

    .line 746
    const/16 v0, 0xa2

    if-lt p1, v0, :cond_1a

    .line 747
    const/16 v0, 0xd8

    if-ge p1, v0, :cond_c

    .line 748
    add-int/lit8 p0, p0, 0x1

    goto :goto_1a

    .line 749
    :cond_c
    const/16 v0, 0xfc

    if-ge p1, v0, :cond_13

    .line 750
    add-int/lit8 p0, p0, 0x2

    goto :goto_1a

    .line 752
    :cond_13
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr p0, v0

    .line 755
    :cond_1a
    :goto_1a
    return p0
.end method

.method private static greylist-max-o skipValue([BI)I
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    .line 758
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 759
    .local p1, "leadByte":I
    invoke-static {v0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v1

    return v1
.end method

.method private greylist-max-o stop()V
    .registers 2

    .line 724
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 725
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/icu/util/BytesTrie;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/BytesTrie;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->clone()Landroid/icu/util/BytesTrie;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o current()Landroid/icu/util/BytesTrie$Result;
    .registers 5

    .line 228
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 229
    .local v0, "pos":I
    if-gez v0, :cond_7

    .line 230
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v1

    .line 233
    :cond_7
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez v1, :cond_1d

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    .local v2, "node":I
    const/16 v3, 0x20

    if-lt v1, v3, :cond_1d

    .line 234
    sget-object v1, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    goto :goto_1f

    .end local v2    # "node":I
    :cond_1d
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 233
    :goto_1f
    return-object v1
.end method

.method public greylist-max-o first(I)Landroid/icu/util/BytesTrie$Result;
    .registers 3
    .param p1, "inByte"    # I

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 247
    if-gez p1, :cond_7

    .line 248
    add-int/lit16 p1, p1, 0x100

    .line 250
    :cond_7
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-direct {p0, v0, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNextBytes(Ljava/lang/Appendable;)I
    .registers 7
    .param p1, "out"    # Ljava/lang/Appendable;

    .line 416
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 417
    .local v0, "pos":I
    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 418
    return v1

    .line 420
    :cond_6
    iget v2, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v3, 0x1

    if-ltz v2, :cond_15

    .line 421
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {p1, v1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    .line 422
    return v3

    .line 424
    :cond_15
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "pos":I
    .local v4, "pos":I
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 425
    .local v0, "node":I
    const/16 v2, 0x20

    if-lt v0, v2, :cond_33

    .line 426
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_26

    .line 427
    return v1

    .line 429
    :cond_26
    invoke-static {v4, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v1

    .line 430
    .end local v4    # "pos":I
    .local v1, "pos":I
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v1, v2, v1

    and-int/lit16 v0, v1, 0xff

    .line 431
    nop

    .line 434
    :cond_33
    const/16 v1, 0x10

    if-ge v0, v1, :cond_49

    .line 435
    if-nez v0, :cond_42

    .line 436
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "pos":I
    .local v2, "pos":I
    aget-byte v1, v1, v4

    and-int/lit16 v0, v1, 0xff

    move v4, v2

    .line 438
    .end local v2    # "pos":I
    .restart local v4    # "pos":I
    :cond_42
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/2addr v0, v3

    invoke-static {v1, v4, v0, p1}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    .line 439
    return v0

    .line 442
    :cond_49
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {p1, v1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    .line 443
    return v3
.end method

.method public blacklist getState64()J
    .registers 5

    .line 92
    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getUniqueValue()J
    .registers 7

    .line 398
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 399
    .local v0, "pos":I
    const-wide/16 v1, 0x0

    if-gez v0, :cond_7

    .line 400
    return-wide v1

    .line 403
    :cond_7
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v4, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4, v1, v2}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide v1

    .line 405
    .local v1, "uniqueValue":J
    const/16 v3, 0x1f

    shl-long v4, v1, v3

    shr-long v3, v4, v3

    return-wide v3
.end method

.method public greylist-max-o getValue()I
    .registers 5

    .line 384
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 385
    .local v0, "pos":I
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 386
    .local v0, "leadByte":I
    nop

    .line 387
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    shr-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v1

    return v1
.end method

.method public blacklist iterator()Landroid/icu/util/BytesTrie$Iterator;
    .registers 7

    .line 453
    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie-IA;)V

    return-object v0
.end method

.method public greylist-max-o iterator(I)Landroid/icu/util/BytesTrie$Iterator;
    .registers 8
    .param p1, "maxStringLength"    # I

    .line 463
    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move v4, p1

    .end local p1    # "maxStringLength":I
    .local v4, "maxStringLength":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->iterator()Landroid/icu/util/BytesTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o next(I)Landroid/icu/util/BytesTrie$Result;
    .registers 7
    .param p1, "inByte"    # I

    .line 260
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 261
    .local v0, "pos":I
    if-gez v0, :cond_7

    .line 262
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v1

    .line 264
    :cond_7
    if-gez p1, :cond_b

    .line 265
    add-int/lit16 p1, p1, 0x100

    .line 267
    :cond_b
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 268
    .local v1, "length":I
    if-ltz v1, :cond_3c

    .line 270
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    if-ne p1, v0, :cond_36

    .line 271
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 272
    iput v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 274
    if-gez v1, :cond_33

    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .local v2, "node":I
    const/16 v4, 0x20

    if-lt v0, v4, :cond_33

    .line 275
    sget-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v4, v2, 0x1

    aget-object v0, v0, v4

    goto :goto_35

    .end local v2    # "node":I
    :cond_33
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 274
    :goto_35
    return-object v0

    .line 277
    :cond_36
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 278
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v0

    .line 281
    .end local v3    # "pos":I
    .restart local v0    # "pos":I
    :cond_3c
    invoke-direct {p0, v0, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o next([BII)Landroid/icu/util/BytesTrie$Result;
    .registers 11
    .param p1, "s"    # [B
    .param p2, "sIndex"    # I
    .param p3, "sLimit"    # I

    .line 300
    if-lt p2, p3, :cond_7

    .line 302
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->current()Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0

    .line 304
    :cond_7
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 305
    .local v0, "pos":I
    if-gez v0, :cond_e

    .line 306
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v1

    .line 308
    :cond_e
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 314
    .local v1, "length":I
    :goto_10
    const/16 v2, 0x20

    if-ne p2, p3, :cond_2d

    .line 315
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 316
    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 318
    if-gez v1, :cond_2a

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    move v4, v3

    .local v4, "node":I
    if-lt v3, v2, :cond_2a

    .line 319
    sget-object v2, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v3, v4, 0x1

    aget-object v2, v2, v3

    goto :goto_2c

    .end local v4    # "node":I
    :cond_2a
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 318
    :goto_2c
    return-object v2

    .line 321
    :cond_2d
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sIndex":I
    .local v3, "sIndex":I
    aget-byte p2, p1, p2

    .line 322
    .local p2, "inByte":B
    if-gez v1, :cond_8e

    .line 323
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 324
    nop

    .line 334
    :goto_36
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 335
    .local v0, "node":I
    const/16 v4, 0x10

    if-ge v0, v4, :cond_65

    .line 336
    and-int/lit16 v4, p2, 0xff

    invoke-direct {p0, v5, v0, v4}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    .line 337
    .local v4, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v4, v6, :cond_4f

    .line 338
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 341
    :cond_4f
    if-ne v3, p3, :cond_52

    .line 342
    return-object v4

    .line 344
    :cond_52
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v4, v6, :cond_5c

    .line 346
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 347
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 349
    :cond_5c
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "sIndex":I
    .local v6, "sIndex":I
    aget-byte p2, p1, v3

    .line 350
    iget v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 351
    .end local v4    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local v5    # "pos":I
    .local v3, "pos":I
    move v0, v3

    move v3, v6

    goto :goto_8d

    .end local v6    # "sIndex":I
    .local v3, "sIndex":I
    .restart local v5    # "pos":I
    :cond_65
    if-ge v0, v2, :cond_7d

    .line 353
    add-int/lit8 v1, v0, -0x10

    .line 354
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v2, v2, v5

    if-eq p2, v2, :cond_75

    .line 355
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 356
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 358
    :cond_75
    add-int/lit8 v2, v5, 0x1

    .line 359
    .end local v5    # "pos":I
    .local v2, "pos":I
    add-int/lit8 v1, v1, -0x1

    .line 360
    nop

    .line 372
    .end local v0    # "node":I
    .end local p2    # "inByte":B
    move v0, v2

    move p2, v3

    goto :goto_10

    .line 361
    .end local v2    # "pos":I
    .restart local v0    # "node":I
    .restart local v5    # "pos":I
    .restart local p2    # "inByte":B
    :cond_7d
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_87

    .line 363
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 364
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 367
    :cond_87
    invoke-static {v5, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v4

    .line 369
    .end local v5    # "pos":I
    .local v4, "pos":I
    nop

    .line 371
    .end local v0    # "node":I
    move v0, v4

    .end local v4    # "pos":I
    .local v0, "pos":I
    :goto_8d
    goto :goto_36

    .line 326
    :cond_8e
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v2, v2, v0

    if-eq p2, v2, :cond_9a

    .line 327
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    .line 328
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 330
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    .line 331
    add-int/lit8 v1, v1, -0x1

    move p2, v3

    goto/16 :goto_10
.end method

.method public greylist-max-o reset()Landroid/icu/util/BytesTrie;
    .registers 2

    .line 79
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 81
    return-object p0
.end method

.method public greylist-max-o resetToState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .registers 4
    .param p1, "state"    # Landroid/icu/util/BytesTrie$State;

    .line 156
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fgetbytes(Landroid/icu/util/BytesTrie$State;)[B

    move-result-object v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fgetroot(Landroid/icu/util/BytesTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 157
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fgetpos(Landroid/icu/util/BytesTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 158
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fgetremainingMatchLength(Landroid/icu/util/BytesTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 162
    return-object p0

    .line 160
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible trie state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resetToState64(J)Landroid/icu/util/BytesTrie;
    .registers 5
    .param p1, "state"    # J

    .line 109
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    .line 110
    long-to-int v0, p1

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    .line 111
    return-object p0
.end method

.method public greylist-max-o saveState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .registers 3
    .param p1, "state"    # Landroid/icu/util/BytesTrie$State;

    .line 137
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fputbytes(Landroid/icu/util/BytesTrie$State;[B)V

    .line 138
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fputroot(Landroid/icu/util/BytesTrie$State;I)V

    .line 139
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fputpos(Landroid/icu/util/BytesTrie$State;I)V

    .line 140
    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-$$Nest$fputremainingMatchLength(Landroid/icu/util/BytesTrie$State;I)V

    .line 141
    return-object p0
.end method
