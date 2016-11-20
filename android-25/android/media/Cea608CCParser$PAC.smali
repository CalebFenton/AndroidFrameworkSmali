.class Landroid/media/Cea608CCParser$PAC;
.super Landroid/media/Cea608CCParser$StyleCode;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PAC"
.end annotation


# instance fields
.field final mCol:I

.field final mRow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "style"    # I
    .param p4, "color"    # I

    #@0
    .prologue
    .line 603
    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    #@3
    .line 604
    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    #@5
    .line 605
    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    #@7
    .line 602
    return-void
.end method

.method static fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .locals 8
    .param p0, "data1"    # B
    .param p1, "data2"    # B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 579
    const/16 v5, 0x8

    #@3
    new-array v3, v5, [I

    #@5
    .local v3, "rowTable":[I
    fill-array-data v3, :array_0

    #@8
    .line 580
    and-int/lit8 v5, p0, 0x7

    #@a
    aget v5, v3, v5

    #@c
    and-int/lit8 v6, p1, 0x20

    #@e
    shr-int/lit8 v6, v6, 0x5

    #@10
    add-int v2, v5, v6

    #@12
    .line 581
    .local v2, "row":I
    const/4 v4, 0x0

    #@13
    .line 582
    .local v4, "style":I
    and-int/lit8 v5, p1, 0x1

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 583
    const/4 v4, 0x2

    #@18
    .line 585
    :cond_0
    and-int/lit8 v5, p1, 0x10

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 587
    shr-int/lit8 v5, p1, 0x1

    #@1e
    and-int/lit8 v1, v5, 0x7

    #@20
    .line 588
    .local v1, "indent":I
    new-instance v5, Landroid/media/Cea608CCParser$PAC;

    #@22
    mul-int/lit8 v6, v1, 0x4

    #@24
    invoke-direct {v5, v2, v6, v4, v7}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    #@27
    return-object v5

    #@28
    .line 591
    .end local v1    # "indent":I
    :cond_1
    shr-int/lit8 v5, p1, 0x1

    #@2a
    and-int/lit8 v0, v5, 0x7

    #@2c
    .line 593
    .local v0, "color":I
    const/4 v5, 0x7

    #@2d
    if-ne v0, v5, :cond_2

    #@2f
    .line 595
    const/4 v0, 0x0

    #@30
    .line 596
    or-int/lit8 v4, v4, 0x1

    #@32
    .line 598
    :cond_2
    new-instance v5, Landroid/media/Cea608CCParser$PAC;

    #@34
    const/4 v6, -0x1

    #@35
    invoke-direct {v5, v2, v6, v4, v0}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    #@38
    return-object v5

    #@39
    .line 579
    nop

    #@3a
    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method getCol()I
    .locals 1

    #@0
    .prologue
    .line 617
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    #@2
    return v0
.end method

.method getRow()I
    .locals 1

    #@0
    .prologue
    .line 613
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    #@2
    return v0
.end method

.method isIndentPAC()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 609
    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 622
    const-string/jumbo v0, "{%d, %d}, %s"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 623
    iget v2, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    const/4 v3, 0x2

    #@1d
    aput-object v2, v1, v3

    #@1f
    .line 622
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
