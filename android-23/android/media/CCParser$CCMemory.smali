.class Landroid/media/CCParser$CCMemory;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method static synthetic -wrap0(Landroid/media/CCParser$CCMemory;II)V
    .locals 0
    .param p1, "baseRow"    # I
    .param p2, "windowSize"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/CCParser$CCMemory;->moveBaselineTo(II)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 589
    const/16 v1, 0x11

    #@5
    new-array v1, v1, [Landroid/media/CCParser$CCLineBuilder;

    #@7
    iput-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@9
    .line 594
    const/16 v1, 0x22

    #@b
    new-array v0, v1, [C

    #@d
    .line 595
    .local v0, "blank":[C
    const/16 v1, 0xa0

    #@f
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@12
    .line 596
    new-instance v1, Ljava/lang/String;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@17
    iput-object v1, p0, Landroid/media/CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    #@19
    .line 593
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 695
    if-ge p0, p1, :cond_0

    #@2
    .end local p1    # "min":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    #@5
    move p1, p2

    #@6
    goto :goto_0

    #@7
    :cond_1
    move p1, p0

    #@8
    goto :goto_0
.end method

.method private getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;
    .locals 3
    .param p1, "row"    # I

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@2
    aget-object v0, v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 746
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@8
    new-instance v1, Landroid/media/CCParser$CCLineBuilder;

    #@a
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    #@c
    invoke-direct {v1, v2}, Landroid/media/CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    #@f
    aput-object v1, v0, p1

    #@11
    .line 748
    :cond_0
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@13
    aget-object v0, v0, p1

    #@15
    return-object v0
.end method

.method private moveBaselineTo(II)V
    .locals 7
    .param p1, "baseRow"    # I
    .param p2, "windowSize"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 712
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@3
    if-ne v2, p1, :cond_0

    #@5
    .line 713
    return-void

    #@6
    .line 715
    :cond_0
    move v0, p2

    #@7
    .line 716
    .local v0, "actualWindowSize":I
    if-ge p1, v0, :cond_1

    #@9
    .line 717
    move v0, p1

    #@a
    .line 719
    :cond_1
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@c
    if-ge v2, v0, :cond_2

    #@e
    .line 720
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@10
    .line 724
    :cond_2
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@12
    if-ge p1, v2, :cond_3

    #@14
    .line 726
    add-int/lit8 v1, v0, -0x1

    #@16
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@18
    .line 727
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@1a
    sub-int v3, p1, v1

    #@1c
    iget-object v4, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@1e
    iget v5, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@20
    sub-int/2addr v5, v1

    #@21
    aget-object v4, v4, v5

    #@23
    aput-object v4, v2, v3

    #@25
    .line 726
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_0

    #@28
    .line 731
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    #@29
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@2b
    .line 732
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@2d
    sub-int v3, p1, v1

    #@2f
    iget-object v4, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@31
    iget v5, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@33
    sub-int/2addr v5, v1

    #@34
    aget-object v4, v4, v5

    #@36
    aput-object v4, v2, v3

    #@38
    .line 731
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 736
    :cond_4
    const/4 v1, 0x0

    #@3c
    :goto_2
    sub-int v2, p1, p2

    #@3e
    if-gt v1, v2, :cond_5

    #@40
    .line 737
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@42
    aput-object v6, v2, v1

    #@44
    .line 736
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_2

    #@47
    .line 739
    :cond_5
    add-int/lit8 v1, p1, 0x1

    #@49
    :goto_3
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@4b
    array-length v2, v2

    #@4c
    if-ge v1, v2, :cond_6

    #@4e
    .line 740
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@50
    aput-object v6, v2, v1

    #@52
    .line 739
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_3

    #@55
    .line 711
    :cond_6
    return-void
.end method

.method private moveCursorByCol(I)V
    .locals 3
    .param p1, "col"    # I

    #@0
    .prologue
    .line 708
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@2
    add-int/2addr v0, p1

    #@3
    const/4 v1, 0x1

    #@4
    const/16 v2, 0x20

    #@6
    invoke-static {v0, v1, v2}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@c
    .line 707
    return-void
.end method

.method private moveCursorTo(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 699
    const/16 v0, 0xf

    #@3
    invoke-static {p1, v1, v0}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@9
    .line 700
    const/16 v0, 0x20

    #@b
    invoke-static {p2, v1, v0}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@11
    .line 698
    return-void
.end method

.method private moveCursorToRow(I)V
    .locals 2
    .param p1, "row"    # I

    #@0
    .prologue
    .line 704
    const/4 v0, 0x1

    #@1
    const/16 v1, 0xf

    #@3
    invoke-static {p1, v0, v1}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@9
    .line 703
    return-void
.end method


# virtual methods
.method bs()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0xa0

    #@2
    .line 627
    const/4 v0, -0x1

    #@3
    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    #@6
    .line 628
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@8
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@a
    aget-object v0, v0, v1

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 629
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@10
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@12
    aget-object v0, v0, v1

    #@14
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    #@19
    .line 630
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@1b
    const/16 v1, 0x1f

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 634
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@21
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@23
    aget-object v0, v0, v1

    #@25
    const/16 v1, 0x20

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    #@2a
    .line 626
    :cond_0
    return-void
.end method

.method cr()V
    .locals 2

    #@0
    .prologue
    .line 640
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    #@8
    .line 639
    return-void
.end method

.method der()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0xa0

    #@3
    .line 609
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@5
    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@7
    aget-object v2, v2, v3

    #@9
    if-eqz v2, :cond_3

    #@b
    .line 610
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@e
    if-ge v0, v2, :cond_2

    #@10
    .line 611
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@12
    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@14
    aget-object v2, v2, v3

    #@16
    invoke-virtual {v2, v0}, Landroid/media/CCParser$CCLineBuilder;->charAt(I)C

    #@19
    move-result v2

    #@1a
    if-eq v2, v4, :cond_1

    #@1c
    .line 612
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@1e
    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@20
    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@22
    aget-object v2, v2, v3

    #@24
    invoke-virtual {v2}, Landroid/media/CCParser$CCLineBuilder;->length()I

    #@27
    move-result v2

    #@28
    if-ge v1, v2, :cond_0

    #@2a
    .line 613
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@2c
    aget-object v2, v2, v1

    #@2e
    invoke-virtual {v2, v1, v4}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    #@31
    .line 612
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_1

    #@34
    .line 615
    :cond_0
    return-void

    #@35
    .line 610
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 618
    :cond_2
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@3a
    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@3c
    aput-object v5, v2, v3

    #@3e
    .line 608
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method erase()V
    .locals 3

    #@0
    .prologue
    .line 601
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 602
    iget-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v2, v1, v0

    #@b
    .line 601
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 604
    :cond_0
    const/16 v1, 0xf

    #@10
    iput v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@12
    .line 605
    const/4 v1, 0x1

    #@13
    iput v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@15
    .line 599
    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v4, 0xf

    #@3
    .line 686
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    .line 687
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableStringBuilder;>;"
    const/4 v0, 0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_1

    #@b
    .line 688
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@d
    aget-object v2, v2, v0

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 689
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@13
    aget-object v2, v2, v0

    #@15
    invoke-virtual {v2, p1}, Landroid/media/CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 688
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 687
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    move-object v2, v3

    #@20
    .line 689
    goto :goto_1

    #@21
    .line 691
    :cond_1
    new-array v2, v4, [Landroid/text/SpannableStringBuilder;

    #@23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, [Landroid/text/SpannableStringBuilder;

    #@29
    return-object v2
.end method

.method rollUp(I)V
    .locals 7
    .param p1, "windowSize"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 645
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@5
    sub-int/2addr v2, p1

    #@6
    if-gt v0, v2, :cond_0

    #@8
    .line 646
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@a
    aput-object v6, v2, v0

    #@c
    .line 645
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 648
    :cond_0
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@11
    sub-int/2addr v2, p1

    #@12
    add-int/lit8 v1, v2, 0x1

    #@14
    .line 649
    .local v1, "startRow":I
    if-ge v1, v5, :cond_1

    #@16
    .line 650
    const/4 v1, 0x1

    #@17
    .line 652
    :cond_1
    move v0, v1

    #@18
    :goto_1
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@1a
    if-ge v0, v2, :cond_2

    #@1c
    .line 653
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@1e
    iget-object v3, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@20
    add-int/lit8 v4, v0, 0x1

    #@22
    aget-object v3, v3, v4

    #@24
    aput-object v3, v2, v0

    #@26
    .line 652
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1

    #@29
    .line 655
    :cond_2
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@2b
    :goto_2
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@2d
    array-length v2, v2

    #@2e
    if-ge v0, v2, :cond_3

    #@30
    .line 657
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    #@32
    aput-object v6, v2, v0

    #@34
    .line 655
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 660
    :cond_3
    iput v5, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@39
    .line 643
    return-void
.end method

.method tab(I)V
    .locals 0
    .param p1, "tabs"    # I

    #@0
    .prologue
    .line 623
    invoke-direct {p0, p1}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    #@3
    .line 622
    return-void
.end method

.method writeMidRowCode(Landroid/media/CCParser$StyleCode;)V
    .locals 2
    .param p1, "m"    # Landroid/media/CCParser$StyleCode;

    #@0
    .prologue
    .line 671
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@2
    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/media/CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/CCParser$StyleCode;)V

    #@b
    .line 672
    const/4 v0, 0x1

    #@c
    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    #@f
    .line 670
    return-void
.end method

.method writePAC(Landroid/media/CCParser$PAC;)V
    .locals 2
    .param p1, "pac"    # Landroid/media/CCParser$PAC;

    #@0
    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->isIndentPAC()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 677
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getRow()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getCol()I

    #@d
    move-result v1

    #@e
    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    #@11
    .line 681
    :goto_0
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@13
    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@19
    invoke-virtual {v0, v1, p1}, Landroid/media/CCParser$CCLineBuilder;->setPACAt(ILandroid/media/CCParser$PAC;)V

    #@1c
    .line 675
    return-void

    #@1d
    .line 679
    :cond_0
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getRow()I

    #@20
    move-result v0

    #@21
    const/4 v1, 0x1

    #@22
    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    #@25
    goto :goto_0
.end method

.method writeText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 664
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 665
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    #@9
    invoke-direct {p0, v1}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    #@c
    move-result-object v1

    #@d
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v3

    #@13
    invoke-virtual {v1, v2, v3}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    #@16
    .line 666
    const/4 v1, 0x1

    #@17
    invoke-direct {p0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    #@1a
    .line 664
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 663
    :cond_0
    return-void
.end method
