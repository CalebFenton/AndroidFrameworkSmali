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
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2358
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    #@6
    .line 2357
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout$Bounds;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    #@0
    .prologue
    .line 2382
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    #@2
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p3, p2, p4, v1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    #@9
    move-result v1

    #@a
    sub-int/2addr v0, v1

    #@b
    return v0
.end method

.method protected include(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    #@0
    .prologue
    .line 2368
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    #@2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    #@8
    .line 2369
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    #@a
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    #@10
    .line 2367
    return-void
.end method

.method protected final include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V
    .locals 5
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Landroid/widget/GridLayout$Spec;
    .param p4, "axis"    # Landroid/widget/GridLayout$Axis;
    .param p5, "size"    # I

    #@0
    .prologue
    .line 2386
    iget v3, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    #@2
    invoke-virtual {p3}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    #@5
    move-result v4

    #@6
    and-int/2addr v3, v4

    #@7
    iput v3, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    #@9
    .line 2387
    iget-boolean v2, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@b
    .line 2388
    .local v2, "horizontal":Z
    iget-boolean v3, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    #@d
    invoke-static {p3, v3}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    #@10
    move-result-object v0

    #@11
    .line 2390
    .local v0, "alignment":Landroid/widget/GridLayout$Alignment;
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v0, p2, p5, v3}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    #@18
    move-result v1

    #@19
    .line 2391
    .local v1, "before":I
    sub-int v3, p5, v1

    #@1b
    invoke-virtual {p0, v1, v3}, Landroid/widget/GridLayout$Bounds;->include(II)V

    #@1e
    .line 2385
    return-void
.end method

.method protected reset()V
    .locals 1

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    .line 2362
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    #@4
    .line 2363
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    #@6
    .line 2364
    const/4 v0, 0x2

    #@7
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    #@9
    .line 2361
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    #@0
    .prologue
    .line 2373
    if-nez p1, :cond_0

    #@2
    .line 2374
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    #@4
    invoke-static {v0}, Landroid/widget/GridLayout;->canStretch(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2375
    const v0, 0x186a0

    #@d
    return v0

    #@e
    .line 2378
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    #@10
    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    #@12
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Bounds{before="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 2397
    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    #@e
    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 2398
    const-string/jumbo v1, ", after="

    #@15
    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 2398
    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    #@1b
    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 2399
    const/16 v1, 0x7d

    #@21
    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
