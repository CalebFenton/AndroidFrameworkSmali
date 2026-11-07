.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Gravity$GravityFlags;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_CLIP:I = 0x8

.field public static final whitelist AXIS_PULL_AFTER:I = 0x4

.field public static final whitelist AXIS_PULL_BEFORE:I = 0x2

.field public static final whitelist AXIS_SPECIFIED:I = 0x1

.field public static final whitelist AXIS_X_SHIFT:I = 0x0

.field public static final whitelist AXIS_Y_SHIFT:I = 0x4

.field public static final whitelist BOTTOM:I = 0x50

.field public static final whitelist CENTER:I = 0x11

.field public static final whitelist CENTER_HORIZONTAL:I = 0x1

.field public static final whitelist CENTER_VERTICAL:I = 0x10

.field public static final whitelist CLIP_HORIZONTAL:I = 0x8

.field public static final whitelist CLIP_VERTICAL:I = 0x80

.field public static final whitelist DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final whitelist DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final whitelist END:I = 0x800005

.field public static final whitelist FILL:I = 0x77

.field public static final whitelist FILL_HORIZONTAL:I = 0x7

.field public static final whitelist FILL_VERTICAL:I = 0x70

.field public static final whitelist HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final whitelist LEFT:I = 0x3

.field public static final whitelist NO_GRAVITY:I = 0x0

.field public static final whitelist RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final whitelist RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final whitelist RIGHT:I = 0x5

.field public static final whitelist START:I = 0x800003

.field public static final whitelist TOP:I = 0x30

.field public static final whitelist VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 11
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    .line 220
    and-int/lit8 v0, p0, 0x6

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_e0

    .line 256
    :pswitch_7
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 257
    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    .line 246
    :pswitch_12
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 247
    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 248
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v1, :cond_6f

    .line 250
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_6f

    .line 251
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_6f

    .line 236
    :pswitch_2b
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 237
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 238
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v1, :cond_6f

    .line 240
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_6f

    .line 241
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    .line 222
    :pswitch_44
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 224
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 225
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v1, :cond_6f

    .line 227
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_65

    .line 228
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 230
    :cond_65
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_6f

    .line 231
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 261
    :cond_6f
    :goto_6f
    and-int/lit8 v0, p0, 0x60

    const/16 v1, 0x80

    sparse-switch v0, :sswitch_data_ee

    .line 297
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 298
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_de

    .line 287
    :sswitch_81
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 288
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 289
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v1, :cond_de

    .line 291
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_de

    .line 292
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_de

    .line 277
    :sswitch_9a
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 278
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 279
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v1, :cond_de

    .line 281
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_de

    .line 282
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_de

    .line 263
    :sswitch_b3
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 265
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 266
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v1, :cond_de

    .line 268
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_d4

    .line 269
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 271
    :cond_d4
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_de

    .line 272
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 301
    :cond_de
    :goto_de
    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_7
        :pswitch_2b
        :pswitch_7
        :pswitch_12
    .end packed-switch

    :sswitch_data_ee
    .sparse-switch
        0x0 -> :sswitch_b3
        0x20 -> :sswitch_9a
        0x40 -> :sswitch_81
    .end sparse-switch
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 15
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    .line 330
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 331
    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "container":Landroid/graphics/Rect;
    .end local p4    # "xAdj":I
    .end local p5    # "yAdj":I
    .end local p6    # "outRect":Landroid/graphics/Rect;
    .local v1, "w":I
    .local v2, "h":I
    .local v3, "container":Landroid/graphics/Rect;
    .local v4, "xAdj":I
    .local v5, "yAdj":I
    .local v6, "outRect":Landroid/graphics/Rect;
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 332
    return-void
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .line 171
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .end local p0    # "gravity":I
    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "container":Landroid/graphics/Rect;
    .end local p4    # "outRect":Landroid/graphics/Rect;
    .local v0, "gravity":I
    .local v1, "w":I
    .local v2, "h":I
    .local v3, "container":Landroid/graphics/Rect;
    .local v6, "outRect":Landroid/graphics/Rect;
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 172
    return-void
.end method

.method public static whitelist apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .line 193
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 194
    .local v0, "absGravity":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .end local p1    # "w":I
    .end local p2    # "h":I
    .end local p3    # "container":Landroid/graphics/Rect;
    .end local p4    # "outRect":Landroid/graphics/Rect;
    .local v1, "w":I
    .local v2, "h":I
    .local v3, "container":Landroid/graphics/Rect;
    .local v6, "outRect":Landroid/graphics/Rect;
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 195
    return-void
.end method

.method public static whitelist applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;

    .line 351
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    .line 352
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_f

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 353
    :cond_f
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_54

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_54

    .line 355
    :cond_1a
    const/4 v0, 0x0

    .line 356
    .local v0, "off":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_28

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    goto :goto_34

    .line 357
    :cond_28
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_34

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 358
    :cond_34
    :goto_34
    if-eqz v0, :cond_54

    .line 359
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4a

    .line 360
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 361
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_54

    .line 363
    :cond_4a
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 364
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 369
    .end local v0    # "off":I
    :cond_54
    :goto_54
    const/high16 v0, 0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_6e

    .line 370
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_63

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 371
    :cond_63
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_a8

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_a8

    .line 373
    :cond_6e
    const/4 v0, 0x0

    .line 374
    .restart local v0    # "off":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_7c

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    goto :goto_88

    .line 375
    :cond_7c
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_88

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    .line 376
    :cond_88
    :goto_88
    if-eqz v0, :cond_a8

    .line 377
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_9e

    .line 378
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 379
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_a8

    .line 381
    :cond_9e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 382
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 386
    .end local v0    # "off":I
    :cond_a8
    :goto_a8
    return-void
.end method

.method public static whitelist applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .line 410
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 411
    .local v0, "absGravity":I
    invoke-static {v0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 412
    return-void
.end method

.method public static whitelist getAbsoluteGravity(II)I
    .registers 6
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .line 446
    move v0, p0

    .line 448
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_30

    .line 449
    const v1, 0x800003

    and-int v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1a

    .line 451
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 452
    if-ne p1, v3, :cond_17

    .line 454
    or-int/lit8 v0, v0, 0x5

    goto :goto_2c

    .line 457
    :cond_17
    or-int/lit8 v0, v0, 0x3

    goto :goto_2c

    .line 459
    :cond_1a
    const v1, 0x800005

    and-int v2, v0, v1

    if-ne v2, v1, :cond_2c

    .line 461
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 462
    if-ne p1, v3, :cond_2a

    .line 464
    or-int/lit8 v0, v0, 0x3

    goto :goto_2c

    .line 467
    :cond_2a
    or-int/lit8 v0, v0, 0x5

    .line 472
    :cond_2c
    :goto_2c
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 474
    :cond_30
    return v0
.end method

.method public static whitelist isHorizontal(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .line 431
    if-lez p0, :cond_a

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist isVertical(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .line 421
    if-lez p0, :cond_8

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o toString(I)Ljava/lang/String;
    .registers 6
    .param p0, "gravity"    # I

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x77

    const/16 v2, 0x20

    const/16 v3, 0x77

    if-ne v1, v3, :cond_18

    .line 483
    const-string v1, "FILL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_93

    .line 485
    :cond_18
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_28

    .line 486
    const-string v1, "FILL_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 488
    :cond_28
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_37

    .line 489
    const-string v1, "TOP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    :cond_37
    and-int/lit8 v1, p0, 0x50

    const/16 v3, 0x50

    if-ne v1, v3, :cond_46

    .line 492
    const-string v1, "BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    :cond_46
    :goto_46
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_55

    .line 496
    const-string v1, "FILL_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 498
    :cond_55
    const v1, 0x800003

    and-int v3, p0, v1

    if-ne v3, v1, :cond_66

    .line 499
    const-string v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 500
    :cond_66
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_74

    .line 501
    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :cond_74
    :goto_74
    const v1, 0x800005

    and-int v3, p0, v1

    if-ne v3, v1, :cond_85

    .line 504
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 505
    :cond_85
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_93

    .line 506
    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    :cond_93
    :goto_93
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-ne v1, v3, :cond_a4

    .line 511
    const-string v1, "CENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c0

    .line 513
    :cond_a4
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_b3

    .line 514
    const-string v1, "CENTER_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :cond_b3
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v4, :cond_c0

    .line 517
    const-string v1, "CENTER_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    :cond_c0
    :goto_c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_cf

    .line 521
    const-string v1, "NO GRAVITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    :cond_cf
    const/high16 v1, 0x10000000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_de

    .line 524
    const-string v1, "DISPLAY_CLIP_VERTICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :cond_de
    const/high16 v1, 0x1000000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_ed

    .line 527
    const-string v1, "DISPLAY_CLIP_HORIZONTAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    :cond_ed
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
