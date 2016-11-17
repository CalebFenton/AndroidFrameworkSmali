.class public final Landroid/icu/util/CharsTrie;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CharsTrie$Entry;,
        Landroid/icu/util/CharsTrie$Iterator;,
        Landroid/icu/util/CharsTrie$State;
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
    .line 696
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
    .line 31
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
    .line 895
    int-to-char v1, p1

    #@1
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 893
    return-void

    #@5
    .line 896
    :catch_0
    move-exception v0

    #@6
    .line 897
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
    .line 701
    if-nez p2, :cond_0

    #@4
    .line 702
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
    .line 704
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@f
    move v2, p1

    #@10
    .line 707
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :goto_0
    const/4 v4, 0x5

    #@11
    if-le p2, v4, :cond_a

    #@13
    .line 708
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
    .line 709
    shr-int/lit8 p2, p2, 0x1

    #@1f
    .line 710
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
    .line 712
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_1
    shr-int/lit8 v4, p2, 0x1

    #@29
    sub-int/2addr p2, v4

    #@2a
    .line 713
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2c
    invoke-static {v4, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@2f
    move-result p1

    #@30
    goto :goto_1

    #@31
    .line 747
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@33
    .line 748
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@35
    invoke-static {v4, v2}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    #@38
    move-result p1

    #@39
    .line 749
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    const/4 v4, 0x1

    #@3a
    if-le p2, v4, :cond_7

    #@3c
    .line 720
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
    .line 722
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@48
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@4b
    move-result v1

    #@4c
    .line 723
    .local v1, "node":I
    const v4, 0x8000

    #@4f
    and-int/2addr v4, v1

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 725
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@54
    .local v3, "result":Landroid/icu/util/BytesTrie$Result;
    move p1, v2

    #@55
    .line 744
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :goto_3
    iput p1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@57
    .line 745
    return-object v3

    #@58
    .line 728
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    add-int/lit8 p1, v2, 0x1

    #@5a
    .line 731
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    const/16 v4, 0x4000

    #@5c
    if-ge v1, v4, :cond_4

    #@5e
    .line 732
    move v0, v1

    #@5f
    .line 740
    .local v0, "delta":I
    :goto_4
    add-int/2addr p1, v0

    #@60
    .line 741
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@62
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@65
    move-result v1

    #@66
    .line 742
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
    .line 733
    .end local v0    # "delta":I
    .end local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_4
    const/16 v4, 0x7fff

    #@71
    if-ge v1, v4, :cond_5

    #@73
    .line 734
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
    .line 736
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
    .line 737
    .restart local v0    # "delta":I
    add-int/lit8 p1, p1, 0x2

    #@97
    goto :goto_4

    #@98
    .line 742
    :cond_6
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@9a
    .restart local v3    # "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_3

    #@9b
    .line 750
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
    .line 751
    iput v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@a7
    .line 752
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@a9
    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@ac
    move-result v1

    #@ad
    .line 753
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
    .line 755
    .end local v1    # "node":I
    :cond_9
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@bc
    .line 756
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
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const-wide/16 v10, 0x0

    #@4
    .line 838
    add-int/lit8 v2, p1, 0x1

    #@6
    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@9
    move-result v1

    #@a
    .line 840
    .local v1, "node":I
    :goto_0
    const/16 v6, 0x30

    #@c
    if-ge v1, v6, :cond_1

    #@e
    .line 841
    if-nez v1, :cond_8

    #@10
    .line 842
    add-int/lit8 p1, v2, 0x1

    #@12
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 844
    :goto_1
    add-int/lit8 v6, v1, 0x1

    #@18
    invoke-static {p0, p1, v6, p2, p3}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    #@1b
    move-result-wide p2

    #@1c
    .line 845
    cmp-long v6, p2, v10

    #@1e
    if-nez v6, :cond_0

    #@20
    .line 846
    return-wide v10

    #@21
    .line 848
    :cond_0
    const/16 v6, 0x21

    #@23
    ushr-long v6, p2, v6

    #@25
    long-to-int p1, v6

    #@26
    .line 849
    add-int/lit8 v2, p1, 0x1

    #@28
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    move p1, v2

    #@2d
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :goto_2
    move v2, p1

    #@2e
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    #@2f
    .line 850
    :cond_1
    const/16 v6, 0x40

    #@31
    if-ge v1, v6, :cond_2

    #@33
    .line 852
    add-int/lit8 v6, v1, -0x30

    #@35
    add-int/lit8 v6, v6, 0x1

    #@37
    add-int p1, v2, v6

    #@39
    .line 853
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 v2, p1, 0x1

    #@3b
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    move p1, v2

    #@40
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_2

    #@41
    .line 855
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    const v6, 0x8000

    #@44
    and-int/2addr v6, v1

    #@45
    if-eqz v6, :cond_3

    #@47
    move v0, v4

    #@48
    .line 857
    .local v0, "isFinal":Z
    :goto_3
    if-eqz v0, :cond_4

    #@4a
    .line 858
    and-int/lit16 v6, v1, 0x7fff

    #@4c
    invoke-static {p0, v2, v6}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@4f
    move-result v3

    #@50
    .line 862
    .local v3, "value":I
    :goto_4
    cmp-long v6, p2, v10

    #@52
    if-eqz v6, :cond_5

    #@54
    .line 863
    shr-long v6, p2, v4

    #@56
    long-to-int v6, v6

    #@57
    if-eq v3, v6, :cond_6

    #@59
    .line 864
    return-wide v10

    #@5a
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    :cond_3
    move v0, v5

    #@5b
    .line 855
    goto :goto_3

    #@5c
    .line 860
    .restart local v0    # "isFinal":Z
    :cond_4
    invoke-static {p0, v2, v1}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    #@5f
    move-result v3

    #@60
    .restart local v3    # "value":I
    goto :goto_4

    #@61
    .line 867
    :cond_5
    int-to-long v6, v3

    #@62
    shl-long/2addr v6, v4

    #@63
    const-wide/16 v8, 0x1

    #@65
    or-long p2, v6, v8

    #@67
    .line 869
    :cond_6
    if-eqz v0, :cond_7

    #@69
    .line 870
    return-wide p2

    #@6a
    .line 872
    :cond_7
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@6d
    move-result p1

    #@6e
    .line 873
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    and-int/lit8 v1, v1, 0x3f

    #@70
    goto :goto_2

    #@71
    .end local v0    # "isFinal":Z
    .end local v3    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_8
    move p1, v2

    #@72
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
    .line 798
    :goto_0
    const/4 v4, 0x5

    #@4
    if-le p2, v4, :cond_3

    #@6
    .line 799
    add-int/lit8 p1, p1, 0x1

    #@8
    .line 800
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
    .line 801
    cmp-long v4, p3, v8

    #@14
    if-nez v4, :cond_0

    #@16
    .line 802
    return-wide v8

    #@17
    .line 804
    :cond_0
    shr-int/lit8 v4, p2, 0x1

    #@19
    sub-int/2addr p2, v4

    #@1a
    .line 805
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@1d
    move-result p1

    #@1e
    goto :goto_0

    #@1f
    .line 821
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
    .line 829
    :cond_2
    add-int/lit8 p2, p2, -0x1

    #@27
    if-le p2, v10, :cond_6

    #@29
    .line 808
    .end local v0    # "isFinal":Z
    .end local v1    # "node":I
    .end local v3    # "value":I
    :cond_3
    add-int/lit8 p1, p1, 0x1

    #@2b
    .line 810
    add-int/lit8 v2, p1, 0x1

    #@2d
    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@30
    move-result v1

    #@31
    .line 811
    .restart local v1    # "node":I
    const v4, 0x8000

    #@34
    and-int/2addr v4, v1

    #@35
    if-eqz v4, :cond_4

    #@37
    const/4 v0, 0x1

    #@38
    .line 812
    .restart local v0    # "isFinal":Z
    :goto_1
    and-int/lit16 v1, v1, 0x7fff

    #@3a
    .line 813
    invoke-static {p0, v2, v1}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@3d
    move-result v3

    #@3e
    .line 814
    .restart local v3    # "value":I
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    #@41
    move-result p1

    #@42
    .line 815
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    if-eqz v0, :cond_5

    #@44
    .line 816
    cmp-long v4, p3, v8

    #@46
    if-eqz v4, :cond_1

    #@48
    .line 817
    shr-long v4, p3, v10

    #@4a
    long-to-int v4, v4

    #@4b
    if-eq v3, v4, :cond_2

    #@4d
    .line 818
    return-wide v8

    #@4e
    .line 811
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
    .line 824
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
    .line 825
    cmp-long v4, p3, v8

    #@58
    if-nez v4, :cond_2

    #@5a
    .line 826
    return-wide v8

    #@5b
    .line 831
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
    .line 881
    :goto_0
    const/4 v1, 0x5

    #@1
    if-le p2, v1, :cond_0

    #@3
    .line 882
    add-int/lit8 p1, p1, 0x1

    #@5
    .line 883
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    #@8
    move-result v1

    #@9
    shr-int/lit8 v2, p2, 0x1

    #@b
    invoke-static {p0, v1, v2, p3}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    #@e
    .line 884
    shr-int/lit8 v1, p2, 0x1

    #@10
    sub-int/2addr p2, v1

    #@11
    .line 885
    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    #@14
    move-result p1

    #@15
    goto :goto_0

    #@16
    .line 888
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
    .line 889
    invoke-static {p0, v0}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    #@22
    move-result p1

    #@23
    .line 890
    .end local v0    # "pos":I
    .restart local p1    # "pos":I
    add-int/lit8 p2, p2, -0x1

    #@25
    const/4 v1, 0x1

    #@26
    if-gt p2, v1, :cond_0

    #@28
    .line 891
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    invoke-static {p3, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    #@2f
    .line 880
    return-void
.end method

.method public static iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;
    .locals 6
    .param p0, "trieChars"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "maxStringLength"    # I

    #@0
    .prologue
    .line 393
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
    .line 672
    add-int/lit8 v1, p1, 0x1

    #@5
    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    .line 673
    .local v0, "delta":I
    if-lt v0, v3, :cond_1

    #@b
    .line 674
    const v2, 0xffff

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 675
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
    .line 676
    add-int/lit8 p1, v1, 0x2

    #@20
    .line 681
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :goto_0
    add-int v2, p1, v0

    #@22
    return v2

    #@23
    .line 678
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
    .line 762
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
    .line 764
    .local v1, "node":I
    :goto_0
    const/16 v3, 0x30

    #@c
    if-ge v1, v3, :cond_0

    #@e
    .line 765
    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 766
    :cond_0
    if-ge v1, v4, :cond_2

    #@15
    .line 768
    add-int/lit8 v0, v1, -0x30

    #@17
    .line 769
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
    .line 770
    add-int/lit8 v0, v0, -0x1

    #@23
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@25
    .line 771
    iput p1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@27
    .line 772
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
    .line 773
    sget-object v3, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@33
    shr-int/lit8 v4, v1, 0xf

    #@35
    aget-object v3, v3, v4

    #@37
    .line 772
    :goto_1
    return-object v3

    #@38
    .line 773
    :cond_1
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@3a
    goto :goto_1

    #@3b
    .line 778
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
    .line 787
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    :cond_3
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@45
    .line 788
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@47
    return-object v3

    #@48
    .line 783
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@4b
    move-result p1

    #@4c
    .line 784
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
    .line 648
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
    .line 650
    :cond_1
    const/16 v1, 0x4040

    #@19
    if-ge p2, v1, :cond_2

    #@1b
    .line 651
    shr-int/lit8 v1, p2, 0x6

    #@1d
    add-int/lit8 v0, v1, -0x1

    #@1f
    .line 657
    .local v0, "value":I
    :goto_0
    return v0

    #@20
    .line 652
    .end local v0    # "value":I
    :cond_2
    const/16 v1, 0x7fc0

    #@22
    if-ge p2, v1, :cond_3

    #@24
    .line 653
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
    .line 655
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
    .line 623
    const/16 v1, 0x4000

    #@2
    if-ge p2, v1, :cond_0

    #@4
    .line 624
    move v0, p2

    #@5
    .line 630
    .local v0, "value":I
    :goto_0
    return v0

    #@6
    .line 625
    .end local v0    # "value":I
    :cond_0
    const/16 v1, 0x7fff

    #@8
    if-ge p2, v1, :cond_1

    #@a
    .line 626
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
    .line 628
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
    .line 685
    add-int/lit8 v1, p1, 0x1

    #@2
    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 686
    .local v0, "delta":I
    const v2, 0xfc00

    #@9
    if-lt v0, v2, :cond_1

    #@b
    .line 687
    const v2, 0xffff

    #@e
    if-ne v0, v2, :cond_0

    #@10
    .line 688
    add-int/lit8 p1, v1, 0x2

    #@12
    .line 693
    .end local v1    # "pos":I
    .restart local p1    # "pos":I
    :goto_0
    return p1

    #@13
    .line 690
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
    .line 660
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
    .line 661
    :cond_1
    const/16 v0, 0x4040

    #@19
    if-lt p1, v0, :cond_2

    #@1b
    .line 662
    const/16 v0, 0x7fc0

    #@1d
    if-ge p1, v0, :cond_3

    #@1f
    .line 663
    add-int/lit8 p0, p0, 0x1

    #@21
    .line 668
    :cond_2
    :goto_0
    return p0

    #@22
    .line 665
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
    .line 633
    const/16 v0, 0x4000

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 634
    const/16 v0, 0x7fff

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 635
    add-int/lit8 p0, p0, 0x1

    #@a
    .line 640
    :cond_0
    :goto_0
    return p0

    #@b
    .line 637
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
    .line 643
    add-int/lit8 v1, p1, 0x1

    #@2
    .end local p1    # "pos":I
    .local v1, "pos":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 644
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
    .line 616
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@3
    .line 615
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
    .line 59
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
    .line 126
    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@2
    .line 127
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@4
    .line 128
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6
    return-object v2

    #@7
    .line 131
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
    .line 132
    sget-object v2, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@17
    shr-int/lit8 v3, v0, 0xf

    #@19
    aget-object v2, v2, v3

    #@1b
    .line 131
    .end local v0    # "node":I
    :goto_0
    return-object v2

    #@1c
    .line 132
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
    .line 143
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@3
    .line 144
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
    .line 155
    const v0, 0xffff

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 156
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    #@8
    move-result-object v0

    #@9
    .line 155
    :goto_0
    return-object v0

    #@a
    .line 157
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
    .line 158
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
    .line 159
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
    .line 336
    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@4
    .line 337
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@6
    .line 338
    return v4

    #@7
    .line 340
    :cond_0
    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@9
    if-ltz v3, :cond_1

    #@b
    .line 341
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@10
    move-result v3

    #@11
    invoke-static {p1, v3}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    #@14
    .line 342
    return v5

    #@15
    .line 344
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
    .line 345
    .local v0, "node":I
    const/16 v3, 0x40

    #@1f
    if-lt v0, v3, :cond_3

    #@21
    .line 346
    const v3, 0x8000

    #@24
    and-int/2addr v3, v0

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 347
    return v4

    #@28
    .line 349
    :cond_2
    invoke-static {v2, v0}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@2b
    move-result v1

    #@2c
    .line 350
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    and-int/lit8 v0, v0, 0x3f

    #@2e
    move v2, v1

    #@2f
    .line 353
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_3
    const/16 v3, 0x30

    #@31
    if-ge v0, v3, :cond_4

    #@33
    .line 354
    if-nez v0, :cond_5

    #@35
    .line 355
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
    .line 357
    :goto_0
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    invoke-static {v3, v1, v0, p1}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    #@44
    .line 358
    return v0

    #@45
    .line 361
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
    .line 362
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
    .line 318
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@6
    .line 319
    .local v0, "pos":I
    if-gez v0, :cond_0

    #@8
    .line 320
    return-wide v8

    #@9
    .line 323
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
    .line 325
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
    .line 303
    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@3
    .line 304
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
    .line 305
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
    .line 306
    :cond_1
    const v3, 0x8000

    #@1f
    and-int/2addr v3, v0

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 307
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@24
    and-int/lit16 v4, v0, 0x7fff

    #@26
    invoke-static {v3, v2, v4}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    #@29
    move-result v3

    #@2a
    .line 306
    :goto_0
    return v3

    #@2b
    .line 307
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
    .line 371
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
    .line 381
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
    .line 370
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
    .line 168
    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@2
    .line 169
    .local v2, "pos":I
    if-gez v2, :cond_0

    #@4
    .line 170
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@6
    return-object v4

    #@7
    .line 172
    :cond_0
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@9
    .line 173
    .local v0, "length":I
    if-ltz v0, :cond_3

    #@b
    .line 175
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
    .line 176
    add-int/lit8 v0, v0, -0x1

    #@17
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@19
    .line 177
    iput v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@1b
    .line 179
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
    .line 180
    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@29
    shr-int/lit8 v5, v1, 0xf

    #@2b
    aget-object v4, v4, v5

    #@2d
    .line 179
    .end local v1    # "node":I
    :goto_0
    return-object v4

    #@2e
    .line 180
    :cond_1
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@30
    goto :goto_0

    #@31
    .line 182
    :cond_2
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@34
    .line 183
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@36
    return-object v4

    #@37
    .line 186
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
    .line 219
    if-lt p2, p3, :cond_0

    #@4
    .line 221
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->current()Landroid/icu/util/BytesTrie$Result;

    #@7
    move-result-object v7

    #@8
    return-object v7

    #@9
    .line 223
    :cond_0
    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@b
    .line 224
    .local v3, "pos":I
    if-gez v3, :cond_1

    #@d
    .line 225
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@f
    return-object v7

    #@10
    .line 227
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
    .line 233
    .end local p2    # "sIndex":I
    .local v6, "sIndex":I
    :goto_0
    if-ne v6, p3, :cond_3

    #@16
    .line 234
    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@18
    .line 235
    iput v4, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@1a
    .line 237
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
    .line 238
    sget-object v7, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    #@26
    shr-int/lit8 v8, v2, 0xf

    #@28
    aget-object v7, v7, v8

    #@2a
    .line 237
    .end local v2    # "node":I
    :goto_1
    return-object v7

    #@2b
    .line 238
    :cond_2
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@2d
    goto :goto_1

    #@2e
    .line 240
    :cond_3
    add-int/lit8 p2, v6, 0x1

    #@30
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v0

    #@34
    .line 241
    .local v0, "inUnit":C
    if-gez v1, :cond_4

    #@36
    .line 242
    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@38
    .line 252
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
    .line 254
    .end local p2    # "sIndex":I
    .restart local v6    # "sIndex":I
    :goto_2
    const/16 v7, 0x30

    #@43
    if-ge v2, v7, :cond_9

    #@45
    .line 255
    invoke-direct {p0, v3, v2, v0}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    #@48
    move-result-object v5

    #@49
    .line 256
    .local v5, "result":Landroid/icu/util/BytesTrie$Result;
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@4b
    if-ne v5, v7, :cond_6

    #@4d
    .line 257
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@4f
    return-object v7

    #@50
    .line 245
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
    .line 246
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@5b
    .line 247
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@5d
    return-object v7

    #@5e
    .line 249
    :cond_5
    add-int/lit8 v3, v4, 0x1

    #@60
    .line 250
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
    .line 260
    .end local v4    # "pos":I
    .restart local v2    # "node":I
    .restart local v3    # "pos":I
    .restart local v5    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_6
    if-ne v6, p3, :cond_7

    #@67
    .line 261
    return-object v5

    #@68
    .line 263
    :cond_7
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@6a
    if-ne v5, v7, :cond_8

    #@6c
    .line 265
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@6f
    .line 266
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@71
    return-object v7

    #@72
    .line 268
    :cond_8
    add-int/lit8 p2, v6, 0x1

    #@74
    .end local v6    # "sIndex":I
    .restart local p2    # "sIndex":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@77
    move-result v0

    #@78
    .line 269
    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@7a
    .line 270
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
    .line 271
    :cond_9
    if-ge v2, v8, :cond_b

    #@87
    .line 273
    add-int/lit8 v1, v2, -0x30

    #@89
    .line 274
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@8b
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@8e
    move-result v7

    #@8f
    if-eq v0, v7, :cond_a

    #@91
    .line 275
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@94
    .line 276
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@96
    return-object v7

    #@97
    .line 278
    :cond_a
    add-int/lit8 v3, v3, 0x1

    #@99
    .line 279
    add-int/lit8 v1, v1, -0x1

    #@9b
    move v4, v3

    #@9c
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    goto/16 :goto_0

    #@9e
    .line 281
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_b
    const v7, 0x8000

    #@a1
    and-int/2addr v7, v2

    #@a2
    if-eqz v7, :cond_c

    #@a4
    .line 283
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    #@a7
    .line 284
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@a9
    return-object v7

    #@aa
    .line 287
    :cond_c
    invoke-static {v3, v2}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    #@ad
    move-result v3

    #@ae
    .line 288
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
    .line 196
    const v0, 0xffff

    #@3
    if-gt p1, v0, :cond_0

    #@5
    .line 197
    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    #@8
    move-result-object v0

    #@9
    .line 196
    :goto_0
    return-object v0

    #@a
    .line 198
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
    .line 199
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
    .line 200
    :cond_1
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@23
    goto :goto_0
.end method

.method public reset()Landroid/icu/util/CharsTrie;
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@2
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@4
    .line 68
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@7
    .line 69
    return-object p0
.end method

.method public resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .locals 2
    .param p1, "state"    # Landroid/icu/util/CharsTrie$State;

    #@0
    .prologue
    .line 111
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
    .line 112
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get1(Landroid/icu/util/CharsTrie$State;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@1a
    .line 113
    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get2(Landroid/icu/util/CharsTrie$State;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@20
    .line 117
    return-object p0

    #@21
    .line 115
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
    .line 94
    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    #@2
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set0(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    .line 95
    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    #@7
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set3(Landroid/icu/util/CharsTrie$State;I)I

    #@a
    .line 96
    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    #@c
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set1(Landroid/icu/util/CharsTrie$State;I)I

    #@f
    .line 97
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    #@11
    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set2(Landroid/icu/util/CharsTrie$State;I)I

    #@14
    .line 98
    return-object p0
.end method
