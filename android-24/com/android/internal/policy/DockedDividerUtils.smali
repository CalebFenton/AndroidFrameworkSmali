.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 3
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 36
    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 37
    packed-switch p1, :pswitch_data_0

    #@8
    .line 51
    :goto_0
    if-eq p1, v0, :cond_0

    #@a
    const/4 v2, 0x2

    #@b
    if-ne p1, v2, :cond_1

    #@d
    :cond_0
    :goto_1
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    #@10
    .line 35
    return-void

    #@11
    .line 39
    :pswitch_0
    iput p0, p2, Landroid/graphics/Rect;->right:I

    #@13
    goto :goto_0

    #@14
    .line 42
    :pswitch_1
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    #@16
    goto :goto_0

    #@17
    .line 45
    :pswitch_2
    add-int v2, p0, p5

    #@19
    iput v2, p2, Landroid/graphics/Rect;->left:I

    #@1b
    goto :goto_0

    #@1c
    .line 48
    :pswitch_3
    add-int v2, p0, p5

    #@1e
    iput v2, p2, Landroid/graphics/Rect;->top:I

    #@20
    goto :goto_0

    #@21
    :cond_1
    move v0, v1

    #@22
    .line 51
    goto :goto_1

    #@23
    .line 37
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 4
    .param p0, "isHorizontalDivision"    # Z
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I

    #@0
    .prologue
    .line 101
    if-eqz p0, :cond_0

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    .line 102
    .local v1, "start":I
    :goto_0
    if-eqz p0, :cond_1

    #@6
    .line 103
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    sub-int v0, p3, v2

    #@a
    .line 105
    .local v0, "end":I
    :goto_1
    sub-int v2, v0, v1

    #@c
    div-int/lit8 v2, v2, 0x2

    #@e
    add-int/2addr v2, v1

    #@f
    div-int/lit8 v3, p4, 0x2

    #@11
    sub-int/2addr v2, v3

    #@12
    return v2

    #@13
    .line 101
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@15
    .restart local v1    # "start":I
    goto :goto_0

    #@16
    .line 104
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@18
    sub-int v0, p2, v2

    #@1a
    goto :goto_1
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "dockSide"    # I
    .param p2, "dividerSize"    # I

    #@0
    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    #@3
    .line 95
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 87
    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@7
    return v0

    #@8
    .line 89
    :pswitch_1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@a
    return v0

    #@b
    .line 91
    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@d
    sub-int/2addr v0, p2

    #@e
    return v0

    #@f
    .line 93
    :pswitch_3
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@11
    sub-int/2addr v0, p2

    #@12
    return v0

    #@13
    .line 85
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDockSideFromCreatedMode(ZZ)I
    .locals 1
    .param p0, "dockOnTopOrLeft"    # Z
    .param p1, "isHorizontalDivision"    # Z

    #@0
    .prologue
    .line 110
    if-eqz p0, :cond_1

    #@2
    .line 111
    if-eqz p1, :cond_0

    #@4
    .line 112
    const/4 v0, 0x2

    #@5
    return v0

    #@6
    .line 114
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 117
    :cond_1
    if-eqz p1, :cond_2

    #@a
    .line 118
    const/4 v0, 0x4

    #@b
    return v0

    #@c
    .line 120
    :cond_2
    const/4 v0, 0x3

    #@d
    return v0
.end method

.method public static invertDockSide(I)I
    .locals 1
    .param p0, "dockSide"    # I

    #@0
    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    #@3
    .line 136
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 128
    :pswitch_0
    const/4 v0, 0x3

    #@6
    return v0

    #@7
    .line 130
    :pswitch_1
    const/4 v0, 0x4

    #@8
    return v0

    #@9
    .line 132
    :pswitch_2
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 134
    :pswitch_3
    const/4 v0, 0x2

    #@c
    return v0

    #@d
    .line 126
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "topLeft"    # Z

    #@0
    .prologue
    .line 67
    if-eqz p1, :cond_2

    #@2
    .line 68
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@4
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 69
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@e
    .line 71
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@10
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@12
    if-lt v0, v1, :cond_1

    #@14
    .line 72
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@1a
    .line 62
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 75
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1d
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@1f
    if-gt v0, v1, :cond_3

    #@21
    .line 76
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@27
    .line 78
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@29
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@2b
    if-gt v0, v1, :cond_1

    #@2d
    .line 79
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@33
    goto :goto_0
.end method
