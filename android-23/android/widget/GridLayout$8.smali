.class final Landroid/widget/GridLayout$8;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Landroid/widget/GridLayout$Alignment;

.field final synthetic val$rtl:Landroid/widget/GridLayout$Alignment;


# direct methods
.method constructor <init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V
    .locals 0
    .param p1, "val$ltr"    # Landroid/widget/GridLayout$Alignment;
    .param p2, "val$rtl"    # Landroid/widget/GridLayout$Alignment;

    #@0
    .prologue
    .line 2846
    iput-object p1, p0, Landroid/widget/GridLayout$8;->val$ltr:Landroid/widget/GridLayout$Alignment;

    #@2
    iput-object p2, p0, Landroid/widget/GridLayout$8;->val$rtl:Landroid/widget/GridLayout$Alignment;

    #@4
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 2854
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/GridLayout$8;->val$ltr:Landroid/widget/GridLayout$Alignment;

    #@8
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_0
    iget-object v0, p0, Landroid/widget/GridLayout$8;->val$rtl:Landroid/widget/GridLayout$Alignment;

    #@f
    goto :goto_0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    #@0
    .prologue
    .line 2849
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/GridLayout$8;->val$ltr:Landroid/widget/GridLayout$Alignment;

    #@8
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_0
    iget-object v0, p0, Landroid/widget/GridLayout$8;->val$rtl:Landroid/widget/GridLayout$Alignment;

    #@f
    goto :goto_0
.end method
