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
        Landroid/icu/util/BytesTrie$Entry;,
        Landroid/icu/util/BytesTrie$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final kFiveByteDeltaLead:I = 0xff

.field static final kFiveByteValueLead:I = 0x7f

.field static final kFourByteDeltaLead:I = 0xfe

.field static final kFourByteValueLead:I = 0x7e

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneByteDelta:I = 0xbf

.field static final kMaxOneByteValue:I = 0x40

.field static final kMaxThreeByteDelta:I = 0xdffff

.field static final kMaxThreeByteValue:I = 0x11ffff

.field static final kMaxTwoByteDelta:I = 0x2fff

.field static final kMaxTwoByteValue:I = 0x1aff

.field static final kMinLinearMatch:I = 0x10

.field static final kMinOneByteValueLead:I = 0x10

.field static final kMinThreeByteDeltaLead:I = 0xf0

.field static final kMinThreeByteValueLead:I = 0x6c

.field static final kMinTwoByteDeltaLead:I = 0xc0

.field static final kMinTwoByteValueLead:I = 0x51

.field static final kMinValueLead:I = 0x20

.field private static final kValueIsFinal:I = 0x1

.field private static valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private bytes_:[B

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static synthetic -wrap0([BI)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1([BII)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "leadByte"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2([BI)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(II)I
    .locals 1
    .param p0, "pos"    # I
    .param p1, "leadByte"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/util/BytesTrie;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@d
    .line 776
    const/4 v0, 0x2

    #@e
    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    #@10
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@12
    aput-object v3, v0, v1

    #@14
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@16
    aput-object v1, v0, v2

    #@18
    sput-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@1a
    .line 27
    return-void

    #@1b
    :cond_0
    move v0, v2

    #@1c
    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "trieBytes"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@5
    .line 45
    iput p2, p0, Landroid/icu/util/BytesTrie;->root_:I

    #@7
    iput p2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@9
    .line 46
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@c
    .line 43
    return-void
.end method

.method private static append(Ljava/lang/Appendable;I)V
    .locals 2
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "c"    # I

    #@0
    .prologue
    .line 975
    int-to-char v1, p1

    #@1
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 973
    return-void

    #@5
    .line 976
    :catch_0
    move-exception v0

    #@6
    .line 977
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@8
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v1
.end method

.method private branchNext(III)Landroid/icu/util/BytesTrie$Result;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "inByte"    # I

    #@0
    .prologue
    const/16 v8, 0x7e

    #@2
    const/4 v4, 0x1

    #@3
    const/16 v7, 0x20

    #@5
    const/4 v5, 0x0

    #@6
    .line 781
    if-nez p2, :cond_0

    #@8
    .line 782
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@a
    add-int/lit8 v2, p1, 0x1

    #@c
    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte v6, v6, p1

    #@e
    and-int/lit16 p2, v6, 0xff

    #@10
    move p1, v2

    #@11
    .line 784
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@13
    move v2, p1

    #@14
    .line 787
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :goto_0
    const/4 v6, 0x5

    #@15
    if-le p2, v6, :cond_e

    #@17
    .line 788
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@19
    add-int/lit8 p1, v2, 0x1

    #@1b
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v6, v6, v2

    #@1d
    and-int/lit16 v6, v6, 0xff

    #@1f
    if-ge p3, v6, :cond_1

    #@21
    .line 789
    shr-int/lit8 p2, p2, 0x1

    #@23
    .line 790
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@25
    invoke-static {v6, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    #@28
    move-result p1

    #@29
    :goto_1
    move v2, p1

    #@2a
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    #@2b
    .line 792
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_1
    shr-int/lit8 v6, p2, 0x1

    #@2d
    sub-int/2addr p2, v6

    #@2e
    .line 793
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@30
    invoke-static {v6, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    #@33
    move-result p1

    #@34
    goto :goto_1

    #@35
    .line 835
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@37
    .line 836
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@39
    invoke-static {v6, v2}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    #@3c
    move-result p1

    #@3d
    .line 837
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    if-le p2, v4, :cond_b

    #@3f
    .line 800
    :goto_2
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@41
    add-int/lit8 v2, p1, 0x1

    #@43
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v6, v6, p1

    #@45
    and-int/lit16 v6, v6, 0xff

    #@47
    if-ne p3, v6, :cond_2

    #@49
    .line 802
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@4b
    aget-byte v6, v6, v2

    #@4d
    and-int/lit16 v1, v6, 0xff

    #@4f
    .line 803
    .local v1, "node":I
    sget-boolean v6, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@51
    if-nez v6, :cond_4

    #@53
    if-lt v1, v7, :cond_3

    #@55
    :goto_3
    if-nez v4, :cond_4

    #@57
    new-instance v4, Ljava/lang/AssertionError;

    #@59
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@5c
    throw v4

    #@5d
    :cond_3
    move v4, v5

    #@5e
    goto :goto_3

    #@5f
    .line 804
    :cond_4
    and-int/lit8 v4, v1, 0x1

    #@61
    if-eqz v4, :cond_5

    #@63
    .line 806
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@65
    .local v3, "result":Landroid/icu/util/BytesTrie$Result;
    move p1, v2

    #@66
    .line 832
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :goto_4
    iput p1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@68
    .line 833
    return-object v3

    #@69
    .line 809
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_5
    add-int/lit8 p1, v2, 0x1

    #@6b
    .line 811
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    shr-int/lit8 v1, v1, 0x1

    #@6d
    .line 813
    const/16 v4, 0x51

    #@6f
    if-ge v1, v4, :cond_6

    #@71
    .line 814
    add-int/lit8 v0, v1, -0x10

    #@73
    .line 828
    .local v0, "delta":I
    :goto_5
    add-int/2addr p1, v0

    #@74
    .line 829
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@76
    aget-byte v4, v4, p1

    #@78
    and-int/lit16 v1, v4, 0xff

    #@7a
    .line 830
    if-lt v1, v7, :cond_a

    #@7c
    sget-object v4, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@7e
    and-int/lit8 v5, v1, 0x1

    #@80
    aget-object v3, v4, v5

    #@82
    .restart local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_4

    #@83
    .line 815
    .end local v0    # "delta":I
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_6
    const/16 v4, 0x6c

    #@85
    if-ge v1, v4, :cond_7

    #@87
    .line 816
    add-int/lit8 v4, v1, -0x51

    #@89
    shl-int/lit8 v4, v4, 0x8

    #@8b
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@8d
    add-int/lit8 v2, p1, 0x1

    #@8f
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v5, p1

    #@91
    and-int/lit16 v5, v5, 0xff

    #@93
    or-int v0, v4, v5

    #@95
    .restart local v0    # "delta":I
    move p1, v2

    #@96
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_5

    #@97
    .line 817
    .end local v0    # "delta":I
    :cond_7
    if-ge v1, v8, :cond_8

    #@99
    .line 818
    add-int/lit8 v4, v1, -0x6c

    #@9b
    shl-int/lit8 v4, v4, 0x10

    #@9d
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@9f
    aget-byte v5, v5, p1

    #@a1
    and-int/lit16 v5, v5, 0xff

    #@a3
    shl-int/lit8 v5, v5, 0x8

    #@a5
    or-int/2addr v4, v5

    #@a6
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@a8
    add-int/lit8 v6, p1, 0x1

    #@aa
    aget-byte v5, v5, v6

    #@ac
    and-int/lit16 v5, v5, 0xff

    #@ae
    or-int v0, v4, v5

    #@b0
    .line 819
    .restart local v0    # "delta":I
    add-int/lit8 p1, p1, 0x2

    #@b2
    goto :goto_5

    #@b3
    .line 820
    .end local v0    # "delta":I
    :cond_8
    if-ne v1, v8, :cond_9

    #@b5
    .line 821
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@b7
    aget-byte v4, v4, p1

    #@b9
    and-int/lit16 v4, v4, 0xff

    #@bb
    shl-int/lit8 v4, v4, 0x10

    #@bd
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@bf
    add-int/lit8 v6, p1, 0x1

    #@c1
    aget-byte v5, v5, v6

    #@c3
    and-int/lit16 v5, v5, 0xff

    #@c5
    shl-int/lit8 v5, v5, 0x8

    #@c7
    or-int/2addr v4, v5

    #@c8
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@ca
    add-int/lit8 v6, p1, 0x2

    #@cc
    aget-byte v5, v5, v6

    #@ce
    and-int/lit16 v5, v5, 0xff

    #@d0
    or-int v0, v4, v5

    #@d2
    .line 822
    .restart local v0    # "delta":I
    add-int/lit8 p1, p1, 0x3

    #@d4
    goto :goto_5

    #@d5
    .line 824
    .end local v0    # "delta":I
    :cond_9
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@d7
    aget-byte v4, v4, p1

    #@d9
    shl-int/lit8 v4, v4, 0x18

    #@db
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@dd
    add-int/lit8 v6, p1, 0x1

    #@df
    aget-byte v5, v5, v6

    #@e1
    and-int/lit16 v5, v5, 0xff

    #@e3
    shl-int/lit8 v5, v5, 0x10

    #@e5
    or-int/2addr v4, v5

    #@e6
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@e8
    add-int/lit8 v6, p1, 0x2

    #@ea
    aget-byte v5, v5, v6

    #@ec
    and-int/lit16 v5, v5, 0xff

    #@ee
    shl-int/lit8 v5, v5, 0x8

    #@f0
    or-int/2addr v4, v5

    #@f1
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@f3
    add-int/lit8 v6, p1, 0x3

    #@f5
    aget-byte v5, v5, v6

    #@f7
    and-int/lit16 v5, v5, 0xff

    #@f9
    or-int v0, v4, v5

    #@fb
    .line 825
    .restart local v0    # "delta":I
    add-int/lit8 p1, p1, 0x4

    #@fd
    goto/16 :goto_5

    #@ff
    .line 830
    :cond_a
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@101
    .restart local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    goto/16 :goto_4

    #@103
    .line 838
    .end local v0    # "delta":I
    .end local v1    # "node":I
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_b
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@105
    add-int/lit8 v2, p1, 0x1

    #@107
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v4, v4, p1

    #@109
    and-int/lit16 v4, v4, 0xff

    #@10b
    if-ne p3, v4, :cond_d

    #@10d
    .line 839
    iput v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@10f
    .line 840
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@111
    aget-byte v4, v4, v2

    #@113
    and-int/lit16 v1, v4, 0xff

    #@115
    .line 841
    .restart local v1    # "node":I
    if-lt v1, v7, :cond_c

    #@117
    sget-object v4, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@119
    and-int/lit8 v5, v1, 0x1

    #@11b
    aget-object v4, v4, v5

    #@11d
    :goto_6
    return-object v4

    #@11e
    :cond_c
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@120
    goto :goto_6

    #@121
    .line 843
    .end local v1    # "node":I
    :cond_d
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@124
    .line 844
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@126
    return-object v4

    #@127
    :cond_e
    move p1, v2

    #@128
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto/16 :goto_2
.end method

.method private static findUniqueValue([BIJ)J
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "uniqueValue"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 927
    :goto_0
    add-int/lit8 v2, p1, 0x1

    #@5
    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte v4, p0, p1

    #@7
    and-int/lit16 v1, v4, 0xff

    #@9
    .line 928
    .local v1, "node":I
    const/16 v4, 0x10

    #@b
    if-ge v1, v4, :cond_1

    #@d
    .line 929
    if-nez v1, :cond_7

    #@f
    .line 930
    add-int/lit8 p1, v2, 0x1

    #@11
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v4, p0, v2

    #@13
    and-int/lit16 v1, v4, 0xff

    #@15
    .line 932
    :goto_1
    add-int/lit8 v4, v1, 0x1

    #@17
    invoke-static {p0, p1, v4, p2, p3}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    #@1a
    move-result-wide p2

    #@1b
    .line 933
    cmp-long v4, p2, v8

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 934
    return-wide v8

    #@20
    .line 936
    :cond_0
    const/16 v4, 0x21

    #@22
    ushr-long v4, p2, v4

    #@24
    long-to-int p1, v4

    #@25
    goto :goto_0

    #@26
    .line 937
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    const/16 v4, 0x20

    #@28
    if-ge v1, v4, :cond_2

    #@2a
    .line 939
    add-int/lit8 v4, v1, -0x10

    #@2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    add-int p1, v2, v4

    #@30
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@31
    .line 941
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    and-int/lit8 v4, v1, 0x1

    #@33
    if-eqz v4, :cond_3

    #@35
    const/4 v0, 0x1

    #@36
    .line 942
    .local v0, "isFinal":Z
    :goto_2
    shr-int/lit8 v4, v1, 0x1

    #@38
    invoke-static {p0, v2, v4}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    #@3b
    move-result v3

    #@3c
    .line 943
    .local v3, "value":I
    cmp-long v4, p2, v8

    #@3e
    if-eqz v4, :cond_4

    #@40
    .line 944
    shr-long v4, p2, v10

    #@42
    long-to-int v4, v4

    #@43
    if-eq v3, v4, :cond_5

    #@45
    .line 945
    return-wide v8

    #@46
    .line 941
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    :cond_3
    const/4 v0, 0x0

    #@47
    .restart local v0    # "isFinal":Z
    goto :goto_2

    #@48
    .line 948
    .restart local v3    # "value":I
    :cond_4
    int-to-long v4, v3

    #@49
    shl-long/2addr v4, v10

    #@4a
    const-wide/16 v6, 0x1

    #@4c
    or-long p2, v4, v6

    #@4e
    .line 950
    :cond_5
    if-eqz v0, :cond_6

    #@50
    .line 951
    return-wide p2

    #@51
    .line 953
    :cond_6
    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@54
    move-result p1

    #@55
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@56
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_7
    move p1, v2

    #@57
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_1
.end method

.method private static findUniqueValueFromBranch([BIIJ)J
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "uniqueValue"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 887
    :goto_0
    const/4 v4, 0x5

    #@4
    if-le p2, v4, :cond_3

    #@6
    .line 888
    add-int/lit8 p1, p1, 0x1

    #@8
    .line 889
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    #@b
    move-result v4

    #@c
    shr-int/lit8 v5, p2, 0x1

    #@e
    invoke-static {p0, v4, v5, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    #@11
    move-result-wide p3

    #@12
    .line 890
    cmp-long v4, p3, v8

    #@14
    if-nez v4, :cond_0

    #@16
    .line 891
    return-wide v8

    #@17
    .line 893
    :cond_0
    shr-int/lit8 v4, p2, 0x1

    #@19
    sub-int/2addr p2, v4

    #@1a
    .line 894
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    #@1d
    move-result p1

    #@1e
    goto :goto_0

    #@1f
    .line 909
    .local v0, "isFinal":Z
    .local v1, "node":I
    .local v3, "value":I
    :cond_1
    int-to-long v4, v3

    #@20
    shl-long/2addr v4, v10

    #@21
    const-wide/16 v6, 0x1

    #@23
    or-long p3, v4, v6

    #@25
    .line 917
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@27
    if-le p2, v10, :cond_6

    #@29
    .line 897
    .end local v0    # "isFinal":Z
    .end local v1    # "node":I
    .end local v3    # "value":I
    :cond_3
    add-int/lit8 p1, p1, 0x1

    #@2b
    .line 899
    add-int/lit8 v2, p1, 0x1

    #@2d
    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte v4, p0, p1

    #@2f
    and-int/lit16 v1, v4, 0xff

    #@31
    .line 900
    .restart local v1    # "node":I
    and-int/lit8 v4, v1, 0x1

    #@33
    if-eqz v4, :cond_4

    #@35
    const/4 v0, 0x1

    #@36
    .line 901
    .restart local v0    # "isFinal":Z
    :goto_1
    shr-int/lit8 v4, v1, 0x1

    #@38
    invoke-static {p0, v2, v4}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    #@3b
    move-result v3

    #@3c
    .line 902
    .restart local v3    # "value":I
    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@3f
    move-result p1

    #@40
    .line 903
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    if-eqz v0, :cond_5

    #@42
    .line 904
    cmp-long v4, p3, v8

    #@44
    if-eqz v4, :cond_1

    #@46
    .line 905
    shr-long v4, p3, v10

    #@48
    long-to-int v4, v4

    #@49
    if-eq v3, v4, :cond_2

    #@4b
    .line 906
    return-wide v8

    #@4c
    .line 900
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "isFinal":Z
    goto :goto_1

    #@4e
    .line 912
    .end local v2    # "pos":I
    .restart local v3    # "value":I
    .restart local p1    # "pos":I
    :cond_5
    add-int v4, p1, v3

    #@50
    invoke-static {p0, v4, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    #@53
    move-result-wide p3

    #@54
    .line 913
    cmp-long v4, p3, v8

    #@56
    if-nez v4, :cond_2

    #@58
    .line 914
    return-wide v8

    #@59
    .line 919
    :cond_6
    add-int/lit8 v4, p1, 0x1

    #@5b
    int-to-long v4, v4

    #@5c
    const/16 v6, 0x21

    #@5e
    shl-long/2addr v4, v6

    #@5f
    const-wide v6, 0x1ffffffffL

    #@64
    and-long/2addr v6, p3

    #@65
    or-long/2addr v4, v6

    #@66
    return-wide v4
.end method

.method private static getNextBranchBytes([BIILjava/lang/Appendable;)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 961
    :goto_0
    const/4 v1, 0x5

    #@1
    if-le p2, v1, :cond_0

    #@3
    .line 962
    add-int/lit8 p1, p1, 0x1

    #@5
    .line 963
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    #@8
    move-result v1

    #@9
    shr-int/lit8 v2, p2, 0x1

    #@b
    invoke-static {p0, v1, v2, p3}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    #@e
    .line 964
    shr-int/lit8 v1, p2, 0x1

    #@10
    sub-int/2addr p2, v1

    #@11
    .line 965
    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    #@14
    move-result p1

    #@15
    goto :goto_0

    #@16
    .line 968
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@18
    .end local p1    # "pos":I
    .local v0, "pos":I
    aget-byte v1, p0, p1

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    invoke-static {p3, v1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    #@1f
    .line 969
    invoke-static {p0, v0}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    #@22
    move-result p1

    #@23
    .line 970
    .end local v0    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 p2, p2, -0x1

    #@25
    const/4 v1, 0x1

    #@26
    if-gt p2, v1, :cond_0

    #@28
    .line 971
    aget-byte v1, p0, p1

    #@2a
    and-int/lit16 v1, v1, 0xff

    #@2c
    invoke-static {p3, v1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    #@2f
    .line 960
    return-void
.end method

.method public static iterator([BII)Landroid/icu/util/BytesTrie$Iterator;
    .locals 6
    .param p0, "trieBytes"    # [B
    .param p1, "offset"    # I
    .param p2, "maxStringLength"    # I

    #@0
    .prologue
    .line 449
    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    #@2
    const/4 v3, -0x1

    #@3
    const/4 v5, 0x0

    #@4
    move-object v1, p0

    #@5
    move v2, p1

    #@6
    move v4, p2

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V

    #@a
    return-object v0
.end method

.method private static jumpByDelta([BI)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    #@0
    .prologue
    const/16 v3, 0xfe

    #@2
    .line 744
    add-int/lit8 v1, p1, 0x1

    #@4
    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-byte v2, p0, p1

    #@6
    and-int/lit16 v0, v2, 0xff

    #@8
    .line 745
    .local v0, "delta":I
    const/16 v2, 0xc0

    #@a
    if-ge v0, v2, :cond_0

    #@c
    move p1, v1

    #@d
    .line 759
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :goto_0
    add-int v2, p1, v0

    #@f
    return v2

    #@10
    .line 747
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    const/16 v2, 0xf0

    #@12
    if-ge v0, v2, :cond_1

    #@14
    .line 748
    add-int/lit16 v2, v0, -0xc0

    #@16
    shl-int/lit8 v2, v2, 0x8

    #@18
    add-int/lit8 p1, v1, 0x1

    #@1a
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v3, p0, v1

    #@1c
    and-int/lit16 v3, v3, 0xff

    #@1e
    or-int v0, v2, v3

    #@20
    goto :goto_0

    #@21
    .line 749
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    if-ge v0, v3, :cond_2

    #@23
    .line 750
    add-int/lit16 v2, v0, -0xf0

    #@25
    shl-int/lit8 v2, v2, 0x10

    #@27
    aget-byte v3, p0, v1

    #@29
    and-int/lit16 v3, v3, 0xff

    #@2b
    shl-int/lit8 v3, v3, 0x8

    #@2d
    or-int/2addr v2, v3

    #@2e
    add-int/lit8 v3, v1, 0x1

    #@30
    aget-byte v3, p0, v3

    #@32
    and-int/lit16 v3, v3, 0xff

    #@34
    or-int v0, v2, v3

    #@36
    .line 751
    add-int/lit8 p1, v1, 0x2

    #@38
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@39
    .line 752
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_2
    if-ne v0, v3, :cond_3

    #@3b
    .line 753
    aget-byte v2, p0, v1

    #@3d
    and-int/lit16 v2, v2, 0xff

    #@3f
    shl-int/lit8 v2, v2, 0x10

    #@41
    add-int/lit8 v3, v1, 0x1

    #@43
    aget-byte v3, p0, v3

    #@45
    and-int/lit16 v3, v3, 0xff

    #@47
    shl-int/lit8 v3, v3, 0x8

    #@49
    or-int/2addr v2, v3

    #@4a
    add-int/lit8 v3, v1, 0x2

    #@4c
    aget-byte v3, p0, v3

    #@4e
    and-int/lit16 v3, v3, 0xff

    #@50
    or-int v0, v2, v3

    #@52
    .line 754
    add-int/lit8 p1, v1, 0x3

    #@54
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@55
    .line 756
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_3
    aget-byte v2, p0, v1

    #@57
    shl-int/lit8 v2, v2, 0x18

    #@59
    add-int/lit8 v3, v1, 0x1

    #@5b
    aget-byte v3, p0, v3

    #@5d
    and-int/lit16 v3, v3, 0xff

    #@5f
    shl-int/lit8 v3, v3, 0x10

    #@61
    or-int/2addr v2, v3

    #@62
    add-int/lit8 v3, v1, 0x2

    #@64
    aget-byte v3, p0, v3

    #@66
    and-int/lit16 v3, v3, 0xff

    #@68
    shl-int/lit8 v3, v3, 0x8

    #@6a
    or-int/2addr v2, v3

    #@6b
    add-int/lit8 v3, v1, 0x3

    #@6d
    aget-byte v3, p0, v3

    #@6f
    and-int/lit16 v3, v3, 0xff

    #@71
    or-int v0, v2, v3

    #@73
    .line 757
    add-int/lit8 p1, v1, 0x4

    #@75
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0
.end method

.method private nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "inByte"    # I

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    const/4 v4, 0x0

    #@3
    .line 851
    :cond_0
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@5
    add-int/lit8 v2, p1, 0x1

    #@7
    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte v3, v3, p1

    #@9
    and-int/lit16 v1, v3, 0xff

    #@b
    .line 852
    .local v1, "node":I
    const/16 v3, 0x10

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 853
    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 854
    :cond_1
    if-ge v1, v5, :cond_3

    #@16
    .line 856
    add-int/lit8 v0, v1, -0x10

    #@18
    .line 857
    .local v0, "length":I
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@1a
    add-int/lit8 p1, v2, 0x1

    #@1c
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v3, v3, v2

    #@1e
    and-int/lit16 v3, v3, 0xff

    #@20
    if-ne p2, v3, :cond_4

    #@22
    .line 858
    add-int/lit8 v0, v0, -0x1

    #@24
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@26
    .line 859
    iput p1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@28
    .line 860
    if-gez v0, :cond_2

    #@2a
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@2c
    aget-byte v3, v3, p1

    #@2e
    and-int/lit16 v1, v3, 0xff

    #@30
    if-lt v1, v5, :cond_2

    #@32
    .line 861
    sget-object v3, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@34
    and-int/lit8 v4, v1, 0x1

    #@36
    aget-object v3, v3, v4

    #@38
    .line 860
    :goto_0
    return-object v3

    #@39
    .line 861
    :cond_2
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@3b
    goto :goto_0

    #@3c
    .line 866
    .end local v0    # "length":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    and-int/lit8 v3, v1, 0x1

    #@3e
    if-eqz v3, :cond_5

    #@40
    move p1, v2

    #@41
    .line 876
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_4
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@44
    .line 877
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@46
    return-object v3

    #@47
    .line 871
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_5
    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@4a
    move-result p1

    #@4b
    .line 873
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    sget-boolean v3, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@4d
    if-nez v3, :cond_0

    #@4f
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@51
    aget-byte v3, v3, p1

    #@53
    and-int/lit16 v3, v3, 0xff

    #@55
    if-ge v3, v5, :cond_6

    #@57
    const/4 v3, 0x1

    #@58
    :goto_1
    if-nez v3, :cond_0

    #@5a
    new-instance v3, Ljava/lang/AssertionError;

    #@5c
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@5f
    throw v3

    #@60
    :cond_6
    move v3, v4

    #@61
    goto :goto_1
.end method

.method private static readValue([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .param p2, "leadByte"    # I

    #@0
    .prologue
    const/16 v2, 0x7e

    #@2
    .line 711
    const/16 v1, 0x51

    #@4
    if-ge p2, v1, :cond_0

    #@6
    .line 712
    add-int/lit8 v0, p2, -0x10

    #@8
    .line 722
    .local v0, "value":I
    :goto_0
    return v0

    #@9
    .line 713
    .end local v0    # "value":I
    :cond_0
    const/16 v1, 0x6c

    #@b
    if-ge p2, v1, :cond_1

    #@d
    .line 714
    add-int/lit8 v1, p2, -0x51

    #@f
    shl-int/lit8 v1, v1, 0x8

    #@11
    aget-byte v2, p0, p1

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    or-int v0, v1, v2

    #@17
    .restart local v0    # "value":I
    goto :goto_0

    #@18
    .line 715
    .end local v0    # "value":I
    :cond_1
    if-ge p2, v2, :cond_2

    #@1a
    .line 716
    add-int/lit8 v1, p2, -0x6c

    #@1c
    shl-int/lit8 v1, v1, 0x10

    #@1e
    aget-byte v2, p0, p1

    #@20
    and-int/lit16 v2, v2, 0xff

    #@22
    shl-int/lit8 v2, v2, 0x8

    #@24
    or-int/2addr v1, v2

    #@25
    add-int/lit8 v2, p1, 0x1

    #@27
    aget-byte v2, p0, v2

    #@29
    and-int/lit16 v2, v2, 0xff

    #@2b
    or-int v0, v1, v2

    #@2d
    .restart local v0    # "value":I
    goto :goto_0

    #@2e
    .line 717
    .end local v0    # "value":I
    :cond_2
    if-ne p2, v2, :cond_3

    #@30
    .line 718
    aget-byte v1, p0, p1

    #@32
    and-int/lit16 v1, v1, 0xff

    #@34
    shl-int/lit8 v1, v1, 0x10

    #@36
    add-int/lit8 v2, p1, 0x1

    #@38
    aget-byte v2, p0, v2

    #@3a
    and-int/lit16 v2, v2, 0xff

    #@3c
    shl-int/lit8 v2, v2, 0x8

    #@3e
    or-int/2addr v1, v2

    #@3f
    add-int/lit8 v2, p1, 0x2

    #@41
    aget-byte v2, p0, v2

    #@43
    and-int/lit16 v2, v2, 0xff

    #@45
    or-int v0, v1, v2

    #@47
    .restart local v0    # "value":I
    goto :goto_0

    #@48
    .line 720
    .end local v0    # "value":I
    :cond_3
    aget-byte v1, p0, p1

    #@4a
    shl-int/lit8 v1, v1, 0x18

    #@4c
    add-int/lit8 v2, p1, 0x1

    #@4e
    aget-byte v2, p0, v2

    #@50
    and-int/lit16 v2, v2, 0xff

    #@52
    shl-int/lit8 v2, v2, 0x10

    #@54
    or-int/2addr v1, v2

    #@55
    add-int/lit8 v2, p1, 0x2

    #@57
    aget-byte v2, p0, v2

    #@59
    and-int/lit16 v2, v2, 0xff

    #@5b
    shl-int/lit8 v2, v2, 0x8

    #@5d
    or-int/2addr v1, v2

    #@5e
    add-int/lit8 v2, p1, 0x3

    #@60
    aget-byte v2, p0, v2

    #@62
    and-int/lit16 v2, v2, 0xff

    #@64
    or-int v0, v1, v2

    #@66
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private static skipDelta([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 763
    add-int/lit8 v1, p1, 0x1

    #@2
    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-byte v2, p0, p1

    #@4
    and-int/lit16 v0, v2, 0xff

    #@6
    .line 764
    .local v0, "delta":I
    const/16 v2, 0xc0

    #@8
    if-lt v0, v2, :cond_2

    #@a
    .line 765
    const/16 v2, 0xf0

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 766
    add-int/lit8 p1, v1, 0x1

    #@10
    .line 773
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :goto_0
    return p1

    #@11
    .line 767
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    const/16 v2, 0xfe

    #@13
    if-ge v0, v2, :cond_1

    #@15
    .line 768
    add-int/lit8 p1, v1, 0x2

    #@17
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@18
    .line 770
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    and-int/lit8 v2, v0, 0x1

    #@1a
    add-int/lit8 v2, v2, 0x3

    #@1c
    add-int p1, v1, v2

    #@1e
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@1f
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_2
    move p1, v1

    #@20
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0
.end method

.method private static skipValue(II)I
    .locals 1
    .param p0, "pos"    # I
    .param p1, "leadByte"    # I

    #@0
    .prologue
    .line 725
    sget-boolean v0, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    const/16 v0, 0x20

    #@6
    if-lt p1, v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 726
    :cond_1
    const/16 v0, 0xa2

    #@15
    if-lt p1, v0, :cond_2

    #@17
    .line 727
    const/16 v0, 0xd8

    #@19
    if-ge p1, v0, :cond_3

    #@1b
    .line 728
    add-int/lit8 p0, p0, 0x1

    #@1d
    .line 735
    :cond_2
    :goto_1
    return p0

    #@1e
    .line 729
    :cond_3
    const/16 v0, 0xfc

    #@20
    if-ge p1, v0, :cond_4

    #@22
    .line 730
    add-int/lit8 p0, p0, 0x2

    #@24
    goto :goto_1

    #@25
    .line 732
    :cond_4
    shr-int/lit8 v0, p1, 0x1

    #@27
    and-int/lit8 v0, v0, 0x1

    #@29
    add-int/lit8 v0, v0, 0x3

    #@2b
    add-int/2addr p0, v0

    #@2c
    goto :goto_1
.end method

.method private static skipValue([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 738
    add-int/lit8 v1, p1, 0x1

    #@2
    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-byte v2, p0, p1

    #@4
    and-int/lit16 v0, v2, 0xff

    #@6
    .line 739
    .local v0, "leadByte":I
    invoke-static {v1, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@9
    move-result v2

    #@a
    return v2
.end method

.method private stop()V
    .locals 1

    #@0
    .prologue
    .line 704
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@3
    .line 703
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public current()Landroid/icu/util/BytesTrie$Result;
    .locals 4

    #@0
    .prologue
    .line 194
    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@2
    .line 195
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@4
    .line 196
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6
    return-object v2

    #@7
    .line 199
    :cond_0
    iget v2, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@9
    if-gez v2, :cond_1

    #@b
    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@d
    aget-byte v2, v2, v1

    #@f
    and-int/lit16 v0, v2, 0xff

    #@11
    .local v0, "node":I
    const/16 v2, 0x20

    #@13
    if-lt v0, v2, :cond_1

    #@15
    .line 200
    sget-object v2, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@17
    and-int/lit8 v3, v0, 0x1

    #@19
    aget-object v2, v2, v3

    #@1b
    .line 199
    .end local v0    # "node":I
    :goto_0
    return-object v2

    #@1c
    .line 200
    :cond_1
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@1e
    goto :goto_0
.end method

.method public first(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1
    .param p1, "inByte"    # I

    #@0
    .prologue
    .line 213
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@3
    .line 214
    if-gez p1, :cond_0

    #@5
    .line 215
    add-int/lit16 p1, p1, 0x100

    #@7
    .line 217
    :cond_0
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    #@9
    invoke-direct {p0, v0, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getNextBytes(Ljava/lang/Appendable;)I
    .locals 7
    .param p1, "out"    # Ljava/lang/Appendable;

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 388
    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@6
    .line 389
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@8
    .line 390
    return v3

    #@9
    .line 392
    :cond_0
    iget v5, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@b
    if-ltz v5, :cond_1

    #@d
    .line 393
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@f
    aget-byte v3, v3, v1

    #@11
    and-int/lit16 v3, v3, 0xff

    #@13
    invoke-static {p1, v3}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    #@16
    .line 394
    return v4

    #@17
    .line 396
    :cond_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v5, v5, v1

    #@1d
    and-int/lit16 v0, v5, 0xff

    #@1f
    .line 397
    .local v0, "node":I
    if-lt v0, v6, :cond_4

    #@21
    .line 398
    and-int/lit8 v5, v0, 0x1

    #@23
    if-eqz v5, :cond_2

    #@25
    .line 399
    return v3

    #@26
    .line 401
    :cond_2
    invoke-static {v2, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@29
    move-result v1

    #@2a
    .line 402
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@2c
    add-int/lit8 v2, v1, 0x1

    #@2e
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v5, v1

    #@30
    and-int/lit16 v0, v5, 0xff

    #@32
    .line 403
    sget-boolean v5, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@34
    if-nez v5, :cond_4

    #@36
    if-ge v0, v6, :cond_3

    #@38
    move v3, v4

    #@39
    :cond_3
    if-nez v3, :cond_4

    #@3b
    new-instance v3, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v3

    #@41
    .line 406
    :cond_4
    const/16 v3, 0x10

    #@43
    if-ge v0, v3, :cond_5

    #@45
    .line 407
    if-nez v0, :cond_6

    #@47
    .line 408
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@49
    add-int/lit8 v1, v2, 0x1

    #@4b
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v3, v3, v2

    #@4d
    and-int/lit16 v0, v3, 0xff

    #@4f
    .line 410
    :goto_0
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@51
    add-int/lit8 v0, v0, 0x1

    #@53
    invoke-static {v3, v1, v0, p1}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    #@56
    .line 411
    return v0

    #@57
    .line 414
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_5
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@59
    aget-byte v3, v3, v2

    #@5b
    and-int/lit16 v3, v3, 0xff

    #@5d
    invoke-static {p1, v3}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    #@60
    .line 415
    return v4

    #@61
    :cond_6
    move v1, v2

    #@62
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0
.end method

.method public getUniqueValue()J
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/16 v6, 0x1f

    #@4
    .line 369
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@6
    .line 370
    .local v0, "pos":I
    if-gez v0, :cond_0

    #@8
    .line 371
    return-wide v8

    #@9
    .line 374
    :cond_0
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@b
    iget v4, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@d
    add-int/2addr v4, v0

    #@e
    add-int/lit8 v4, v4, 0x1

    #@10
    invoke-static {v1, v4, v8, v9}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    #@13
    move-result-wide v2

    #@14
    .line 376
    .local v2, "uniqueValue":J
    shl-long v4, v2, v6

    #@16
    shr-long/2addr v4, v6

    #@17
    return-wide v4
.end method

.method public getValue()I
    .locals 5

    #@0
    .prologue
    .line 354
    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@2
    .line 355
    .local v1, "pos":I
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v3, v3, v1

    #@8
    and-int/lit16 v0, v3, 0xff

    #@a
    .line 356
    .local v0, "leadByte":I
    sget-boolean v3, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@c
    if-nez v3, :cond_1

    #@e
    const/16 v3, 0x20

    #@10
    if-lt v0, v3, :cond_0

    #@12
    const/4 v3, 0x1

    #@13
    :goto_0
    if-nez v3, :cond_1

    #@15
    new-instance v3, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1a
    throw v3

    #@1b
    :cond_0
    const/4 v3, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 357
    :cond_1
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@1f
    shr-int/lit8 v4, v0, 0x1

    #@21
    invoke-static {v3, v2, v4}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    #@24
    move-result v3

    #@25
    return v3
.end method

.method public iterator()Landroid/icu/util/BytesTrie$Iterator;
    .locals 6

    #@0
    .prologue
    .line 425
    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    #@2
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@4
    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@6
    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@8
    const/4 v4, 0x0

    #@9
    const/4 v5, 0x0

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V

    #@d
    return-object v0
.end method

.method public iterator(I)Landroid/icu/util/BytesTrie$Iterator;
    .locals 6
    .param p1, "maxStringLength"    # I

    #@0
    .prologue
    .line 436
    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    #@2
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@4
    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@6
    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@8
    const/4 v5, 0x0

    #@9
    move v4, p1

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V

    #@d
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->iterator()Landroid/icu/util/BytesTrie$Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next(I)Landroid/icu/util/BytesTrie$Result;
    .locals 6
    .param p1, "inByte"    # I

    #@0
    .prologue
    .line 228
    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@2
    .line 229
    .local v2, "pos":I
    if-gez v2, :cond_0

    #@4
    .line 230
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6
    return-object v4

    #@7
    .line 232
    :cond_0
    if-gez p1, :cond_1

    #@9
    .line 233
    add-int/lit16 p1, p1, 0x100

    #@b
    .line 235
    :cond_1
    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@d
    .line 236
    .local v0, "length":I
    if-ltz v0, :cond_4

    #@f
    .line 238
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@11
    add-int/lit8 v3, v2, 0x1

    #@13
    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v4, v4, v2

    #@15
    and-int/lit16 v4, v4, 0xff

    #@17
    if-ne p1, v4, :cond_3

    #@19
    .line 239
    add-int/lit8 v0, v0, -0x1

    #@1b
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@1d
    .line 240
    iput v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@1f
    .line 242
    if-gez v0, :cond_2

    #@21
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@23
    aget-byte v4, v4, v3

    #@25
    and-int/lit16 v1, v4, 0xff

    #@27
    .local v1, "node":I
    const/16 v4, 0x20

    #@29
    if-lt v1, v4, :cond_2

    #@2b
    .line 243
    sget-object v4, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@2d
    and-int/lit8 v5, v1, 0x1

    #@2f
    aget-object v4, v4, v5

    #@31
    .line 242
    .end local v1    # "node":I
    :goto_0
    return-object v4

    #@32
    .line 243
    :cond_2
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@34
    goto :goto_0

    #@35
    .line 245
    :cond_3
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@38
    .line 246
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@3a
    return-object v4

    #@3b
    .line 249
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    invoke-direct {p0, v2, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    #@3e
    move-result-object v4

    #@3f
    return-object v4
.end method

.method public next([BII)Landroid/icu/util/BytesTrie$Result;
    .locals 10
    .param p1, "s"    # [B
    .param p2, "sIndex"    # I
    .param p3, "sLimit"    # I

    #@0
    .prologue
    const/16 v9, 0x20

    #@2
    const/4 v8, 0x0

    #@3
    .line 269
    if-lt p2, p3, :cond_0

    #@5
    .line 271
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->current()Landroid/icu/util/BytesTrie$Result;

    #@8
    move-result-object v7

    #@9
    return-object v7

    #@a
    .line 273
    :cond_0
    iget v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@c
    .line 274
    .local v3, "pos":I
    if-gez v3, :cond_1

    #@e
    .line 275
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@10
    return-object v7

    #@11
    .line 277
    :cond_1
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@13
    .local v1, "length":I
    move v6, p2

    #@14
    .line 283
    .end local p2    # "sIndex":I
    .local v6, "sIndex":I
    :goto_0
    if-ne v6, p3, :cond_3

    #@16
    .line 284
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@18
    .line 285
    iput v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@1a
    .line 287
    if-gez v1, :cond_2

    #@1c
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@1e
    aget-byte v7, v7, v3

    #@20
    and-int/lit16 v2, v7, 0xff

    #@22
    .local v2, "node":I
    if-lt v2, v9, :cond_2

    #@24
    .line 288
    sget-object v7, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@26
    and-int/lit8 v8, v2, 0x1

    #@28
    aget-object v7, v7, v8

    #@2a
    .line 287
    .end local v2    # "node":I
    :goto_1
    return-object v7

    #@2b
    .line 288
    :cond_2
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@2d
    goto :goto_1

    #@2e
    .line 290
    :cond_3
    add-int/lit8 p2, v6, 0x1

    #@30
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    aget-byte v0, p1, v6

    #@32
    .line 291
    .local v0, "inByte":B
    if-gez v1, :cond_5

    #@34
    .line 292
    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@36
    .line 303
    :cond_4
    :goto_2
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@38
    add-int/lit8 v4, v3, 0x1

    #@3a
    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v7, v7, v3

    #@3c
    and-int/lit16 v2, v7, 0xff

    #@3e
    .line 304
    .restart local v2    # "node":I
    const/16 v7, 0x10

    #@40
    if-ge v2, v7, :cond_a

    #@42
    .line 305
    and-int/lit16 v7, v0, 0xff

    #@44
    invoke-direct {p0, v4, v2, v7}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    #@47
    move-result-object v5

    #@48
    .line 306
    .local v5, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@4a
    if-ne v5, v7, :cond_7

    #@4c
    .line 307
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@4e
    return-object v7

    #@4f
    .line 295
    .end local v2    # "node":I
    .end local v4    # "pos":I
    .end local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    .restart local v3    # "pos":I
    :cond_5
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@51
    aget-byte v7, v7, v3

    #@53
    if-eq v0, v7, :cond_6

    #@55
    .line 296
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@58
    .line 297
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@5a
    return-object v7

    #@5b
    .line 299
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@5d
    .line 300
    add-int/lit8 v1, v1, -0x1

    #@5f
    :goto_3
    move v6, p2

    #@60
    .end local p2    # "sIndex":I
    .restart local v6    # "sIndex":I
    goto :goto_0

    #@61
    .line 310
    .end local v3    # "pos":I
    .end local v6    # "sIndex":I
    .restart local v2    # "node":I
    .restart local v4    # "pos":I
    .restart local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    .restart local p2    # "sIndex":I
    :cond_7
    if-ne p2, p3, :cond_8

    #@63
    .line 311
    return-object v5

    #@64
    .line 313
    :cond_8
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@66
    if-ne v5, v7, :cond_9

    #@68
    .line 315
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@6b
    .line 316
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6d
    return-object v7

    #@6e
    .line 318
    :cond_9
    add-int/lit8 v6, p2, 0x1

    #@70
    .end local p2    # "sIndex":I
    .restart local v6    # "sIndex":I
    aget-byte v0, p1, p2

    #@72
    .line 319
    iget v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@74
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    move p2, v6

    #@75
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    goto :goto_2

    #@76
    .line 320
    .end local v3    # "pos":I
    .end local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    .restart local v4    # "pos":I
    :cond_a
    if-ge v2, v9, :cond_c

    #@78
    .line 322
    add-int/lit8 v1, v2, -0x10

    #@7a
    .line 323
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@7c
    aget-byte v7, v7, v4

    #@7e
    if-eq v0, v7, :cond_b

    #@80
    .line 324
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@83
    .line 325
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@85
    return-object v7

    #@86
    .line 327
    :cond_b
    add-int/lit8 v3, v4, 0x1

    #@88
    .line 328
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    add-int/lit8 v1, v1, -0x1

    #@8a
    .line 329
    goto :goto_3

    #@8b
    .line 330
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_c
    and-int/lit8 v7, v2, 0x1

    #@8d
    if-eqz v7, :cond_d

    #@8f
    .line 332
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    #@92
    .line 333
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@94
    return-object v7

    #@95
    .line 336
    :cond_d
    invoke-static {v4, v2}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    #@98
    move-result v3

    #@99
    .line 338
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    sget-boolean v7, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    #@9b
    if-nez v7, :cond_4

    #@9d
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@9f
    aget-byte v7, v7, v3

    #@a1
    and-int/lit16 v7, v7, 0xff

    #@a3
    if-ge v7, v9, :cond_e

    #@a5
    const/4 v7, 0x1

    #@a6
    :goto_4
    if-nez v7, :cond_4

    #@a8
    new-instance v7, Ljava/lang/AssertionError;

    #@aa
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@ad
    throw v7

    #@ae
    :cond_e
    move v7, v8

    #@af
    goto :goto_4
.end method

.method public reset()Landroid/icu/util/BytesTrie;
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    #@2
    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@4
    .line 67
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@7
    .line 68
    return-object p0
.end method

.method public resetToState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .locals 2
    .param p1, "state"    # Landroid/icu/util/BytesTrie$State;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@2
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get0(Landroid/icu/util/BytesTrie$State;)[B

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@a
    if-eqz v0, :cond_0

    #@c
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    #@e
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get3(Landroid/icu/util/BytesTrie$State;)I

    #@11
    move-result v1

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 115
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get1(Landroid/icu/util/BytesTrie$State;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@1a
    .line 116
    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get2(Landroid/icu/util/BytesTrie$State;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@20
    .line 120
    return-object p0

    #@21
    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v1, "incompatible trie state"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method public saveState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .locals 1
    .param p1, "state"    # Landroid/icu/util/BytesTrie$State;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    #@2
    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set0(Landroid/icu/util/BytesTrie$State;[B)[B

    #@5
    .line 97
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    #@7
    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set3(Landroid/icu/util/BytesTrie$State;I)I

    #@a
    .line 98
    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    #@c
    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set1(Landroid/icu/util/BytesTrie$State;I)I

    #@f
    .line 99
    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    #@11
    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set2(Landroid/icu/util/BytesTrie$State;I)I

    #@14
    .line 100
    return-object p0
.end method
