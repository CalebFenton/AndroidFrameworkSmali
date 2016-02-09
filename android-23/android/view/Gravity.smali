.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/16 v4, 0x80

    #@2
    const/16 v3, 0x8

    #@4
    .line 188
    and-int/lit8 v0, p0, 0x6

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 224
    :pswitch_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@b
    add-int/2addr v0, p4

    #@c
    iput v0, p6, Landroid/graphics/Rect;->left:I

    #@e
    .line 225
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@10
    add-int/2addr v0, p4

    #@11
    iput v0, p6, Landroid/graphics/Rect;->right:I

    #@13
    .line 229
    :cond_0
    :goto_0
    and-int/lit8 v0, p0, 0x60

    #@15
    sparse-switch v0, :sswitch_data_0

    #@18
    .line 265
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@1a
    add-int/2addr v0, p5

    #@1b
    iput v0, p6, Landroid/graphics/Rect;->top:I

    #@1d
    .line 266
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    #@1f
    add-int/2addr v0, p5

    #@20
    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    #@22
    .line 187
    :cond_1
    :goto_1
    return-void

    #@23
    .line 190
    :pswitch_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@25
    .line 191
    iget v1, p3, Landroid/graphics/Rect;->right:I

    #@27
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@29
    sub-int/2addr v1, v2

    #@2a
    sub-int/2addr v1, p1

    #@2b
    div-int/lit8 v1, v1, 0x2

    #@2d
    .line 190
    add-int/2addr v0, v1

    #@2e
    add-int/2addr v0, p4

    #@2f
    iput v0, p6, Landroid/graphics/Rect;->left:I

    #@31
    .line 192
    iget v0, p6, Landroid/graphics/Rect;->left:I

    #@33
    add-int/2addr v0, p1

    #@34
    iput v0, p6, Landroid/graphics/Rect;->right:I

    #@36
    .line 193
    and-int/lit8 v0, p0, 0x8

    #@38
    if-ne v0, v3, :cond_0

    #@3a
    .line 195
    iget v0, p6, Landroid/graphics/Rect;->left:I

    #@3c
    iget v1, p3, Landroid/graphics/Rect;->left:I

    #@3e
    if-ge v0, v1, :cond_2

    #@40
    .line 196
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@42
    iput v0, p6, Landroid/graphics/Rect;->left:I

    #@44
    .line 198
    :cond_2
    iget v0, p6, Landroid/graphics/Rect;->right:I

    #@46
    iget v1, p3, Landroid/graphics/Rect;->right:I

    #@48
    if-le v0, v1, :cond_0

    #@4a
    .line 199
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@4c
    iput v0, p6, Landroid/graphics/Rect;->right:I

    #@4e
    goto :goto_0

    #@4f
    .line 204
    :pswitch_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@51
    add-int/2addr v0, p4

    #@52
    iput v0, p6, Landroid/graphics/Rect;->left:I

    #@54
    .line 205
    iget v0, p6, Landroid/graphics/Rect;->left:I

    #@56
    add-int/2addr v0, p1

    #@57
    iput v0, p6, Landroid/graphics/Rect;->right:I

    #@59
    .line 206
    and-int/lit8 v0, p0, 0x8

    #@5b
    if-ne v0, v3, :cond_0

    #@5d
    .line 208
    iget v0, p6, Landroid/graphics/Rect;->right:I

    #@5f
    iget v1, p3, Landroid/graphics/Rect;->right:I

    #@61
    if-le v0, v1, :cond_0

    #@63
    .line 209
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@65
    iput v0, p6, Landroid/graphics/Rect;->right:I

    #@67
    goto :goto_0

    #@68
    .line 214
    :pswitch_3
    iget v0, p3, Landroid/graphics/Rect;->right:I

    #@6a
    sub-int/2addr v0, p4

    #@6b
    iput v0, p6, Landroid/graphics/Rect;->right:I

    #@6d
    .line 215
    iget v0, p6, Landroid/graphics/Rect;->right:I

    #@6f
    sub-int/2addr v0, p1

    #@70
    iput v0, p6, Landroid/graphics/Rect;->left:I

    #@72
    .line 216
    and-int/lit8 v0, p0, 0x8

    #@74
    if-ne v0, v3, :cond_0

    #@76
    .line 218
    iget v0, p6, Landroid/graphics/Rect;->left:I

    #@78
    iget v1, p3, Landroid/graphics/Rect;->left:I

    #@7a
    if-ge v0, v1, :cond_0

    #@7c
    .line 219
    iget v0, p3, Landroid/graphics/Rect;->left:I

    #@7e
    iput v0, p6, Landroid/graphics/Rect;->left:I

    #@80
    goto :goto_0

    #@81
    .line 231
    :sswitch_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@83
    .line 232
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    #@85
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@87
    sub-int/2addr v1, v2

    #@88
    sub-int/2addr v1, p2

    #@89
    div-int/lit8 v1, v1, 0x2

    #@8b
    .line 231
    add-int/2addr v0, v1

    #@8c
    add-int/2addr v0, p5

    #@8d
    iput v0, p6, Landroid/graphics/Rect;->top:I

    #@8f
    .line 233
    iget v0, p6, Landroid/graphics/Rect;->top:I

    #@91
    add-int/2addr v0, p2

    #@92
    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    #@94
    .line 234
    and-int/lit16 v0, p0, 0x80

    #@96
    if-ne v0, v4, :cond_1

    #@98
    .line 236
    iget v0, p6, Landroid/graphics/Rect;->top:I

    #@9a
    iget v1, p3, Landroid/graphics/Rect;->top:I

    #@9c
    if-ge v0, v1, :cond_3

    #@9e
    .line 237
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@a0
    iput v0, p6, Landroid/graphics/Rect;->top:I

    #@a2
    .line 239
    :cond_3
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    #@a4
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    #@a6
    if-le v0, v1, :cond_1

    #@a8
    .line 240
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    #@aa
    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    #@ac
    goto/16 :goto_1

    #@ae
    .line 245
    :sswitch_1
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@b0
    add-int/2addr v0, p5

    #@b1
    iput v0, p6, Landroid/graphics/Rect;->top:I

    #@b3
    .line 246
    iget v0, p6, Landroid/graphics/Rect;->top:I

    #@b5
    add-int/2addr v0, p2

    #@b6
    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    #@b8
    .line 247
    and-int/lit16 v0, p0, 0x80

    #@ba
    if-ne v0, v4, :cond_1

    #@bc
    .line 249
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    #@be
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    #@c0
    if-le v0, v1, :cond_1

    #@c2
    .line 250
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    #@c4
    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    #@c6
    goto/16 :goto_1

    #@c8
    .line 255
    :sswitch_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    #@ca
    sub-int/2addr v0, p5

    #@cb
    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    #@cd
    .line 256
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    #@cf
    sub-int/2addr v0, p2

    #@d0
    iput v0, p6, Landroid/graphics/Rect;->top:I

    #@d2
    .line 257
    and-int/lit16 v0, p0, 0x80

    #@d4
    if-ne v0, v4, :cond_1

    #@d6
    .line 259
    iget v0, p6, Landroid/graphics/Rect;->top:I

    #@d8
    iget v1, p3, Landroid/graphics/Rect;->top:I

    #@da
    if-ge v0, v1, :cond_1

    #@dc
    .line 260
    iget v0, p3, Landroid/graphics/Rect;->top:I

    #@de
    iput v0, p6, Landroid/graphics/Rect;->top:I

    #@e0
    goto/16 :goto_1

    #@e2
    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@f0
    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    #@0
    .prologue
    .line 298
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@3
    move-result v0

    #@4
    .local v0, "absGravity":I
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p5

    #@9
    move-object v6, p6

    #@a
    .line 299
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    #@d
    .line 297
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, v4

    #@6
    move-object v6, p4

    #@7
    .line 139
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    #@a
    .line 138
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 161
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@4
    move-result v0

    #@5
    .local v0, "absGravity":I
    move v1, p1

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move v5, v4

    #@9
    move-object v6, p4

    #@a
    .line 162
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    #@d
    .line 160
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 319
    const/high16 v1, 0x10000000

    #@2
    and-int/2addr v1, p0

    #@3
    if-eqz v1, :cond_4

    #@5
    .line 320
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@7
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@9
    if-ge v1, v2, :cond_0

    #@b
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@d
    iput v1, p2, Landroid/graphics/Rect;->top:I

    #@f
    .line 321
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@11
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@13
    if-le v1, v2, :cond_1

    #@15
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@17
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    #@19
    .line 337
    :cond_1
    :goto_0
    const/high16 v1, 0x1000000

    #@1b
    and-int/2addr v1, p0

    #@1c
    if-eqz v1, :cond_8

    #@1e
    .line 338
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@20
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@22
    if-ge v1, v2, :cond_2

    #@24
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@26
    iput v1, p2, Landroid/graphics/Rect;->left:I

    #@28
    .line 339
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@2a
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@2c
    if-le v1, v2, :cond_3

    #@2e
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@30
    iput v1, p2, Landroid/graphics/Rect;->right:I

    #@32
    .line 318
    :cond_3
    :goto_1
    return-void

    #@33
    .line 323
    :cond_4
    const/4 v0, 0x0

    #@34
    .line 324
    .local v0, "off":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@36
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@38
    if-ge v1, v2, :cond_6

    #@3a
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@3c
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@3e
    sub-int v0, v1, v2

    #@40
    .line 326
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    #@42
    .line 327
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@45
    move-result v1

    #@46
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@48
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@4a
    sub-int/2addr v2, v3

    #@4b
    if-le v1, v2, :cond_7

    #@4d
    .line 328
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4f
    iput v1, p2, Landroid/graphics/Rect;->top:I

    #@51
    .line 329
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@53
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    #@55
    goto :goto_0

    #@56
    .line 325
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@58
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@5a
    if-le v1, v2, :cond_5

    #@5c
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@5e
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    #@60
    sub-int v0, v1, v2

    #@62
    goto :goto_2

    #@63
    .line 331
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@65
    add-int/2addr v1, v0

    #@66
    iput v1, p2, Landroid/graphics/Rect;->top:I

    #@68
    .line 332
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@6a
    add-int/2addr v1, v0

    #@6b
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    #@6d
    goto :goto_0

    #@6e
    .line 341
    .end local v0    # "off":I
    :cond_8
    const/4 v0, 0x0

    #@6f
    .line 342
    .restart local v0    # "off":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@71
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@73
    if-ge v1, v2, :cond_a

    #@75
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@77
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@79
    sub-int v0, v1, v2

    #@7b
    .line 344
    :cond_9
    :goto_3
    if-eqz v0, :cond_3

    #@7d
    .line 345
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@80
    move-result v1

    #@81
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@83
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@85
    sub-int/2addr v2, v3

    #@86
    if-le v1, v2, :cond_b

    #@88
    .line 346
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@8a
    iput v1, p2, Landroid/graphics/Rect;->left:I

    #@8c
    .line 347
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@8e
    iput v1, p2, Landroid/graphics/Rect;->right:I

    #@90
    goto :goto_1

    #@91
    .line 343
    :cond_a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@93
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@95
    if-le v1, v2, :cond_9

    #@97
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@99
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@9b
    sub-int v0, v1, v2

    #@9d
    goto :goto_3

    #@9e
    .line 349
    :cond_b
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@a0
    add-int/2addr v1, v0

    #@a1
    iput v1, p2, Landroid/graphics/Rect;->left:I

    #@a3
    .line 350
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@a5
    add-int/2addr v1, v0

    #@a6
    iput v1, p2, Landroid/graphics/Rect;->right:I

    #@a8
    goto :goto_1
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    #@0
    .prologue
    .line 377
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@3
    move-result v0

    #@4
    .line 378
    .local v0, "absGravity":I
    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@7
    .line 376
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const v4, 0x800005

    #@3
    const v3, 0x800003

    #@6
    const/4 v2, 0x1

    #@7
    .line 413
    move v0, p0

    #@8
    .line 415
    .local v0, "result":I
    const/high16 v1, 0x800000

    #@a
    and-int/2addr v1, v0

    #@b
    if-lez v1, :cond_1

    #@d
    .line 416
    and-int v1, v0, v3

    #@f
    if-ne v1, v3, :cond_3

    #@11
    .line 418
    const v1, -0x800004

    #@14
    and-int/2addr v0, v1

    #@15
    .line 419
    if-ne p1, v2, :cond_2

    #@17
    .line 421
    or-int/lit8 v0, v0, 0x5

    #@19
    .line 439
    :cond_0
    :goto_0
    const v1, -0x800001

    #@1c
    and-int/2addr v0, v1

    #@1d
    .line 441
    :cond_1
    return v0

    #@1e
    .line 424
    :cond_2
    or-int/lit8 v0, v0, 0x3

    #@20
    goto :goto_0

    #@21
    .line 426
    :cond_3
    and-int v1, v0, v4

    #@23
    if-ne v1, v4, :cond_0

    #@25
    .line 428
    const v1, -0x800006

    #@28
    and-int/2addr v0, v1

    #@29
    .line 429
    if-ne p1, v2, :cond_4

    #@2b
    .line 431
    or-int/lit8 v0, v0, 0x3

    #@2d
    goto :goto_0

    #@2e
    .line 434
    :cond_4
    or-int/lit8 v0, v0, 0x5

    #@30
    goto :goto_0
.end method

.method public static isHorizontal(I)Z
    .locals 2
    .param p0, "gravity"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 398
    if-lez p0, :cond_0

    #@3
    const v1, 0x800007

    #@6
    and-int/2addr v1, p0

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static isVertical(I)Z
    .locals 2
    .param p0, "gravity"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 388
    if-lez p0, :cond_0

    #@3
    and-int/lit8 v1, p0, 0x70

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method
