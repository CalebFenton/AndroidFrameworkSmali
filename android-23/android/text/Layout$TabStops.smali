.class Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:I

.field private mNumStops:I

.field private mStops:[I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "increment"    # I
    .param p2, "spans"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1705
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    #@6
    .line 1704
    return-void
.end method

.method public static nextDefaultStop(FI)F
    .locals 2
    .param p0, "h"    # F
    .param p1, "inc"    # I

    #@0
    .prologue
    .line 1753
    int-to-float v0, p1

    #@1
    add-float/2addr v0, p0

    #@2
    int-to-float v1, p1

    #@3
    div-float/2addr v0, v1

    #@4
    float-to-int v0, v0

    #@5
    mul-int/2addr v0, p1

    #@6
    int-to-float v0, v0

    #@7
    return v0
.end method


# virtual methods
.method nextTab(F)F
    .locals 5
    .param p1, "h"    # F

    #@0
    .prologue
    .line 1739
    iget v1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    #@2
    .line 1740
    .local v1, "ns":I
    if-lez v1, :cond_1

    #@4
    .line 1741
    iget-object v3, p0, Landroid/text/Layout$TabStops;->mStops:[I

    #@6
    .line 1742
    .local v3, "stops":[I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 1743
    aget v2, v3, v0

    #@b
    .line 1744
    .local v2, "stop":I
    int-to-float v4, v2

    #@c
    cmpl-float v4, v4, p1

    #@e
    if-lez v4, :cond_0

    #@10
    .line 1745
    int-to-float v4, v2

    #@11
    return v4

    #@12
    .line 1742
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1749
    .end local v0    # "i":I
    .end local v2    # "stop":I
    .end local v3    # "stops":[I
    :cond_1
    iget v4, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    #@17
    invoke-static {p1, v4}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    #@1a
    move-result v4

    #@1b
    return v4
.end method

.method reset(I[Ljava/lang/Object;)V
    .locals 10
    .param p1, "increment"    # I
    .param p2, "spans"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1709
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    #@3
    .line 1711
    const/4 v1, 0x0

    #@4
    .line 1712
    .local v1, "ns":I
    if-eqz p2, :cond_5

    #@6
    .line 1713
    iget-object v5, p0, Landroid/text/Layout$TabStops;->mStops:[I

    #@8
    .line 1714
    .local v5, "stops":[I
    array-length v8, p2

    #@9
    move v6, v7

    #@a
    move v2, v1

    #@b
    .end local v1    # "ns":I
    .local v2, "ns":I
    :goto_0
    if-ge v6, v8, :cond_3

    #@d
    aget-object v4, p2, v6

    #@f
    .line 1715
    .local v4, "o":Ljava/lang/Object;
    instance-of v9, v4, Landroid/text/style/TabStopSpan;

    #@11
    if-eqz v9, :cond_7

    #@13
    .line 1716
    if-nez v5, :cond_1

    #@15
    .line 1717
    const/16 v9, 0xa

    #@17
    new-array v5, v9, [I

    #@19
    .line 1725
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    #@1b
    .end local v2    # "ns":I
    .restart local v1    # "ns":I
    check-cast v4, Landroid/text/style/TabStopSpan;

    #@1d
    .end local v4    # "o":Ljava/lang/Object;
    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    #@20
    move-result v9

    #@21
    aput v9, v5, v2

    #@23
    .line 1714
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@25
    move v2, v1

    #@26
    .end local v1    # "ns":I
    .restart local v2    # "ns":I
    goto :goto_0

    #@27
    .line 1718
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_1
    array-length v9, v5

    #@28
    if-ne v2, v9, :cond_0

    #@2a
    .line 1719
    mul-int/lit8 v9, v2, 0x2

    #@2c
    new-array v3, v9, [I

    #@2e
    .line 1720
    .local v3, "nstops":[I
    const/4 v0, 0x0

    #@2f
    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_2

    #@31
    .line 1721
    aget v9, v5, v0

    #@33
    aput v9, v3, v0

    #@35
    .line 1720
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_3

    #@38
    .line 1723
    :cond_2
    move-object v5, v3

    #@39
    goto :goto_1

    #@3a
    .line 1728
    .end local v0    # "i":I
    .end local v3    # "nstops":[I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x1

    #@3b
    if-le v2, v6, :cond_4

    #@3d
    .line 1729
    invoke-static {v5, v7, v2}, Ljava/util/Arrays;->sort([III)V

    #@40
    .line 1731
    :cond_4
    iget-object v6, p0, Landroid/text/Layout$TabStops;->mStops:[I

    #@42
    if-eq v5, v6, :cond_6

    #@44
    .line 1732
    iput-object v5, p0, Landroid/text/Layout$TabStops;->mStops:[I

    #@46
    move v1, v2

    #@47
    .line 1735
    .end local v2    # "ns":I
    .end local v5    # "stops":[I
    .restart local v1    # "ns":I
    :cond_5
    :goto_4
    iput v1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    #@49
    .line 1708
    return-void

    #@4a
    .end local v1    # "ns":I
    .restart local v2    # "ns":I
    .restart local v5    # "stops":[I
    :cond_6
    move v1, v2

    #@4b
    .end local v2    # "ns":I
    .restart local v1    # "ns":I
    goto :goto_4

    #@4c
    .end local v1    # "ns":I
    .restart local v2    # "ns":I
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_7
    move v1, v2

    #@4d
    .end local v2    # "ns":I
    .restart local v1    # "ns":I
    goto :goto_2
.end method
