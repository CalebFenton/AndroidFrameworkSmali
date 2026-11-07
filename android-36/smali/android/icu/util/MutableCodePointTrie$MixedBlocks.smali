.class final Landroid/icu/util/MutableCodePointTrie$MixedBlocks;
.super Ljava/lang/Object;
.source "MutableCodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MutableCodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MixedBlocks"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist blockLength:I

.field private blacklist length:I

.field private blacklist mask:I

.field private blacklist shift:I

.field private blacklist table:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 716
    const-class v0, Landroid/icu/util/MutableCodePointTrie;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/MutableCodePointTrie-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;-><init>()V

    return-void
.end method

.method private blacklist addEntry([I[CIII)V
    .registers 13
    .param p1, "data32"    # [I
    .param p2, "data16"    # [C
    .param p3, "blockStart"    # I
    .param p4, "hashCode"    # I
    .param p5, "dataIndex"    # I

    .line 842
    nop

    .line 843
    move-object v3, p1

    move-object v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .end local p1    # "data32":[I
    .end local p2    # "data16":[C
    .end local p3    # "blockStart":I
    .end local p4    # "hashCode":I
    .local v1, "data32":[I
    .local v2, "data16":[C
    .local v5, "blockStart":I
    .local v6, "hashCode":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    .line 844
    .local p1, "entryIndex":I
    if-gez p1, :cond_1a

    .line 845
    iget-object p2, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    not-int p3, p1

    iget p4, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    shl-int p4, v6, p4

    add-int/lit8 v3, p5, 0x1

    or-int/2addr p4, v3

    aput p4, p2, p3

    .line 847
    :cond_1a
    return-void
.end method

.method private blacklist findEntry([III)I
    .registers 10
    .param p1, "data"    # [I
    .param p2, "blockValue"    # I
    .param p3, "hashCode"    # I

    .line 873
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    shl-int v0, p3, v0

    .line 874
    .local v0, "shiftedHashCode":I
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p3, v1}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->modulo(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 875
    .local v1, "initialEntryIndex":I
    move v2, v1

    .line 876
    .local v2, "entryIndex":I
    :goto_f
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget v3, v3, v2

    .line 877
    .local v3, "entry":I
    if-nez v3, :cond_17

    .line 878
    not-int v4, v2

    return v4

    .line 880
    :cond_17
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    not-int v4, v4

    and-int/2addr v4, v3

    if-ne v4, v0, :cond_2b

    .line 881
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 882
    .local v4, "dataIndex":I
    iget v5, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    invoke-static {p1, v4, v5, p2}, Landroid/icu/util/MutableCodePointTrie;->-$$Nest$smallValuesSameAs([IIII)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 883
    return v2

    .line 886
    .end local v4    # "dataIndex":I
    :cond_2b
    invoke-direct {p0, v1, v2}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->nextIndex(II)I

    move-result v2

    .line 887
    .end local v3    # "entry":I
    goto :goto_f
.end method

.method private blacklist findEntry([I[C[I[CII)I
    .registers 13
    .param p1, "data32"    # [I
    .param p2, "data16"    # [C
    .param p3, "blockData32"    # [I
    .param p4, "blockData16"    # [C
    .param p5, "blockStart"    # I
    .param p6, "hashCode"    # I

    .line 851
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    shl-int v0, p6, v0

    .line 852
    .local v0, "shiftedHashCode":I
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p6, v1}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->modulo(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 853
    .local v1, "initialEntryIndex":I
    move v2, v1

    .line 854
    .local v2, "entryIndex":I
    :goto_f
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget v3, v3, v2

    .line 855
    .local v3, "entry":I
    if-nez v3, :cond_17

    .line 856
    not-int v4, v2

    return v4

    .line 858
    :cond_17
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    not-int v4, v4

    and-int/2addr v4, v3

    if-ne v4, v0, :cond_41

    .line 859
    iget v4, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 860
    .local v4, "dataIndex":I
    if-eqz p1, :cond_2d

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 861
    invoke-static {p1, v4, p3, p5, v5}, Landroid/icu/util/MutableCodePointTrie;->-$$Nest$smequalBlocks([II[III)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_40

    :cond_2d
    if-eqz p3, :cond_38

    iget v5, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 863
    invoke-static {p2, v4, p3, p5, v5}, Landroid/icu/util/MutableCodePointTrie;->-$$Nest$smequalBlocks([CI[III)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_40

    :cond_38
    iget v5, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 864
    invoke-static {p2, v4, p4, p5, v5}, Landroid/icu/util/MutableCodePointTrie;->-$$Nest$smequalBlocks([CI[CII)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 865
    :goto_40
    return v2

    .line 868
    .end local v4    # "dataIndex":I
    :cond_41
    invoke-direct {p0, v1, v2}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->nextIndex(II)I

    move-result v2

    .line 869
    .end local v3    # "entry":I
    goto :goto_f
.end method

.method private blacklist makeHashCode(I)I
    .registers 5
    .param p1, "blockValue"    # I

    .line 834
    move v0, p1

    .line 835
    .local v0, "hashCode":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    if-ge v1, v2, :cond_d

    .line 836
    mul-int/lit8 v2, v0, 0x25

    add-int v0, v2, p1

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 838
    .end local v1    # "i":I
    :cond_d
    return v0
.end method

.method private blacklist makeHashCode([CI)I
    .registers 7
    .param p1, "blockData"    # [C
    .param p2, "blockStart"    # I

    .line 825
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    add-int/2addr v0, p2

    .line 826
    .local v0, "blockLimit":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "blockStart":I
    .local v1, "blockStart":I
    aget-char p2, p1, p2

    .line 828
    .local p2, "hashCode":I
    :goto_7
    mul-int/lit8 v2, p2, 0x25

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "blockStart":I
    .local v3, "blockStart":I
    aget-char v1, p1, v1

    add-int p2, v2, v1

    .line 829
    if-lt v3, v0, :cond_12

    .line 830
    return p2

    .line 829
    :cond_12
    move v1, v3

    goto :goto_7
.end method

.method private blacklist makeHashCode([II)I
    .registers 7
    .param p1, "blockData"    # [I
    .param p2, "blockStart"    # I

    .line 816
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    add-int/2addr v0, p2

    .line 817
    .local v0, "blockLimit":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "blockStart":I
    .local v1, "blockStart":I
    aget p2, p1, p2

    .line 819
    .local p2, "hashCode":I
    :goto_7
    mul-int/lit8 v2, p2, 0x25

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "blockStart":I
    .local v3, "blockStart":I
    aget v1, p1, v1

    add-int p2, v2, v1

    .line 820
    if-lt v3, v0, :cond_12

    .line 821
    return p2

    .line 820
    :cond_12
    move v1, v3

    goto :goto_7
.end method

.method private blacklist modulo(II)I
    .registers 4
    .param p1, "n"    # I
    .param p2, "m"    # I

    .line 897
    rem-int v0, p1, p2

    .line 898
    .local v0, "i":I
    if-gez v0, :cond_5

    .line 899
    add-int/2addr v0, p2

    .line 901
    :cond_5
    return v0
.end method

.method private blacklist nextIndex(II)I
    .registers 5
    .param p1, "initialEntryIndex"    # I
    .param p2, "entryIndex"    # I

    .line 892
    add-int v0, p2, p1

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method blacklist extend([CIII)V
    .registers 13
    .param p1, "data"    # [C
    .param p2, "minStart"    # I
    .param p3, "prevDataLength"    # I
    .param p4, "newDataLength"    # I

    .line 763
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    sub-int v0, p3, v0

    .line 764
    .local v0, "start":I
    if-lt v0, p2, :cond_9

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 767
    :cond_9
    move v0, p2

    .line 769
    :goto_a
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    sub-int v1, p4, v1

    move v5, v0

    .end local v0    # "start":I
    .local v1, "end":I
    .local v5, "start":I
    :goto_f
    if-gt v5, v1, :cond_1f

    .line 770
    invoke-direct {p0, p1, v5}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([CI)I

    move-result v6

    .line 771
    .local v6, "hashCode":I
    const/4 v3, 0x0

    move v7, v5

    move-object v2, p0

    move-object v4, p1

    .end local p1    # "data":[C
    .local v4, "data":[C
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->addEntry([I[CIII)V

    .line 769
    .end local v6    # "hashCode":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 773
    .end local v1    # "end":I
    .end local v4    # "data":[C
    .restart local p1    # "data":[C
    :cond_1f
    return-void
.end method

.method blacklist extend([IIII)V
    .registers 13
    .param p1, "data"    # [I
    .param p2, "minStart"    # I
    .param p3, "prevDataLength"    # I
    .param p4, "newDataLength"    # I

    .line 750
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    sub-int v0, p3, v0

    .line 751
    .local v0, "start":I
    if-lt v0, p2, :cond_9

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 754
    :cond_9
    move v0, p2

    .line 756
    :goto_a
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    sub-int v1, p4, v1

    move v5, v0

    .end local v0    # "start":I
    .local v1, "end":I
    .local v5, "start":I
    :goto_f
    if-gt v5, v1, :cond_1f

    .line 757
    invoke-direct {p0, p1, v5}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([II)I

    move-result v6

    .line 758
    .local v6, "hashCode":I
    const/4 v4, 0x0

    move v7, v5

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "data":[I
    .local v3, "data":[I
    invoke-direct/range {v2 .. v7}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->addEntry([I[CIII)V

    .line 756
    .end local v6    # "hashCode":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 760
    .end local v1    # "end":I
    .end local v3    # "data":[I
    .restart local p1    # "data":[I
    :cond_1f
    return-void
.end method

.method blacklist findAllSameBlock([II)I
    .registers 7
    .param p1, "data"    # [I
    .param p2, "blockValue"    # I

    .line 806
    invoke-direct {p0, p2}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode(I)I

    move-result v0

    .line 807
    .local v0, "hashCode":I
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([III)I

    move-result v1

    .line 808
    .local v1, "entryIndex":I
    if-ltz v1, :cond_14

    .line 809
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget v2, v2, v1

    iget v3, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 811
    :cond_14
    const/4 v2, -0x1

    return v2
.end method

.method blacklist findBlock([C[CI)I
    .registers 11
    .param p1, "data"    # [C
    .param p2, "blockData"    # [C
    .param p3, "blockStart"    # I

    .line 796
    invoke-direct {p0, p2, p3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([CI)I

    move-result v6

    .line 797
    .local v6, "hashCode":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "data":[C
    .end local p2    # "blockData":[C
    .end local p3    # "blockStart":I
    .local v2, "data":[C
    .local v4, "blockData":[C
    .local v5, "blockStart":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    .line 798
    .local p1, "entryIndex":I
    if-ltz p1, :cond_1a

    .line 799
    iget-object p2, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p2, p2, p1

    iget p3, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 801
    :cond_1a
    const/4 p2, -0x1

    return p2
.end method

.method blacklist findBlock([C[II)I
    .registers 11
    .param p1, "data"    # [C
    .param p2, "blockData"    # [I
    .param p3, "blockStart"    # I

    .line 786
    invoke-direct {p0, p2, p3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([II)I

    move-result v6

    .line 787
    .local v6, "hashCode":I
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "data":[C
    .end local p2    # "blockData":[I
    .end local p3    # "blockStart":I
    .local v2, "data":[C
    .local v3, "blockData":[I
    .local v5, "blockStart":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    .line 788
    .local p1, "entryIndex":I
    if-ltz p1, :cond_1a

    .line 789
    iget-object p2, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p2, p2, p1

    iget p3, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 791
    :cond_1a
    const/4 p2, -0x1

    return p2
.end method

.method blacklist findBlock([I[II)I
    .registers 11
    .param p1, "data"    # [I
    .param p2, "blockData"    # [I
    .param p3, "blockStart"    # I

    .line 776
    invoke-direct {p0, p2, p3}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([II)I

    move-result v6

    .line 777
    .local v6, "hashCode":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "data":[I
    .end local p2    # "blockData":[I
    .end local p3    # "blockStart":I
    .local v1, "data":[I
    .local v3, "blockData":[I
    .local v5, "blockStart":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    .line 778
    .local p1, "entryIndex":I
    if-ltz p1, :cond_1a

    .line 779
    iget-object p2, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p2, p2, p1

    iget p3, v0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 781
    :cond_1a
    const/4 p2, -0x1

    return p2
.end method

.method blacklist init(II)V
    .registers 7
    .param p1, "maxLength"    # I
    .param p2, "newBlockLength"    # I

    .line 719
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    .line 721
    .local v0, "maxDataIndex":I
    const/16 v1, 0xfff

    if-gt v0, v1, :cond_11

    .line 722
    const/16 v2, 0x1777

    .line 723
    .local v2, "newLength":I
    const/16 v3, 0xc

    iput v3, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 724
    iput v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    goto :goto_3a

    .line 725
    .end local v2    # "newLength":I
    :cond_11
    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1f

    .line 726
    const v2, 0xc365

    .line 727
    .restart local v2    # "newLength":I
    const/16 v3, 0xf

    iput v3, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 728
    iput v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    goto :goto_3a

    .line 729
    .end local v2    # "newLength":I
    :cond_1f
    const v1, 0x1ffff

    if-gt v0, v1, :cond_2e

    .line 730
    const v2, 0x30d43

    .line 731
    .restart local v2    # "newLength":I
    const/16 v3, 0x11

    iput v3, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 732
    iput v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    goto :goto_3a

    .line 735
    .end local v2    # "newLength":I
    :cond_2e
    const v2, 0x16e367

    .line 736
    .restart local v2    # "newLength":I
    const/16 v1, 0x15

    iput v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 737
    const v1, 0x1fffff

    iput v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    .line 739
    :goto_3a
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    array-length v1, v1

    if-le v2, v1, :cond_44

    goto :goto_4b

    .line 742
    :cond_44
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_4f

    .line 740
    :cond_4b
    :goto_4b
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    .line 744
    :goto_4f
    iput v2, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    .line 746
    iput p2, p0, Landroid/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 747
    return-void
.end method
