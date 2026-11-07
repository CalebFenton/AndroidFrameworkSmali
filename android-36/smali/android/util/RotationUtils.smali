.class public Landroid/util/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 142
    sub-int v0, p1, p0

    .line 143
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 144
    :cond_6
    return v0
.end method

.method public static blacklist reverseRotationDirectionAroundZAxis(I)I
    .registers 2
    .param p0, "rotation"    # I

    .line 262
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 263
    const/4 p0, 0x3

    goto :goto_9

    .line 264
    :cond_5
    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    .line 265
    const/4 p0, 0x1

    .line 267
    :cond_9
    :goto_9
    return p0
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;III)V
    .registers 7
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "rotation"    # I

    .line 102
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 103
    .local v0, "origLeft":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 104
    .local v1, "origTop":I
    packed-switch p3, :pswitch_data_46

    goto :goto_44

    .line 120
    :pswitch_8
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 121
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 123
    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_44

    .line 114
    :pswitch_1b
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 115
    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 116
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 117
    sub-int v2, p2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 118
    return-void

    .line 108
    :pswitch_30
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 109
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 110
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 111
    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 112
    return-void

    .line 106
    :pswitch_43
    return-void

    .line 125
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_43
        :pswitch_30
        :pswitch_1b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 136
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 137
    return-void
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 5
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I

    .line 90
    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 91
    return-void
.end method

.method public static blacklist rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 6
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "rotation"    # I

    .line 46
    if-eqz p0, :cond_4e

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne p0, v0, :cond_7

    goto :goto_4e

    .line 50
    :cond_7
    packed-switch p1, :pswitch_data_50

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_24
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Landroid/graphics/Insets;->top:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 74
    .local v0, "rotated":Landroid/graphics/Insets;
    goto :goto_4d

    .line 62
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_31
    iget v0, p0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    iget v2, p0, Landroid/graphics/Insets;->left:I

    iget v3, p0, Landroid/graphics/Insets;->top:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 67
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    goto :goto_4d

    .line 55
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_3e
    iget v0, p0, Landroid/graphics/Insets;->top:I

    iget v1, p0, Landroid/graphics/Insets;->right:I

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    iget v3, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 60
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    goto :goto_4d

    .line 52
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_4b
    move-object v0, p0

    .line 53
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    nop

    .line 78
    :goto_4d
    return-object v0

    .line 47
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :cond_4e
    :goto_4e
    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3e
        :pswitch_31
        :pswitch_24
    .end packed-switch
.end method

.method public static blacklist rotatePoint(Landroid/graphics/Point;III)V
    .registers 6
    .param p0, "inOutPoint"    # Landroid/graphics/Point;
    .param p1, "rotation"    # I
    .param p2, "parentW"    # I
    .param p3, "parentH"    # I

    .line 180
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 181
    .local v0, "origX":I
    packed-switch p1, :pswitch_data_28

    goto :goto_26

    .line 193
    :pswitch_6
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 194
    iput v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_26

    .line 189
    :pswitch_f
    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 190
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 191
    return-void

    .line 185
    :pswitch_1c
    iget v1, p0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 186
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 187
    return-void

    .line 183
    :pswitch_25
    return-void

    .line 196
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1c
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist rotatePointF(Landroid/graphics/PointF;IFF)V
    .registers 6
    .param p0, "inOutPoint"    # Landroid/graphics/PointF;
    .param p1, "rotation"    # I
    .param p2, "parentW"    # F
    .param p3, "parentH"    # F

    .line 203
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 204
    .local v0, "origX":F
    packed-switch p1, :pswitch_data_28

    goto :goto_26

    .line 216
    :pswitch_6
    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float v1, p3, v1

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 217
    iput v0, p0, Landroid/graphics/PointF;->y:F

    goto :goto_26

    .line 212
    :pswitch_f
    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 213
    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float v1, p3, v1

    iput v1, p0, Landroid/graphics/PointF;->y:F

    .line 214
    return-void

    .line 208
    :pswitch_1c
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 209
    sub-float v1, p2, v0

    iput v1, p0, Landroid/graphics/PointF;->y:F

    .line 210
    return-void

    .line 206
    :pswitch_25
    return-void

    .line 219
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1c
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 15
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "rotation"    # I

    .line 157
    packed-switch p2, :pswitch_data_3a

    move-object v6, p0

    move-object v7, p1

    .end local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p1    # "sc":Landroid/view/SurfaceControl;
    .local v6, "t":Landroid/view/SurfaceControl$Transaction;
    .local v7, "sc":Landroid/view/SurfaceControl;
    goto :goto_38

    .line 168
    .end local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "sc":Landroid/view/SurfaceControl;
    .restart local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local p1    # "sc":Landroid/view/SurfaceControl;
    :pswitch_6
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    .end local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p1    # "sc":Landroid/view/SurfaceControl;
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    .local v1, "sc":Landroid/view/SurfaceControl;
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-object v6, v0

    move-object v7, v1

    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v1    # "sc":Landroid/view/SurfaceControl;
    .restart local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v7    # "sc":Landroid/view/SurfaceControl;
    goto :goto_38

    .line 165
    .end local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "sc":Landroid/view/SurfaceControl;
    .restart local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local p1    # "sc":Landroid/view/SurfaceControl;
    :pswitch_14
    move-object v6, p0

    move-object v7, p1

    .end local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p1    # "sc":Landroid/view/SurfaceControl;
    .restart local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v7    # "sc":Landroid/view/SurfaceControl;
    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 166
    goto :goto_38

    .line 162
    .end local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "sc":Landroid/view/SurfaceControl;
    .restart local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local p1    # "sc":Landroid/view/SurfaceControl;
    :pswitch_20
    move-object v6, p0

    move-object v7, p1

    .end local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p1    # "sc":Landroid/view/SurfaceControl;
    .restart local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v7    # "sc":Landroid/view/SurfaceControl;
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 163
    goto :goto_38

    .line 159
    .end local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "sc":Landroid/view/SurfaceControl;
    .restart local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local p1    # "sc":Landroid/view/SurfaceControl;
    :pswitch_2c
    move-object v6, p0

    move-object v7, p1

    .end local p0    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local p1    # "sc":Landroid/view/SurfaceControl;
    .restart local v6    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v7    # "sc":Landroid/view/SurfaceControl;
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 160
    nop

    .line 171
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 7
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 230
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_42

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_1d
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 244
    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    goto :goto_40

    .line 239
    :pswitch_27
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 240
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 241
    goto :goto_40

    .line 235
    :pswitch_32
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 236
    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 237
    goto :goto_40

    .line 232
    :pswitch_3c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 233
    nop

    .line 249
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_32
        :pswitch_27
        :pswitch_1d
    .end packed-switch
.end method
