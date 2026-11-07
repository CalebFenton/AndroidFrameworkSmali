.class public final Landroid/icu/util/CharsTrie;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CharsTrie$State;,
        Landroid/icu/util/CharsTrie$Iterator;,
        Landroid/icu/util/CharsTrie$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o kMaxBranchLinearSubNodeLength:I = 0x5

.field static final greylist-max-o kMaxLinearMatchLength:I = 0x10

.field static final greylist-max-o kMaxOneUnitDelta:I = 0xfbff

.field static final greylist-max-o kMaxOneUnitNodeValue:I = 0xff

.field static final greylist-max-o kMaxOneUnitValue:I = 0x3fff

.field static final greylist-max-o kMaxTwoUnitDelta:I = 0x3feffff

.field static final greylist-max-o kMaxTwoUnitNodeValue:I = 0xfdffff

.field static final greylist-max-o kMaxTwoUnitValue:I = 0x3ffeffff

.field static final greylist-max-o kMinLinearMatch:I = 0x30

.field static final greylist-max-o kMinTwoUnitDeltaLead:I = 0xfc00

.field static final greylist-max-o kMinTwoUnitNodeValueLead:I = 0x4040

.field static final greylist-max-o kMinTwoUnitValueLead:I = 0x4000

.field static final greylist-max-o kMinValueLead:I = 0x40

.field static final greylist-max-o kNodeTypeMask:I = 0x3f

.field static final greylist-max-o kThreeUnitDeltaLead:I = 0xffff

.field static final greylist-max-o kThreeUnitNodeValueLead:I = 0x7fc0

.field static final greylist-max-o kThreeUnitValueLead:I = 0x7fff

.field static final greylist-max-o kValueIsFinal:I = 0x8000

.field private static greylist-max-o valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private greylist-max-o chars_:Ljava/lang/CharSequence;

.field private greylist-max-o pos_:I

.field private greylist-max-o remainingMatchLength_:I

.field private greylist-max-o root_:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smjumpByDelta(Ljava/lang/CharSequence;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadNodeValue(Ljava/lang/CharSequence;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadValue(Ljava/lang/CharSequence;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smskipDelta(Ljava/lang/CharSequence;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smskipNodeValue(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smskipValue(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 33
    nop

    .line 750
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/CharsTrie;)V
    .registers 3
    .param p1, "other"    # Landroid/icu/util/CharsTrie;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    .line 62
    iget v0, p1, Landroid/icu/util/CharsTrie;->root_:I

    iput v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    .line 63
    iget v0, p1, Landroid/icu/util/CharsTrie;->pos_:I

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 64
    iget v0, p1, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 65
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "trieChars"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    .line 50
    iput p2, p0, Landroid/icu/util/CharsTrie;->root_:I

    iput p2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 52
    return-void
.end method

.method private static greylist-max-o append(Ljava/lang/Appendable;I)V
    .registers 4
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "c"    # I

    .line 949
    int-to-char v0, p1

    :try_start_1
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 952
    nop

    .line 953
    return-void

    .line 950
    :catch_6
    move-exception v0

    .line 951
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o branchNext(III)Landroid/icu/util/BytesTrie$Result;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "inUnit"    # I

    .line 755
    if-nez p2, :cond_b

    .line 756
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    move p1, v1

    .line 758
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :cond_b
    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 761
    :goto_d
    const/4 v1, 0x5

    if-le p2, v1, :cond_2d

    .line 762
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ge p3, p1, :cond_23

    .line 763
    shr-int/lit8 p2, p2, 0x1

    .line 764
    iget-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_d

    .line 766
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_23
    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p2, p1

    .line 767
    iget-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_d

    .line 774
    :cond_2d
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v1, 0x40

    if-ne p3, p1, :cond_8c

    .line 776
    iget-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 777
    .local p1, "node":I
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_48

    .line 779
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_89

    .line 782
    .end local v0    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    .line 785
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_50

    .line 786
    move v0, p1

    .local v0, "delta":I
    goto :goto_76

    .line 787
    .end local v0    # "delta":I
    :cond_50
    const/16 v0, 0x7fff

    if-ge p1, v0, :cond_63

    .line 788
    add-int/lit16 v0, p1, -0x4000

    shl-int/lit8 v0, v0, 0x10

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "pos":I
    .local v4, "pos":I
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    move v2, v4

    .restart local v0    # "delta":I
    goto :goto_76

    .line 790
    .end local v0    # "delta":I
    .end local v4    # "pos":I
    .restart local v2    # "pos":I
    :cond_63
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    or-int/2addr v0, v3

    .line 791
    .restart local v0    # "delta":I
    add-int/lit8 v2, v2, 0x2

    .line 794
    :goto_76
    add-int/2addr v2, v0

    .line 795
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 796
    if-lt p1, v1, :cond_86

    sget-object v1, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v3, p1, 0xf

    aget-object v1, v1, v3

    goto :goto_88

    :cond_86
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_88
    move-object v0, v1

    .line 798
    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    :goto_89
    iput v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 799
    return-object v0

    .line 801
    .end local v0    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local p1    # "node":I
    :cond_8c
    add-int/lit8 p2, p2, -0x1

    .line 802
    iget-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 803
    .end local v2    # "pos":I
    .local p1, "pos":I
    if-gt p2, v0, :cond_2d

    .line 804
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p3, p1, :cond_b4

    .line 805
    iput v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 806
    iget-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 807
    .local p1, "node":I
    if-lt p1, v1, :cond_b1

    sget-object v0, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v1, p1, 0xf

    aget-object v0, v0, v1

    goto :goto_b3

    :cond_b1
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    :goto_b3
    return-object v0

    .line 809
    .end local p1    # "node":I
    :cond_b4
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 810
    sget-object p1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object p1
.end method

.method private static greylist-max-o findUniqueValue(Ljava/lang/CharSequence;IJ)J
    .registers 12
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "uniqueValue"    # J

    .line 892
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 894
    .local p1, "node":I
    :goto_6
    const/16 v1, 0x30

    const-wide/16 v2, 0x0

    if-ge p1, v1, :cond_2d

    .line 895
    if-nez p1, :cond_15

    .line 896
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    move v0, v1

    .line 898
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :cond_15
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    move-result-wide p2

    .line 899
    cmp-long v1, p2, v2

    if-nez v1, :cond_20

    .line 900
    return-wide v2

    .line 902
    :cond_20
    const/16 v1, 0x21

    ushr-long v1, p2, v1

    long-to-int v0, v1

    .line 903
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    move v0, v1

    goto :goto_6

    .line 904
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :cond_2d
    const/16 v1, 0x40

    const/4 v4, 0x1

    if-ge p1, v1, :cond_3e

    .line 906
    add-int/lit8 v1, p1, -0x30

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 907
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .restart local v1    # "pos":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    move v0, v1

    goto :goto_6

    .line 909
    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    :cond_3e
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_46

    move v1, v4

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    .line 911
    .local v1, "isFinal":Z
    :goto_47
    if-eqz v1, :cond_50

    .line 912
    and-int/lit16 v5, p1, 0x7fff

    invoke-static {p0, v0, v5}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v5

    .local v5, "value":I
    goto :goto_54

    .line 914
    .end local v5    # "value":I
    :cond_50
    invoke-static {p0, v0, p1}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 916
    .restart local v5    # "value":I
    :goto_54
    cmp-long v6, p2, v2

    if-eqz v6, :cond_5e

    .line 917
    shr-long v6, p2, v4

    long-to-int v4, v6

    if-eq v5, v4, :cond_64

    .line 918
    return-wide v2

    .line 921
    :cond_5e
    int-to-long v2, v5

    shl-long/2addr v2, v4

    const-wide/16 v6, 0x1

    or-long p2, v2, v6

    .line 923
    :cond_64
    if-eqz v1, :cond_67

    .line 924
    return-wide p2

    .line 926
    :cond_67
    invoke-static {v0, p1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v0

    .line 927
    and-int/lit8 p1, p1, 0x3f

    .line 928
    .end local v1    # "isFinal":Z
    .end local v5    # "value":I
    goto :goto_6
.end method

.method private static greylist-max-o findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J
    .registers 15
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "uniqueValue"    # J

    .line 852
    nop

    :goto_1
    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    if-le p2, v0, :cond_1f

    .line 853
    add-int/lit8 p1, p1, 0x1

    .line 854
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v0

    shr-int/lit8 v3, p2, 0x1

    invoke-static {p0, v0, v3, p3, p4}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    move-result-wide p3

    .line 855
    cmp-long v0, p3, v1

    if-nez v0, :cond_17

    .line 856
    return-wide v1

    .line 858
    :cond_17
    shr-int/lit8 v0, p2, 0x1

    sub-int/2addr p2, v0

    .line 859
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_1

    .line 862
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 864
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "pos":I
    .local v3, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 865
    .local p1, "node":I
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2f

    move v4, v0

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    .line 866
    .local v4, "isFinal":Z
    :goto_30
    and-int/lit16 p1, p1, 0x7fff

    .line 867
    invoke-static {p0, v3, p1}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 868
    .local v5, "value":I
    invoke-static {v3, p1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    move-result v3

    .line 869
    if-eqz v4, :cond_4d

    .line 870
    cmp-long v6, p3, v1

    if-eqz v6, :cond_46

    .line 871
    shr-long v6, p3, v0

    long-to-int v6, v6

    if-eq v5, v6, :cond_58

    .line 872
    return-wide v1

    .line 875
    :cond_46
    int-to-long v6, v5

    shl-long/2addr v6, v0

    const-wide/16 v8, 0x1

    or-long p3, v6, v8

    goto :goto_58

    .line 878
    :cond_4d
    add-int v6, v3, v5

    invoke-static {p0, v6, p3, p4}, Landroid/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    move-result-wide p3

    .line 879
    cmp-long v6, p3, v1

    if-nez v6, :cond_58

    .line 880
    return-wide v1

    .line 883
    .end local v4    # "isFinal":Z
    .end local v5    # "value":I
    .end local p1    # "node":I
    :cond_58
    :goto_58
    add-int/lit8 p2, p2, -0x1

    if-gt p2, v0, :cond_6a

    .line 885
    add-int/lit8 p1, v3, 0x1

    int-to-long v0, p1

    const/16 p1, 0x21

    shl-long/2addr v0, p1

    const-wide v4, 0x1ffffffffL

    and-long/2addr v4, p3

    or-long/2addr v0, v4

    return-wide v0

    .line 883
    :cond_6a
    move p1, v3

    goto :goto_1f
.end method

.method private static greylist-max-o getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V
    .registers 6
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/lang/Appendable;

    .line 935
    nop

    :goto_1
    const/4 v0, 0x5

    if-le p2, v0, :cond_17

    .line 936
    add-int/lit8 p1, p1, 0x1

    .line 937
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v0

    shr-int/lit8 v1, p2, 0x1

    invoke-static {p0, v0, v1, p3}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    .line 938
    shr-int/lit8 v0, p2, 0x1

    sub-int/2addr p2, v0

    .line 939
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_1

    .line 942
    :cond_17
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p3, p1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    .line 943
    invoke-static {p0, v0}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 944
    .end local v0    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x1

    if-gt p2, v0, :cond_17

    .line 945
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {p3, v0}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    .line 946
    return-void
.end method

.method public static greylist-max-o iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;
    .registers 9
    .param p0, "trieChars"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "maxStringLength"    # I

    .line 442
    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    .end local p0    # "trieChars":Ljava/lang/CharSequence;
    .end local p1    # "offset":I
    .end local p2    # "maxStringLength":I
    .local v1, "trieChars":Ljava/lang/CharSequence;
    .local v2, "offset":I
    .local v4, "maxStringLength":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie-IA;)V

    return-object v0
.end method

.method private static greylist-max-o jumpByDelta(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 726
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 727
    .local p1, "delta":I
    const v1, 0xfc00

    if-lt p1, v1, :cond_2e

    .line 728
    const v2, 0xffff

    if-ne p1, v2, :cond_21

    .line 729
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int p1, v1, v2

    .line 730
    add-int/lit8 v0, v0, 0x2

    goto :goto_2e

    .line 732
    :cond_21
    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    or-int p1, v1, v0

    move v0, v2

    .line 735
    .end local v2    # "pos":I
    .restart local v0    # "pos":I
    :cond_2e
    :goto_2e
    add-int v1, v0, p1

    return v1
.end method

.method private greylist-max-o nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .registers 8
    .param p1, "pos"    # I
    .param p2, "inUnit"    # I

    .line 816
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 818
    .local p1, "node":I
    :goto_8
    const/16 v0, 0x30

    if-ge p1, v0, :cond_11

    .line 819
    invoke-direct {p0, v1, p1, p2}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0

    .line 820
    :cond_11
    const/16 v0, 0x40

    if-ge p1, v0, :cond_3e

    .line 822
    add-int/lit8 v2, p1, -0x30

    .line 823
    .local v2, "length":I
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne p2, v1, :cond_3c

    .line 824
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 825
    iput v4, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 826
    if-gez v2, :cond_39

    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move p1, v1

    if-lt v1, v0, :cond_39

    .line 827
    sget-object v0, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v1, p1, 0xf

    aget-object v0, v0, v1

    goto :goto_3b

    :cond_39
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 826
    :goto_3b
    return-object v0

    .line 823
    :cond_3c
    move v1, v4

    goto :goto_45

    .line 832
    .end local v2    # "length":I
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_3e
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4b

    .line 834
    nop

    .line 841
    :goto_45
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 842
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v0

    .line 837
    :cond_4b
    invoke-static {v1, p1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v1

    .line 838
    and-int/lit8 p1, p1, 0x3f

    goto :goto_8
.end method

.method private static greylist-max-o readNodeValue(Ljava/lang/CharSequence;II)I
    .registers 5
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "leadUnit"    # I

    .line 702
    nop

    .line 704
    const/16 v0, 0x4040

    if-ge p2, v0, :cond_a

    .line 705
    shr-int/lit8 v0, p2, 0x6

    add-int/lit8 v0, v0, -0x1

    .local v0, "value":I
    goto :goto_26

    .line 706
    .end local v0    # "value":I
    :cond_a
    const/16 v1, 0x7fc0

    if-ge p2, v1, :cond_19

    .line 707
    and-int/lit16 v1, p2, 0x7fc0

    sub-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0xa

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    .restart local v0    # "value":I
    goto :goto_26

    .line 709
    .end local v0    # "value":I
    :cond_19
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    .line 711
    .restart local v0    # "value":I
    :goto_26
    return v0
.end method

.method private static greylist-max-o readValue(Ljava/lang/CharSequence;II)I
    .registers 5
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "leadUnit"    # I

    .line 677
    const/16 v0, 0x4000

    if-ge p2, v0, :cond_6

    .line 678
    move v0, p2

    .local v0, "value":I
    goto :goto_21

    .line 679
    .end local v0    # "value":I
    :cond_6
    const/16 v0, 0x7fff

    if-ge p2, v0, :cond_14

    .line 680
    add-int/lit16 v0, p2, -0x4000

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    .restart local v0    # "value":I
    goto :goto_21

    .line 682
    .end local v0    # "value":I
    :cond_14
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    .line 684
    .restart local v0    # "value":I
    :goto_21
    return v0
.end method

.method private static greylist-max-o skipDelta(Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 739
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 740
    .local p1, "delta":I
    const v1, 0xfc00

    if-lt p1, v1, :cond_15

    .line 741
    const v1, 0xffff

    if-ne p1, v1, :cond_13

    .line 742
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 744
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 747
    :cond_15
    :goto_15
    return v0
.end method

.method private static greylist-max-o skipNodeValue(II)I
    .registers 3
    .param p0, "pos"    # I
    .param p1, "leadUnit"    # I

    .line 714
    nop

    .line 715
    const/16 v0, 0x4040

    if-lt p1, v0, :cond_e

    .line 716
    const/16 v0, 0x7fc0

    if-ge p1, v0, :cond_c

    .line 717
    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    .line 719
    :cond_c
    add-int/lit8 p0, p0, 0x2

    .line 722
    :cond_e
    :goto_e
    return p0
.end method

.method private static greylist-max-o skipValue(II)I
    .registers 3
    .param p0, "pos"    # I
    .param p1, "leadUnit"    # I

    .line 687
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_d

    .line 688
    const/16 v0, 0x7fff

    if-ge p1, v0, :cond_b

    .line 689
    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    .line 691
    :cond_b
    add-int/lit8 p0, p0, 0x2

    .line 694
    :cond_d
    :goto_d
    return p0
.end method

.method private static greylist-max-o skipValue(Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 697
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 698
    .local p1, "leadUnit":I
    and-int/lit16 v1, p1, 0x7fff

    invoke-static {v0, v1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    move-result v1

    return v1
.end method

.method private greylist-max-o stop()V
    .registers 2

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 671
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/icu/util/CharsTrie;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CharsTrie;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->clone()Landroid/icu/util/CharsTrie;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o current()Landroid/icu/util/BytesTrie$Result;
    .registers 5

    .line 174
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 175
    .local v0, "pos":I
    if-gez v0, :cond_7

    .line 176
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v1

    .line 179
    :cond_7
    iget v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    if-gez v1, :cond_1d

    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "node":I
    const/16 v3, 0x40

    if-lt v1, v3, :cond_1d

    .line 180
    sget-object v1, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v3, v2, 0xf

    aget-object v1, v1, v3

    goto :goto_1f

    .end local v2    # "node":I
    :cond_1d
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 179
    :goto_1f
    return-object v1
.end method

.method public greylist-max-o first(I)Landroid/icu/util/BytesTrie$Result;
    .registers 3
    .param p1, "inUnit"    # I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 192
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CharsTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;
    .registers 3
    .param p1, "cp"    # I

    .line 203
    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 204
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_23

    .line 205
    :cond_a
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 206
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_23

    .line 207
    :cond_21
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    .line 203
    :goto_23
    return-object v0
.end method

.method public greylist-max-o getNextChars(Ljava/lang/Appendable;)I
    .registers 7
    .param p1, "out"    # Ljava/lang/Appendable;

    .line 384
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 385
    .local v0, "pos":I
    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 386
    return v1

    .line 388
    :cond_6
    iget v2, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v3, 0x1

    if-ltz v2, :cond_15

    .line 389
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p1, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    .line 390
    return v3

    .line 392
    :cond_15
    iget-object v2, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "pos":I
    .local v4, "pos":I
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 393
    .local v0, "node":I
    const/16 v2, 0x40

    if-lt v0, v2, :cond_2e

    .line 394
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_28

    .line 395
    return v1

    .line 397
    :cond_28
    invoke-static {v4, v0}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v4

    .line 398
    and-int/lit8 v0, v0, 0x3f

    .line 401
    :cond_2e
    const/16 v1, 0x30

    if-ge v0, v1, :cond_44

    .line 402
    if-nez v0, :cond_3d

    .line 403
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "pos":I
    .local v2, "pos":I
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v4, v2

    .line 405
    .end local v2    # "pos":I
    .restart local v4    # "pos":I
    :cond_3d
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/2addr v0, v3

    invoke-static {v1, v4, v0, p1}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    .line 406
    return v0

    .line 409
    :cond_44
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p1, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    .line 410
    return v3
.end method

.method public blacklist getState64()J
    .registers 5

    .line 95
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getUniqueValue()J
    .registers 7

    .line 366
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 367
    .local v0, "pos":I
    const-wide/16 v1, 0x0

    if-gez v0, :cond_7

    .line 368
    return-wide v1

    .line 371
    :cond_7
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4, v1, v2}, Landroid/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    move-result-wide v1

    .line 373
    .local v1, "uniqueValue":J
    const/16 v3, 0x1f

    shl-long v4, v1, v3

    shr-long v3, v4, v3

    return-wide v3
.end method

.method public greylist-max-o getValue()I
    .registers 5

    .line 351
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 352
    .local v0, "pos":I
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 353
    .local v0, "leadUnit":I
    nop

    .line 354
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    .line 355
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v3, v0, 0x7fff

    invoke-static {v1, v2, v3}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_20

    :cond_1a
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 354
    :goto_20
    return v1
.end method

.method public blacklist iterator()Landroid/icu/util/CharsTrie$Iterator;
    .registers 7

    .line 420
    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie-IA;)V

    return-object v0
.end method

.method public greylist-max-o iterator(I)Landroid/icu/util/CharsTrie$Iterator;
    .registers 8
    .param p1, "maxStringLength"    # I

    .line 430
    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move v4, p1

    .end local p1    # "maxStringLength":I
    .local v4, "maxStringLength":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o next(I)Landroid/icu/util/BytesTrie$Result;
    .registers 7
    .param p1, "inUnit"    # I

    .line 216
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 217
    .local v0, "pos":I
    if-gez v0, :cond_7

    .line 218
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v1

    .line 220
    :cond_7
    iget v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 221
    .local v1, "length":I
    if-ltz v1, :cond_38

    .line 223
    iget-object v2, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_32

    .line 224
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 225
    iput v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 227
    if-gez v1, :cond_2f

    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v2, v0

    .local v2, "node":I
    const/16 v4, 0x40

    if-lt v0, v4, :cond_2f

    .line 228
    sget-object v0, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v4, v2, 0xf

    aget-object v0, v0, v4

    goto :goto_31

    .end local v2    # "node":I
    :cond_2f
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 227
    :goto_31
    return-object v0

    .line 230
    :cond_32
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 231
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v0

    .line 234
    .end local v3    # "pos":I
    .restart local v0    # "pos":I
    :cond_38
    invoke-direct {p0, v0, p1}, Landroid/icu/util/CharsTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o next(Ljava/lang/CharSequence;II)Landroid/icu/util/BytesTrie$Result;
    .registers 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sIndex"    # I
    .param p3, "sLimit"    # I

    .line 267
    if-lt p2, p3, :cond_7

    .line 269
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->current()Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0

    .line 271
    :cond_7
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 272
    .local v0, "pos":I
    if-gez v0, :cond_e

    .line 273
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v1

    .line 275
    :cond_e
    iget v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 281
    .local v1, "length":I
    :goto_10
    const/16 v2, 0x40

    if-ne p2, p3, :cond_2d

    .line 282
    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 283
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 285
    if-gez v1, :cond_2a

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v4, v3

    .local v4, "node":I
    if-lt v3, v2, :cond_2a

    .line 286
    sget-object v2, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v3, v4, 0xf

    aget-object v2, v2, v3

    goto :goto_2c

    .end local v4    # "node":I
    :cond_2a
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 285
    :goto_2c
    return-object v2

    .line 288
    :cond_2d
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sIndex":I
    .local v3, "sIndex":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 289
    .local p2, "inUnit":C
    if-gez v1, :cond_9c

    .line 290
    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 291
    nop

    .line 300
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 302
    .local v0, "node":I
    :goto_40
    const/16 v4, 0x30

    if-ge v0, v4, :cond_6f

    .line 303
    invoke-direct {p0, v5, v0, p2}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    .line 304
    .local v4, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v4, v6, :cond_4f

    .line 305
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 308
    :cond_4f
    if-ne v3, p3, :cond_52

    .line 309
    return-object v4

    .line 311
    :cond_52
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v4, v6, :cond_5c

    .line 313
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 314
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 316
    :cond_5c
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "sIndex":I
    .local v6, "sIndex":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 317
    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 318
    .end local v5    # "pos":I
    .local v3, "pos":I
    iget-object v5, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "pos":I
    .local v7, "pos":I
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 319
    .end local v4    # "result":Landroid/icu/util/BytesTrie$Result;
    move v3, v6

    move v5, v7

    goto :goto_40

    .end local v6    # "sIndex":I
    .end local v7    # "pos":I
    .local v3, "sIndex":I
    .restart local v5    # "pos":I
    :cond_6f
    if-ge v0, v2, :cond_89

    .line 321
    add-int/lit8 v1, v0, -0x30

    .line 322
    iget-object v2, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq p2, v2, :cond_81

    .line 323
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 324
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 326
    :cond_81
    add-int/lit8 v2, v5, 0x1

    .line 327
    .end local v5    # "pos":I
    .local v2, "pos":I
    add-int/lit8 v1, v1, -0x1

    .line 328
    nop

    .line 339
    .end local v0    # "node":I
    .end local p2    # "inUnit":C
    move v0, v2

    move p2, v3

    goto :goto_10

    .line 329
    .end local v2    # "pos":I
    .restart local v0    # "node":I
    .restart local v5    # "pos":I
    .restart local p2    # "inUnit":C
    :cond_89
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_95

    .line 331
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 332
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 335
    :cond_95
    invoke-static {v5, v0}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v5

    .line 336
    and-int/lit8 v0, v0, 0x3f

    goto :goto_40

    .line 293
    .end local v5    # "pos":I
    .local v0, "pos":I
    :cond_9c
    iget-object v2, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq p2, v2, :cond_aa

    .line 294
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    .line 295
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    .line 297
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    .line 298
    add-int/lit8 v1, v1, -0x1

    move p2, v3

    goto/16 :goto_10
.end method

.method public greylist-max-o nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;
    .registers 3
    .param p1, "cp"    # I

    .line 244
    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 245
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_23

    .line 246
    :cond_a
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 247
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_23

    .line 248
    :cond_21
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    .line 244
    :goto_23
    return-object v0
.end method

.method public greylist-max-o reset()Landroid/icu/util/CharsTrie;
    .registers 2

    .line 82
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 84
    return-object p0
.end method

.method public greylist-max-o resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .registers 4
    .param p1, "state"    # Landroid/icu/util/CharsTrie$State;

    .line 159
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fgetchars(Landroid/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fgetroot(Landroid/icu/util/CharsTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 160
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fgetpos(Landroid/icu/util/CharsTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 161
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fgetremainingMatchLength(Landroid/icu/util/CharsTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 165
    return-object p0

    .line 163
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible trie state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resetToState64(J)Landroid/icu/util/CharsTrie;
    .registers 5
    .param p1, "state"    # J

    .line 112
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 113
    long-to-int v0, p1

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    .line 114
    return-object p0
.end method

.method public greylist-max-o saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .registers 3
    .param p1, "state"    # Landroid/icu/util/CharsTrie$State;

    .line 140
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fputchars(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)V

    .line 141
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fputroot(Landroid/icu/util/CharsTrie$State;I)V

    .line 142
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fputpos(Landroid/icu/util/CharsTrie$State;I)V

    .line 143
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-$$Nest$fputremainingMatchLength(Landroid/icu/util/CharsTrie$State;I)V

    .line 144
    return-object p0
.end method
