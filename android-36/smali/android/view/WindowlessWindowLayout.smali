.class public Landroid/view/WindowlessWindowLayout;
.super Landroid/view/WindowLayout;
.source "WindowlessWindowLayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/view/WindowLayout;-><init>()V

    return-void
.end method

.method private static blacklist calculateLength(III)I
    .registers 4
    .param p0, "attrLength"    # I
    .param p1, "requestedLength"    # I
    .param p2, "parentLength"    # I

    .line 63
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 64
    return p2

    .line 66
    :cond_4
    const/4 v0, -0x2

    if-ne p0, v0, :cond_8

    .line 67
    return p1

    .line 69
    :cond_8
    return p0
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .registers 23
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibleTypes"    # I
    .param p9, "compatScale"    # F
    .param p10, "frames"    # Landroid/window/ClientWindowFrames;

    .line 43
    move-object/from16 v0, p10

    iget-object v1, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-nez v1, :cond_1f

    .line 44
    iget-object v1, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    iget-object v1, v0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 46
    iget-object v1, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    return-void

    .line 50
    :cond_1f
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 50
    move/from16 v3, p7

    invoke-static {v1, v3, v2}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result v6

    .line 52
    .local v6, "height":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 52
    move/from16 v11, p6

    invoke-static {v1, v11, v2}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result v5

    .line 54
    .local v5, "width":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v7, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    add-float/2addr v1, v2

    float-to-int v8, v1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    add-float/2addr v1, v2

    float-to-int v9, v1

    iget-object v10, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static/range {v4 .. v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 58
    iget-object v1, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    iget-object v1, v0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    return-void
.end method
