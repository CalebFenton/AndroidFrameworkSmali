.class final Landroid/widget/GridLayout$6;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2895
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 2903
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x8

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 2904
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 2906
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    #@d
    move-result v0

    #@e
    .line 2907
    .local v0, "baseline":I
    const/4 v1, -0x1

    #@f
    if-ne v0, v1, :cond_1

    #@11
    const/high16 v0, -0x80000000

    #@13
    .end local v0    # "baseline":I
    :cond_1
    return v0
.end method

.method public getBounds()Landroid/widget/GridLayout$Bounds;
    .locals 1

    #@0
    .prologue
    .line 2912
    new-instance v0, Landroid/widget/GridLayout$6$1;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/GridLayout$6$1;-><init>(Landroid/widget/GridLayout$6;)V

    #@5
    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    #@0
    .prologue
    .line 2898
    const/4 v0, 0x0

    #@1
    return v0
.end method
