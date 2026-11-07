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
.field final greylist-max-o mCol:I

.field final greylist-max-o mRow:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "style"    # I
    .param p4, "color"    # I

    .line 603
    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    .line 604
    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    .line 605
    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    .line 606
    return-void
.end method

.method static greylist-max-o fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .registers 9
    .param p0, "data1"    # B
    .param p1, "data2"    # B

    .line 579
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    .line 580
    .local v0, "rowTable":[I
    and-int/lit8 v1, p0, 0x7

    aget v1, v0, v1

    and-int/lit8 v2, p1, 0x20

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    .line 581
    .local v1, "row":I
    const/4 v2, 0x0

    .line 582
    .local v2, "style":I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_17

    .line 583
    or-int/lit8 v2, v2, 0x2

    .line 585
    :cond_17
    and-int/lit8 v3, p1, 0x10

    const/4 v4, 0x7

    if-eqz v3, :cond_28

    .line 587
    shr-int/lit8 v3, p1, 0x1

    and-int/2addr v3, v4

    .line 588
    .local v3, "indent":I
    new-instance v4, Landroid/media/Cea608CCParser$PAC;

    mul-int/lit8 v5, v3, 0x4

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v4

    .line 591
    .end local v3    # "indent":I
    :cond_28
    shr-int/lit8 v3, p1, 0x1

    and-int/2addr v3, v4

    .line 593
    .local v3, "color":I
    if-ne v3, v4, :cond_30

    .line 595
    const/4 v3, 0x0

    .line 596
    or-int/lit8 v2, v2, 0x1

    .line 598
    :cond_30
    new-instance v4, Landroid/media/Cea608CCParser$PAC;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5, v2, v3}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v4

    nop

    :array_38
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
.method greylist-max-o getCol()I
    .registers 2

    .line 617
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return v0
.end method

.method greylist-max-o getRow()I
    .registers 2

    .line 613
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    return v0
.end method

.method greylist-max-o isIndentPAC()Z
    .registers 2

    .line 609
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 622
    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    .line 623
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 622
    const-string v1, "{%d, %d}, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
