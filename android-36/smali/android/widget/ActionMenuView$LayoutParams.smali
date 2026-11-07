.class public Landroid/widget/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public greylist-max-r cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r expanded:Z

.field public greylist-max-r extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 843
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 845
    return-void
.end method

.method public constructor greylist-max-o <init>(IIZ)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .line 849
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 850
    iput-boolean p3, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 851
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 830
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 831
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .line 834
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/ActionMenuView$LayoutParams;)V
    .registers 3
    .param p1, "other"    # Landroid/widget/ActionMenuView$LayoutParams;

    .line 838
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 839
    iget-boolean v0, p1, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 840
    return-void
.end method


# virtual methods
.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 856
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 858
    const-string v0, "layout:overFlowButton"

    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 859
    const-string v0, "layout:cellsUsed"

    iget v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 860
    const-string v0, "layout:extraPixels"

    iget v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 861
    const-string v0, "layout:expandable"

    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 862
    const-string v0, "layout:preventEdgeOffset"

    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 863
    return-void
.end method
