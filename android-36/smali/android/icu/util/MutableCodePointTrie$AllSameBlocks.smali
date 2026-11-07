.class final Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;
.super Ljava/lang/Object;
.source "MutableCodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MutableCodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllSameBlocks"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CAPACITY:I = 0x20

.field static final blacklist NEW_UNIQUE:I = -0x1

.field static final blacklist OVERFLOW:I = -0x2


# instance fields
.field private blacklist indexes:[I

.field private blacklist length:I

.field private blacklist mostRecent:I

.field private blacklist refCounts:[I

.field private blacklist values:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 642
    const-class v0, Landroid/icu/util/MutableCodePointTrie;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    .line 710
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    .line 711
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    .line 647
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 648
    return-void
.end method


# virtual methods
.method blacklist add(III)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "value"    # I

    .line 674
    nop

    .line 675
    const/4 v0, -0x1

    .line 676
    .local v0, "least":I
    const v1, 0x11000

    .line 677
    .local v1, "leastCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-ge v2, v3, :cond_19

    .line 678
    nop

    .line 679
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v3, v3, v2

    if-ge v3, v1, :cond_16

    .line 680
    move v0, v2

    .line 681
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v1, v3, v2

    .line 677
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 684
    .end local v2    # "i":I
    :cond_19
    nop

    .line 685
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 686
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aput p1, v2, v0

    .line 687
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    aput p3, v2, v0

    .line 688
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aput p2, v2, v0

    .line 689
    return-void
.end method

.method blacklist findMostUsed()I
    .registers 5

    .line 692
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 693
    :cond_6
    const/4 v0, -0x1

    .line 694
    .local v0, "max":I
    const/4 v1, 0x0

    .line 695
    .local v1, "maxCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v3, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-ge v2, v3, :cond_1b

    .line 696
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v3, v3, v2

    if-le v3, v1, :cond_18

    .line 697
    move v0, v2

    .line 698
    iget-object v3, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v1, v3, v2

    .line 695
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 701
    .end local v2    # "i":I
    :cond_1b
    iget-object v2, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aget v2, v2, v0

    return v2
.end method

.method blacklist findOrAdd(III)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "value"    # I

    .line 651
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    if-ltz v0, :cond_1c

    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    aget v0, v0, v1

    if-ne v0, p3, :cond_1c

    .line 652
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    .line 653
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    aget v0, v0, v1

    return v0

    .line 655
    :cond_1c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-ge v0, v1, :cond_38

    .line 656
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_35

    .line 657
    iput v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 658
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v2, v1, v0

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 659
    iget-object v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aget v1, v1, v0

    return v1

    .line 655
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 662
    .end local v0    # "i":I
    :cond_38
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_40

    .line 663
    const/4 v0, -0x2

    return v0

    .line 665
    :cond_40
    iget v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    iput v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 666
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    aput p1, v0, v1

    .line 667
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    aput p3, v0, v1

    .line 668
    iget-object v0, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    iget v1, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    aput p2, v0, v1

    .line 669
    const/4 v0, -0x1

    return v0
.end method
