.class Landroid/widget/GridLayout$6$1;
.super Landroid/widget/GridLayout$Bounds;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridLayout$6;->getBounds()Landroid/widget/GridLayout$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:I

.field final synthetic this$1:Landroid/widget/GridLayout$6;


# direct methods
.method constructor <init>(Landroid/widget/GridLayout$6;)V
    .locals 1
    .param p1, "this$1"    # Landroid/widget/GridLayout$6;

    #@0
    .prologue
    .line 2912
    iput-object p1, p0, Landroid/widget/GridLayout$6$1;->this$1:Landroid/widget/GridLayout$6;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Bounds;-><init>(Landroid/widget/GridLayout$Bounds;)V

    #@6
    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "hrz"    # Z

    #@0
    .prologue
    .line 2940
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method protected include(II)V
    .locals 2
    .param p1, "before"    # I
    .param p2, "after"    # I

    #@0
    .prologue
    .line 2929
    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout$Bounds;->include(II)V

    #@3
    .line 2930
    iget v0, p0, Landroid/widget/GridLayout$6$1;->size:I

    #@5
    add-int v1, p1, p2

    #@7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/widget/GridLayout$6$1;->size:I

    #@d
    .line 2928
    return-void
.end method

.method protected reset()V
    .locals 1

    #@0
    .prologue
    .line 2923
    invoke-super {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    #@3
    .line 2924
    const/high16 v0, -0x80000000

    #@5
    iput v0, p0, Landroid/widget/GridLayout$6$1;->size:I

    #@7
    .line 2922
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    #@0
    .prologue
    .line 2935
    invoke-super {p0, p1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/GridLayout$6$1;->size:I

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method
