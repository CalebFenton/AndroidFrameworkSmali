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
        Landroid/icu/util/CharsTrie$Entry;,
        Landroid/icu/util/CharsTrie$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneUnitDelta:I = 0xfbff

.field static final kMaxOneUnitNodeValue:I = 0xff

.field static final kMaxOneUnitValue:I = 0x3fff

.field static final kMaxTwoUnitDelta:I = 0x3feffff

.field static final kMaxTwoUnitNodeValue:I = 0xfdffff

.field static final kMaxTwoUnitValue:I = 0x3ffeffff

.field static final kMinLinearMatch:I = 0x30

.field static final kMinTwoUnitDeltaLead:I = 0xfc00

.field static final kMinTwoUnitNodeValueLead:I = 0x4040

.field static final kMinTwoUnitValueLead:I = 0x4000

.field static final kMinValueLead:I = 0x40

.field static final kNodeTypeMask:I = 0x3f

.field static final kThreeUnitDeltaLead:I = 0xffff

.field static final kThreeUnitNodeValueLead:I = 0x7fc0

.field static final kThreeUnitValueLead:I = 0x7fff

.field static final kValueIsFinal:I = 0x8000

.field private static valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static synthetic -wrap0(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "leadUnit"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "leadUnit"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(II)I
    .locals 1
    .param p0, "pos"    # I
    .param p1, "leadUnit"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(II)I
    .locals 1
    .param p0, "pos"    # I
    .param p1, "leadUnit"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

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
    const-class v0, Landroid/icu/util/CharsTrie;

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
    sput-boolean v0, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    #@d
    .line 722
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
    sput-object v0, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@1a
    .line 30
    return-void

    #@1b
    :cond_0
    move v0, v2

    #@1c
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "trieChars"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@5
    .line 48
    iput p2, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@7
    iput p2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@9
    .line 49
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@c
    .line 46
    return-void
.end method

.method private static append(Ljava/lang/Appendable;I)V
    .locals 2
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "c"    # I

    #@0
    .prologue
    .line 921
    int-to-char v1, p1

    #@1
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 919
    return-void

    #@5
    .line 922
    :catch_0
    move-exception v0

    #@6
    .line 923
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@8
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v1
.end method

.method private branchNext(III)Landroid/icu/util/BytesTrie$Result;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "inUnit"    # I

    #@0
    .prologue
    const/16 v7, 0x40

    #@2
    .line 727
    if-nez p2, :cond_0

    #@4
    .line 728
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@6
    add-int/lit8 v2, p1, 0x1

    #@8
    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result p2

    #@c
    move p1, v2

    #@d
    .line 730
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@f
    move v2, p1

    #@10
    .line 733
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :goto_0
    const/4 v4, 0x5

    #@11
    if-le p2, v4, :cond_a

    #@13
    .line 734
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@15
    add-int/lit8 p1, v2, 0x1

    #@17
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v4

    #@1b
    if-ge p3, v4, :cond_1

    #@1d
    .line 735
    shr-int/lit8 p2, p2, 0x1

    #@1f
    .line 736
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@21
    invoke-static {v4, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    #@24
    move-result p1

    #@25
    :goto_1
    move v2, p1

    #@26
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    #@27
    .line 738
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_1
    shr-int/lit8 v4, p2, 0x1

    #@29
    sub-int/2addr p2, v4

    #@2a
    .line 739
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2c
    invoke-static {v4, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@2f
    move-result p1

    #@30
    goto :goto_1

    #@31
    .line 773
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@33
    .line 774
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@35
    invoke-static {v4, v2}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    #@38
    move-result p1

    #@39
    .line 775
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    const/4 v4, 0x1

    #@3a
    if-le p2, v4, :cond_7

    #@3c
    .line 746
    :goto_2
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@3e
    add-int/lit8 v2, p1, 0x1

    #@40
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@43
    move-result v4

    #@44
    if-ne p3, v4, :cond_2

    #@46
    .line 748
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@48
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@4b
    move-result v1

    #@4c
    .line 749
    .local v1, "node":I
    const v4, 0x8000

    #@4f
    and-int/2addr v4, v1

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 751
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@54
    .local v3, "result":Landroid/icu/util/BytesTrie$Result;
    move p1, v2

    #@55
    .line 770
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :goto_3
    iput p1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@57
    .line 771
    return-object v3

    #@58
    .line 754
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    add-int/lit8 p1, v2, 0x1

    #@5a
    .line 757
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    const/16 v4, 0x4000

    #@5c
    if-ge v1, v4, :cond_4

    #@5e
    .line 758
    move v0, v1

    #@5f
    .line 766
    .local v0, "delta":I
    :goto_4
    add-int/2addr p1, v0

    #@60
    .line 767
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@62
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@65
    move-result v1

    #@66
    .line 768
    if-lt v1, v7, :cond_6

    #@68
    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@6a
    shr-int/lit8 v5, v1, 0xf

    #@6c
    aget-object v3, v4, v5

    #@6e
    .restart local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_3

    #@6f
    .line 759
    .end local v0    # "delta":I
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_4
    const/16 v4, 0x7fff

    #@71
    if-ge v1, v4, :cond_5

    #@73
    .line 760
    add-int/lit16 v4, v1, -0x4000

    #@75
    shl-int/lit8 v4, v4, 0x10

    #@77
    iget-object v5, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@79
    add-int/lit8 v2, p1, 0x1

    #@7b
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@7e
    move-result v5

    #@7f
    or-int v0, v4, v5

    #@81
    .restart local v0    # "delta":I
    move p1, v2

    #@82
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_4

    #@83
    .line 762
    .end local v0    # "delta":I
    :cond_5
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@85
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@88
    move-result v4

    #@89
    shl-int/lit8 v4, v4, 0x10

    #@8b
    iget-object v5, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@8d
    add-int/lit8 v6, p1, 0x1

    #@8f
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@92
    move-result v5

    #@93
    or-int v0, v4, v5

    #@95
    .line 763
    .restart local v0    # "delta":I
    add-int/lit8 p1, p1, 0x2

    #@97
    goto :goto_4

    #@98
    .line 768
    :cond_6
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@9a
    .restart local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_3

    #@9b
    .line 776
    .end local v0    # "delta":I
    .end local v1    # "node":I
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_7
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@9d
    add-int/lit8 v2, p1, 0x1

    #@9f
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a2
    move-result v4

    #@a3
    if-ne p3, v4, :cond_9

    #@a5
    .line 777
    iput v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@a7
    .line 778
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@a9
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@ac
    move-result v1

    #@ad
    .line 779
    .restart local v1    # "node":I
    if-lt v1, v7, :cond_8

    #@af
    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@b1
    shr-int/lit8 v5, v1, 0xf

    #@b3
    aget-object v4, v4, v5

    #@b5
    :goto_5
    return-object v4

    #@b6
    :cond_8
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@b8
    goto :goto_5

    #@b9
    .line 781
    .end local v1    # "node":I
    :cond_9
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@bc
    .line 782
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@be
    return-object v4

    #@bf
    :cond_a
    move p1, v2

    #@c0
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto/16 :goto_2
.end method

.method private static findUniqueValue(Ljava/lang/CharSequence;IJ)J
    .locals 12
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "uniqueValue"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 864
    add-int/lit8 v2, p1, 0x1

    #@5
    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v1

    #@9
    .line 866
    .local v1, "node":I
    :goto_0
    const/16 v4, 0x30

    #@b
    if-ge v1, v4, :cond_1

    #@d
    .line 867
    if-nez v1, :cond_8

    #@f
    .line 868
    add-int/lit8 p1, v2, 0x1

    #@11
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v1

    #@15
    .line 870
    :goto_1
    add-int/lit8 v4, v1, 0x1

    #@17
    invoke-static {p0, p1, v4, p2, p3}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    #@1a
    move-result-wide p2

    #@1b
    .line 871
    cmp-long v4, p2, v8

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 872
    return-wide v8

    #@20
    .line 874
    :cond_0
    const/16 v4, 0x21

    #@22
    ushr-long v4, p2, v4

    #@24
    long-to-int p1, v4

    #@25
    .line 875
    add-int/lit8 v2, p1, 0x1

    #@27
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    move p1, v2

    #@2c
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :goto_2
    move v2, p1

    #@2d
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    #@2e
    .line 876
    :cond_1
    const/16 v4, 0x40

    #@30
    if-ge v1, v4, :cond_2

    #@32
    .line 878
    add-int/lit8 v4, v1, -0x30

    #@34
    add-int/lit8 v4, v4, 0x1

    #@36
    add-int p1, v2, v4

    #@38
    .line 879
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 v2, p1, 0x1

    #@3a
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@3d
    move-result v1

    #@3e
    move p1, v2

    #@3f
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_2

    #@40
    .line 881
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    const v4, 0x8000

    #@43
    and-int/2addr v4, v1

    #@44
    if-eqz v4, :cond_3

    #@46
    const/4 v0, 0x1

    #@47
    .line 883
    .local v0, "isFinal":Z
    :goto_3
    if-eqz v0, :cond_4

    #@49
    .line 884
    and-int/lit16 v4, v1, 0x7fff

    #@4b
    invoke-static {p0, v2, v4}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@4e
    move-result v3

    #@4f
    .line 888
    .local v3, "value":I
    :goto_4
    cmp-long v4, p2, v8

    #@51
    if-eqz v4, :cond_5

    #@53
    .line 889
    shr-long v4, p2, v10

    #@55
    long-to-int v4, v4

    #@56
    if-eq v3, v4, :cond_6

    #@58
    .line 890
    return-wide v8

    #@59
    .line 881
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    :cond_3
    const/4 v0, 0x0

    #@5a
    .restart local v0    # "isFinal":Z
    goto :goto_3

    #@5b
    .line 886
    :cond_4
    invoke-static {p0, v2, v1}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    #@5e
    move-result v3

    #@5f
    .restart local v3    # "value":I
    goto :goto_4

    #@60
    .line 893
    :cond_5
    int-to-long v4, v3

    #@61
    shl-long/2addr v4, v10

    #@62
    const-wide/16 v6, 0x1

    #@64
    or-long p2, v4, v6

    #@66
    .line 895
    :cond_6
    if-eqz v0, :cond_7

    #@68
    .line 896
    return-wide p2

    #@69
    .line 898
    :cond_7
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@6c
    move-result p1

    #@6d
    .line 899
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    and-int/lit8 v1, v1, 0x3f

    #@6f
    goto :goto_2

    #@70
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_8
    move p1, v2

    #@71
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_1
.end method

.method private static findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J
    .locals 11
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "uniqueValue"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 824
    :goto_0
    const/4 v4, 0x5

    #@4
    if-le p2, v4, :cond_3

    #@6
    .line 825
    add-int/lit8 p1, p1, 0x1

    #@8
    .line 826
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    #@b
    move-result v4

    #@c
    shr-int/lit8 v5, p2, 0x1

    #@e
    invoke-static {p0, v4, v5, p3, p4}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    #@11
    move-result-wide p3

    #@12
    .line 827
    cmp-long v4, p3, v8

    #@14
    if-nez v4, :cond_0

    #@16
    .line 828
    return-wide v8

    #@17
    .line 830
    :cond_0
    shr-int/lit8 v4, p2, 0x1

    #@19
    sub-int/2addr p2, v4

    #@1a
    .line 831
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@1d
    move-result p1

    #@1e
    goto :goto_0

    #@1f
    .line 847
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
    .line 855
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@27
    if-le p2, v10, :cond_6

    #@29
    .line 834
    .end local v0    # "isFinal":Z
    .end local v1    # "node":I
    .end local v3    # "value":I
    :cond_3
    add-int/lit8 p1, p1, 0x1

    #@2b
    .line 836
    add-int/lit8 v2, p1, 0x1

    #@2d
    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@30
    move-result v1

    #@31
    .line 837
    .restart local v1    # "node":I
    const v4, 0x8000

    #@34
    and-int/2addr v4, v1

    #@35
    if-eqz v4, :cond_4

    #@37
    const/4 v0, 0x1

    #@38
    .line 838
    .restart local v0    # "isFinal":Z
    :goto_1
    and-int/lit16 v1, v1, 0x7fff

    #@3a
    .line 839
    invoke-static {p0, v2, v1}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@3d
    move-result v3

    #@3e
    .line 840
    .restart local v3    # "value":I
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    #@41
    move-result p1

    #@42
    .line 841
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    if-eqz v0, :cond_5

    #@44
    .line 842
    cmp-long v4, p3, v8

    #@46
    if-eqz v4, :cond_1

    #@48
    .line 843
    shr-long v4, p3, v10

    #@4a
    long-to-int v4, v4

    #@4b
    if-eq v3, v4, :cond_2

    #@4d
    .line 844
    return-wide v8

    #@4e
    .line 837
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "isFinal":Z
    goto :goto_1

    #@50
    .line 850
    .end local v2    # "pos":I
    .restart local v3    # "value":I
    .restart local p1    # "pos":I
    :cond_5
    add-int v4, p1, v3

    #@52
    invoke-static {p0, v4, p3, p4}, Landroid/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    #@55
    move-result-wide p3

    #@56
    .line 851
    cmp-long v4, p3, v8

    #@58
    if-nez v4, :cond_2

    #@5a
    .line 852
    return-wide v8

    #@5b
    .line 857
    :cond_6
    add-int/lit8 v4, p1, 0x1

    #@5d
    int-to-long v4, v4

    #@5e
    const/16 v6, 0x21

    #@60
    shl-long/2addr v4, v6

    #@61
    const-wide v6, 0x1ffffffffL

    #@66
    and-long/2addr v6, p3

    #@67
    or-long/2addr v4, v6

    #@68
    return-wide v4
.end method

.method private static getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V
    .locals 3
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 907
    :goto_0
    const/4 v1, 0x5

    #@1
    if-le p2, v1, :cond_0

    #@3
    .line 908
    add-int/lit8 p1, p1, 0x1

    #@5
    .line 909
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    #@8
    move-result v1

    #@9
    shr-int/lit8 v2, p2, 0x1

    #@b
    invoke-static {p0, v1, v2, p3}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    #@e
    .line 910
    shr-int/lit8 v1, p2, 0x1

    #@10
    sub-int/2addr p2, v1

    #@11
    .line 911
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@14
    move-result p1

    #@15
    goto :goto_0

    #@16
    .line 914
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@18
    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    invoke-static {p3, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    #@1f
    .line 915
    invoke-static {p0, v0}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    #@22
    move-result p1

    #@23
    .line 916
    .end local v0    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 p2, p2, -0x1

    #@25
    const/4 v1, 0x1

    #@26
    if-gt p2, v1, :cond_0

    #@28
    .line 917
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    invoke-static {p3, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    #@2f
    .line 906
    return-void
.end method

.method public static iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;
    .locals 6
    .param p0, "trieChars"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "maxStringLength"    # I

    #@0
    .prologue
    .line 411
    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

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
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V

    #@a
    return-object v0
.end method

.method private static jumpByDelta(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    #@0
    .prologue
    const v3, 0xfc00

    #@3
    .line 698
    add-int/lit8 v1, p1, 0x1

    #@5
    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    .line 699
    .local v0, "delta":I
    if-lt v0, v3, :cond_1

    #@b
    .line 700
    const v2, 0xffff

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 701
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v2

    #@14
    shl-int/lit8 v2, v2, 0x10

    #@16
    add-int/lit8 v3, v1, 0x1

    #@18
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v3

    #@1c
    or-int v0, v2, v3

    #@1e
    .line 702
    add-int/lit8 p1, v1, 0x2

    #@20
    .line 707
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :goto_0
    add-int v2, p1, v0

    #@22
    return v2

    #@23
    .line 704
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    sub-int v2, v0, v3

    #@25
    shl-int/lit8 v2, v2, 0x10

    #@27
    add-int/lit8 p1, v1, 0x1

    #@29
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2c
    move-result v3

    #@2d
    or-int v0, v2, v3

    #@2f
    goto :goto_0

    #@30
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    move p1, v1

    #@31
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0
.end method

.method private nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "inUnit"    # I

    #@0
    .prologue
    const/16 v4, 0x40

    #@2
    .line 788
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@4
    add-int/lit8 v2, p1, 0x1

    #@6
    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@9
    move-result v1

    #@a
    .line 790
    .local v1, "node":I
    :goto_0
    const/16 v3, 0x30

    #@c
    if-ge v1, v3, :cond_0

    #@e
    .line 791
    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 792
    :cond_0
    if-ge v1, v4, :cond_2

    #@15
    .line 794
    add-int/lit8 v0, v1, -0x30

    #@17
    .line 795
    .local v0, "length":I
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@19
    add-int/lit8 p1, v2, 0x1

    #@1b
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    if-ne p2, v3, :cond_3

    #@21
    .line 796
    add-int/lit8 v0, v0, -0x1

    #@23
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@25
    .line 797
    iput p1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@27
    .line 798
    if-gez v0, :cond_1

    #@29
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2b
    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2e
    move-result v1

    #@2f
    if-lt v1, v4, :cond_1

    #@31
    .line 799
    sget-object v3, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@33
    shr-int/lit8 v4, v1, 0xf

    #@35
    aget-object v3, v3, v4

    #@37
    .line 798
    :goto_1
    return-object v3

    #@38
    .line 799
    :cond_1
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@3a
    goto :goto_1

    #@3b
    .line 804
    .end local v0    # "length":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    const v3, 0x8000

    #@3e
    and-int/2addr v3, v1

    #@3f
    if-eqz v3, :cond_4

    #@41
    move p1, v2

    #@42
    .line 813
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_3
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@45
    .line 814
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@47
    return-object v3

    #@48
    .line 809
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@4b
    move-result p1

    #@4c
    .line 810
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    and-int/lit8 v1, v1, 0x3f

    #@4e
    move v2, p1

    #@4f
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0
.end method

.method private static readNodeValue(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "leadUnit"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 674
    sget-boolean v2, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    const/16 v2, 0x40

    #@7
    if-gt v2, p2, :cond_0

    #@9
    const v2, 0x8000

    #@c
    if-ge p2, v2, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    if-nez v1, :cond_1

    #@11
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v1

    #@17
    .line 676
    :cond_1
    const/16 v1, 0x4040

    #@19
    if-ge p2, v1, :cond_2

    #@1b
    .line 677
    shr-int/lit8 v1, p2, 0x6

    #@1d
    add-int/lit8 v0, v1, -0x1

    #@1f
    .line 683
    .local v0, "value":I
    :goto_0
    return v0

    #@20
    .line 678
    .end local v0    # "value":I
    :cond_2
    const/16 v1, 0x7fc0

    #@22
    if-ge p2, v1, :cond_3

    #@24
    .line 679
    and-int/lit16 v1, p2, 0x7fc0

    #@26
    add-int/lit16 v1, v1, -0x4040

    #@28
    shl-int/lit8 v1, v1, 0xa

    #@2a
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2d
    move-result v2

    #@2e
    or-int v0, v1, v2

    #@30
    .restart local v0    # "value":I
    goto :goto_0

    #@31
    .line 681
    .end local v0    # "value":I
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@34
    move-result v1

    #@35
    shl-int/lit8 v1, v1, 0x10

    #@37
    add-int/lit8 v2, p1, 0x1

    #@39
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@3c
    move-result v2

    #@3d
    or-int v0, v1, v2

    #@3f
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private static readValue(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "leadUnit"    # I

    #@0
    .prologue
    .line 649
    const/16 v1, 0x4000

    #@2
    if-ge p2, v1, :cond_0

    #@4
    .line 650
    move v0, p2

    #@5
    .line 656
    .local v0, "value":I
    :goto_0
    return v0

    #@6
    .line 651
    .end local v0    # "value":I
    :cond_0
    const/16 v1, 0x7fff

    #@8
    if-ge p2, v1, :cond_1

    #@a
    .line 652
    add-int/lit16 v1, p2, -0x4000

    #@c
    shl-int/lit8 v1, v1, 0x10

    #@e
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v2

    #@12
    or-int v0, v1, v2

    #@14
    .restart local v0    # "value":I
    goto :goto_0

    #@15
    .line 654
    .end local v0    # "value":I
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v1

    #@19
    shl-int/lit8 v1, v1, 0x10

    #@1b
    add-int/lit8 v2, p1, 0x1

    #@1d
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@20
    move-result v2

    #@21
    or-int v0, v1, v2

    #@23
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private static skipDelta(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 711
    add-int/lit8 v1, p1, 0x1

    #@2
    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 712
    .local v0, "delta":I
    const v2, 0xfc00

    #@9
    if-lt v0, v2, :cond_1

    #@b
    .line 713
    const v2, 0xffff

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 714
    add-int/lit8 p1, v1, 0x2

    #@12
    .line 719
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :goto_0
    return p1

    #@13
    .line 716
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    add-int/lit8 p1, v1, 0x1

    #@15
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    #@16
    .end local p1    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    move p1, v1

    #@17
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0
.end method

.method private static skipNodeValue(II)I
    .locals 2
    .param p0, "pos"    # I
    .param p1, "leadUnit"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 686
    sget-boolean v1, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    const/16 v1, 0x40

    #@7
    if-gt v1, p1, :cond_0

    #@9
    const v1, 0x8000

    #@c
    if-ge p1, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    if-nez v0, :cond_1

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v0

    #@17
    .line 687
    :cond_1
    const/16 v0, 0x4040

    #@19
    if-lt p1, v0, :cond_2

    #@1b
    .line 688
    const/16 v0, 0x7fc0

    #@1d
    if-ge p1, v0, :cond_3

    #@1f
    .line 689
    add-int/lit8 p0, p0, 0x1

    #@21
    .line 694
    :cond_2
    :goto_0
    return p0

    #@22
    .line 691
    :cond_3
    add-int/lit8 p0, p0, 0x2

    #@24
    goto :goto_0
.end method

.method private static skipValue(II)I
    .locals 1
    .param p0, "pos"    # I
    .param p1, "leadUnit"    # I

    #@0
    .prologue
    .line 659
    const/16 v0, 0x4000

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 660
    const/16 v0, 0x7fff

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 661
    add-int/lit8 p0, p0, 0x1

    #@a
    .line 666
    :cond_0
    :goto_0
    return p0

    #@b
    .line 663
    :cond_1
    add-int/lit8 p0, p0, 0x2

    #@d
    goto :goto_0
.end method

.method private static skipValue(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 669
    add-int/lit8 v1, p1, 0x1

    #@2
    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 670
    .local v0, "leadUnit":I
    and-int/lit16 v2, v0, 0x7fff

    #@8
    invoke-static {v1, v2}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method private stop()V
    .locals 1

    #@0
    .prologue
    .line 642
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@3
    .line 641
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
    .line 60
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
    .line 133
    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@2
    .line 134
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@4
    .line 135
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6
    return-object v2

    #@7
    .line 138
    :cond_0
    iget v2, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@9
    if-gez v2, :cond_1

    #@b
    iget-object v2, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v0

    #@11
    .local v0, "node":I
    const/16 v2, 0x40

    #@13
    if-lt v0, v2, :cond_1

    #@15
    .line 139
    sget-object v2, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@17
    shr-int/lit8 v3, v0, 0xf

    #@19
    aget-object v2, v2, v3

    #@1b
    .line 138
    .end local v0    # "node":I
    :goto_0
    return-object v2

    #@1c
    .line 139
    :cond_1
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@1e
    goto :goto_0
.end method

.method public first(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1
    .param p1, "inUnit"    # I

    #@0
    .prologue
    .line 151
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@3
    .line 152
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@5
    invoke-direct {p0, v0, p1}, Landroid/icu/util/CharsTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1
    .param p1, "cp"    # I

    #@0
    .prologue
    .line 164
    const v0, 0xffff

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 165
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    #@8
    move-result-object v0

    #@9
    .line 164
    :goto_0
    return-object v0

    #@a
    .line 166
    :cond_0
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 167
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@1f
    move-result-object v0

    #@20
    goto :goto_0

    #@21
    .line 168
    :cond_1
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@23
    goto :goto_0
.end method

.method public getNextChars(Ljava/lang/Appendable;)I
    .locals 6
    .param p1, "out"    # Ljava/lang/Appendable;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 351
    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@4
    .line 352
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@6
    .line 353
    return v4

    #@7
    .line 355
    :cond_0
    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@9
    if-ltz v3, :cond_1

    #@b
    .line 356
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v3

    #@11
    invoke-static {p1, v3}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    #@14
    .line 357
    return v5

    #@15
    .line 359
    :cond_1
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    .end local v1    # "pos":I
    .local v2, "pos":I
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 360
    .local v0, "node":I
    const/16 v3, 0x40

    #@1f
    if-lt v0, v3, :cond_3

    #@21
    .line 361
    const v3, 0x8000

    #@24
    and-int/2addr v3, v0

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 362
    return v4

    #@28
    .line 364
    :cond_2
    invoke-static {v2, v0}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@2b
    move-result v1

    #@2c
    .line 365
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    and-int/lit8 v0, v0, 0x3f

    #@2e
    move v2, v1

    #@2f
    .line 368
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    const/16 v3, 0x30

    #@31
    if-ge v0, v3, :cond_4

    #@33
    .line 369
    if-nez v0, :cond_5

    #@35
    .line 370
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@37
    add-int/lit8 v1, v2, 0x1

    #@39
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@3c
    move-result v0

    #@3d
    .line 372
    :goto_0
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    invoke-static {v3, v1, v0, p1}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    #@44
    .line 373
    return v0

    #@45
    .line 376
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@47
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@4a
    move-result v3

    #@4b
    invoke-static {p1, v3}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    #@4e
    .line 377
    return v5

    #@4f
    :cond_5
    move v1, v2

    #@50
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
    .line 332
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@6
    .line 333
    .local v0, "pos":I
    if-gez v0, :cond_0

    #@8
    .line 334
    return-wide v8

    #@9
    .line 337
    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@b
    iget v4, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@d
    add-int/2addr v4, v0

    #@e
    add-int/lit8 v4, v4, 0x1

    #@10
    invoke-static {v1, v4, v8, v9}, Landroid/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    #@13
    move-result-wide v2

    #@14
    .line 339
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
    const/4 v3, 0x0

    #@1
    .line 316
    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@3
    .line 317
    .local v1, "pos":I
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@5
    add-int/lit8 v2, v1, 0x1

    #@7
    .end local v1    # "pos":I
    .local v2, "pos":I
    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 318
    .local v0, "leadUnit":I
    sget-boolean v4, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    #@d
    if-nez v4, :cond_1

    #@f
    const/16 v4, 0x40

    #@11
    if-lt v0, v4, :cond_0

    #@13
    const/4 v3, 0x1

    #@14
    :cond_0
    if-nez v3, :cond_1

    #@16
    new-instance v3, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v3

    #@1c
    .line 319
    :cond_1
    const v3, 0x8000

    #@1f
    and-int/2addr v3, v0

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 320
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@24
    and-int/lit16 v4, v0, 0x7fff

    #@26
    invoke-static {v3, v2, v4}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@29
    move-result v3

    #@2a
    .line 319
    :goto_0
    return v3

    #@2b
    .line 320
    :cond_2
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2d
    invoke-static {v3, v2, v0}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    #@30
    move-result v3

    #@31
    goto :goto_0
.end method

.method public iterator()Landroid/icu/util/CharsTrie$Iterator;
    .locals 6

    #@0
    .prologue
    .line 387
    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    #@2
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@4
    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@6
    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@8
    const/4 v4, 0x0

    #@9
    const/4 v5, 0x0

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V

    #@d
    return-object v0
.end method

.method public iterator(I)Landroid/icu/util/CharsTrie$Iterator;
    .locals 6
    .param p1, "maxStringLength"    # I

    #@0
    .prologue
    .line 398
    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    #@2
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@4
    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@6
    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@8
    const/4 v5, 0x0

    #@9
    move v4, p1

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V

    #@d
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next(I)Landroid/icu/util/BytesTrie$Result;
    .locals 6
    .param p1, "inUnit"    # I

    #@0
    .prologue
    .line 178
    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@2
    .line 179
    .local v2, "pos":I
    if-gez v2, :cond_0

    #@4
    .line 180
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6
    return-object v4

    #@7
    .line 182
    :cond_0
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@9
    .line 183
    .local v0, "length":I
    if-ltz v0, :cond_3

    #@b
    .line 185
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@d
    add-int/lit8 v3, v2, 0x1

    #@f
    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@12
    move-result v4

    #@13
    if-ne p1, v4, :cond_2

    #@15
    .line 186
    add-int/lit8 v0, v0, -0x1

    #@17
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@19
    .line 187
    iput v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@1b
    .line 189
    if-gez v0, :cond_1

    #@1d
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@1f
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@22
    move-result v1

    #@23
    .local v1, "node":I
    const/16 v4, 0x40

    #@25
    if-lt v1, v4, :cond_1

    #@27
    .line 190
    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@29
    shr-int/lit8 v5, v1, 0xf

    #@2b
    aget-object v4, v4, v5

    #@2d
    .line 189
    .end local v1    # "node":I
    :goto_0
    return-object v4

    #@2e
    .line 190
    :cond_1
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@30
    goto :goto_0

    #@31
    .line 192
    :cond_2
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@34
    .line 193
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@36
    return-object v4

    #@37
    .line 196
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    invoke-direct {p0, v2, p1}, Landroid/icu/util/CharsTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    #@3a
    move-result-object v4

    #@3b
    return-object v4
.end method

.method public next(Ljava/lang/CharSequence;II)Landroid/icu/util/BytesTrie$Result;
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sIndex"    # I
    .param p3, "sLimit"    # I

    #@0
    .prologue
    const/16 v8, 0x40

    #@2
    .line 231
    if-lt p2, p3, :cond_0

    #@4
    .line 233
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->current()Landroid/icu/util/BytesTrie$Result;

    #@7
    move-result-object v7

    #@8
    return-object v7

    #@9
    .line 235
    :cond_0
    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@b
    .line 236
    .local v3, "pos":I
    if-gez v3, :cond_1

    #@d
    .line 237
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@f
    return-object v7

    #@10
    .line 239
    :cond_1
    iget v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@12
    .local v1, "length":I
    move v4, v3

    #@13
    .end local v3    # "pos":I
    .local v4, "pos":I
    move v6, p2

    #@14
    .line 245
    .end local p2    # "sIndex":I
    .local v6, "sIndex":I
    :goto_0
    if-ne v6, p3, :cond_3

    #@16
    .line 246
    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@18
    .line 247
    iput v4, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@1a
    .line 249
    if-gez v1, :cond_2

    #@1c
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@1e
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@21
    move-result v2

    #@22
    .local v2, "node":I
    if-lt v2, v8, :cond_2

    #@24
    .line 250
    sget-object v7, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@26
    shr-int/lit8 v8, v2, 0xf

    #@28
    aget-object v7, v7, v8

    #@2a
    .line 249
    .end local v2    # "node":I
    :goto_1
    return-object v7

    #@2b
    .line 250
    :cond_2
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@2d
    goto :goto_1

    #@2e
    .line 252
    :cond_3
    add-int/lit8 p2, v6, 0x1

    #@30
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v0

    #@34
    .line 253
    .local v0, "inUnit":C
    if-gez v1, :cond_4

    #@36
    .line 254
    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@38
    .line 264
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@3a
    add-int/lit8 v3, v4, 0x1

    #@3c
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@3f
    move-result v2

    #@40
    .restart local v2    # "node":I
    move v6, p2

    #@41
    .line 266
    .end local p2    # "sIndex":I
    .restart local v6    # "sIndex":I
    :goto_2
    const/16 v7, 0x30

    #@43
    if-ge v2, v7, :cond_9

    #@45
    .line 267
    invoke-direct {p0, v3, v2, v0}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    #@48
    move-result-object v5

    #@49
    .line 268
    .local v5, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@4b
    if-ne v5, v7, :cond_6

    #@4d
    .line 269
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@4f
    return-object v7

    #@50
    .line 257
    .end local v2    # "node":I
    .end local v3    # "pos":I
    .end local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local v6    # "sIndex":I
    .restart local v4    # "pos":I
    .restart local p2    # "sIndex":I
    :cond_4
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@52
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@55
    move-result v7

    #@56
    if-eq v0, v7, :cond_5

    #@58
    .line 258
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@5b
    .line 259
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@5d
    return-object v7

    #@5e
    .line 261
    :cond_5
    add-int/lit8 v3, v4, 0x1

    #@60
    .line 262
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    add-int/lit8 v1, v1, -0x1

    #@62
    move v4, v3

    #@63
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    move v6, p2

    #@64
    .end local p2    # "sIndex":I
    .restart local v6    # "sIndex":I
    goto :goto_0

    #@65
    .line 272
    .end local v4    # "pos":I
    .restart local v2    # "node":I
    .restart local v3    # "pos":I
    .restart local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_6
    if-ne v6, p3, :cond_7

    #@67
    .line 273
    return-object v5

    #@68
    .line 275
    :cond_7
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@6a
    if-ne v5, v7, :cond_8

    #@6c
    .line 277
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@6f
    .line 278
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@71
    return-object v7

    #@72
    .line 280
    :cond_8
    add-int/lit8 p2, v6, 0x1

    #@74
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@77
    move-result v0

    #@78
    .line 281
    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@7a
    .line 282
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@7c
    add-int/lit8 v4, v3, 0x1

    #@7e
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@81
    move-result v2

    #@82
    move v3, v4

    #@83
    .end local v4    # "pos":I
    .end local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    .restart local v3    # "pos":I
    :goto_3
    move v6, p2

    #@84
    .end local p2    # "sIndex":I
    .restart local v6    # "sIndex":I
    goto :goto_2

    #@85
    .line 283
    :cond_9
    if-ge v2, v8, :cond_b

    #@87
    .line 285
    add-int/lit8 v1, v2, -0x30

    #@89
    .line 286
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@8b
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@8e
    move-result v7

    #@8f
    if-eq v0, v7, :cond_a

    #@91
    .line 287
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@94
    .line 288
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@96
    return-object v7

    #@97
    .line 290
    :cond_a
    add-int/lit8 v3, v3, 0x1

    #@99
    .line 291
    add-int/lit8 v1, v1, -0x1

    #@9b
    move v4, v3

    #@9c
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_0

    #@9e
    .line 293
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_b
    const v7, 0x8000

    #@a1
    and-int/2addr v7, v2

    #@a2
    if-eqz v7, :cond_c

    #@a4
    .line 295
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@a7
    .line 296
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@a9
    return-object v7

    #@aa
    .line 299
    :cond_c
    invoke-static {v3, v2}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@ad
    move-result v3

    #@ae
    .line 300
    and-int/lit8 v2, v2, 0x3f

    #@b0
    move p2, v6

    #@b1
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    goto :goto_3
.end method

.method public nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1
    .param p1, "cp"    # I

    #@0
    .prologue
    .line 207
    const v0, 0xffff

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 208
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@8
    move-result-object v0

    #@9
    .line 207
    :goto_0
    return-object v0

    #@a
    .line 209
    :cond_0
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@d
    move-result v0

    #@e
    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 210
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@1f
    move-result-object v0

    #@20
    goto :goto_0

    #@21
    .line 211
    :cond_1
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@23
    goto :goto_0
.end method

.method public reset()Landroid/icu/util/CharsTrie;
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@2
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@4
    .line 70
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@7
    .line 71
    return-object p0
.end method

.method public resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .locals 2
    .param p1, "state"    # Landroid/icu/util/CharsTrie$State;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get0(Landroid/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@e
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get3(Landroid/icu/util/CharsTrie$State;)I

    #@11
    move-result v1

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 118
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get1(Landroid/icu/util/CharsTrie$State;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@1a
    .line 119
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get2(Landroid/icu/util/CharsTrie$State;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@20
    .line 123
    return-object p0

    #@21
    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v1, "incompatible trie state"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method public saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .locals 1
    .param p1, "state"    # Landroid/icu/util/CharsTrie$State;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set0(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    .line 100
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@7
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set3(Landroid/icu/util/CharsTrie$State;I)I

    #@a
    .line 101
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@c
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set1(Landroid/icu/util/CharsTrie$State;I)I

    #@f
    .line 102
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@11
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set2(Landroid/icu/util/CharsTrie$State;I)I

    #@14
    .line 103
    return-object p0
.end method
