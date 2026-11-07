.class Landroid/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public greylist-max-o after:I

.field public greylist-max-o before:I

.field public greylist-max-o flexibility:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 2405
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/GridLayout-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .registers 8
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .line 2428
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected greylist-max-o include(II)V
    .registers 4
    .param p1, "before"    # I
    .param p2, "after"    # I

    .line 2414
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2415
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2416
    return-void
.end method

.method protected final greylist-max-o include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V
    .registers 10
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Landroid/widget/GridLayout$Spec;
    .param p4, "axis"    # Landroid/widget/GridLayout$Axis;
    .param p5, "size"    # I

    .line 2432
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2433
    iget-boolean v0, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 2434
    .local v0, "horizontal":Z
    iget-boolean v1, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-static {p3, v1}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    .line 2436
    .local v1, "alignment":Landroid/widget/GridLayout$Alignment;
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result v2

    invoke-virtual {v1, p2, p5, v2}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v2

    .line 2437
    .local v2, "before":I
    sub-int v3, p5, v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridLayout$Bounds;->include(II)V

    .line 2438
    return-void
.end method

.method protected greylist-max-o reset()V
    .registers 2

    .line 2408
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2409
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2410
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2411
    return-void
.end method

.method protected greylist-max-o size(Z)I
    .registers 4
    .param p1, "min"    # Z

    .line 2419
    if-nez p1, :cond_e

    .line 2420
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Landroid/widget/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2421
    const v0, 0x186a0

    return v0

    .line 2424
    :cond_e
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
