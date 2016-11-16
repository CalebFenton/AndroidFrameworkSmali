.class public Landroid/widget/AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field isEnabled:Z

.field itemId:J

.field recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field scrappedFromPosition:I

.field viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 6504
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3
    .line 6494
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@7
    .line 6503
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "viewType"    # I

    #@0
    .prologue
    .line 6508
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3
    .line 6494
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@7
    .line 6509
    iput p3, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@9
    .line 6507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 6500
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 6494
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@7
    .line 6499
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 6513
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 6494
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@7
    .line 6512
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 6519
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 6521
    const-string/jumbo v0, "list:viewType"

    #@6
    iget v1, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@b
    .line 6522
    const-string/jumbo v0, "list:recycledHeaderFooter"

    #@e
    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@13
    .line 6523
    const-string/jumbo v0, "list:forceAdd"

    #@16
    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@1b
    .line 6524
    const-string/jumbo v0, "list:isEnabled"

    #@1e
    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@23
    .line 6518
    return-void
.end method
