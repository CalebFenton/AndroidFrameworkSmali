.class Landroid/widget/GridLayout$7$1;
.super Landroid/widget/GridLayout$Bounds;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridLayout$7;->getBounds()Landroid/widget/GridLayout$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist size:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/GridLayout$7;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/GridLayout$7;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2959
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Bounds;-><init>(Landroid/widget/GridLayout-IA;)V

    return-void
.end method


# virtual methods
.method protected blacklist getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .registers 8
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "hrz"    # Z

    .line 2987
    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected blacklist include(II)V
    .registers 5
    .param p1, "before"    # I
    .param p2, "after"    # I

    .line 2976
    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout$Bounds;->include(II)V

    .line 2977
    iget v0, p0, Landroid/widget/GridLayout$7$1;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$7$1;->size:I

    .line 2978
    return-void
.end method

.method protected blacklist reset()V
    .registers 2

    .line 2970
    invoke-super {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 2971
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$7$1;->size:I

    .line 2972
    return-void
.end method

.method protected blacklist size(Z)I
    .registers 4
    .param p1, "min"    # Z

    .line 2982
    invoke-super {p0, p1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v0

    iget v1, p0, Landroid/widget/GridLayout$7$1;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
