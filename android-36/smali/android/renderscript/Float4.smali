.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:F

.field public whitelist x:F

.field public whitelist y:F

.field public whitelist z:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(FFFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 46
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 47
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 48
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Float4;)V
    .registers 3
    .param p1, "data"    # Landroid/renderscript/Float4;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 39
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 40
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 41
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 42
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    .line 100
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 101
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 102
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 103
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 104
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 106
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    .line 59
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 60
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 61
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 62
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 63
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 65
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    .line 257
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 258
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 259
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 260
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 261
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 263
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    .line 274
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 275
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 276
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 277
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 278
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 280
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)F
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    .line 301
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iget v2, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    iget v2, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    iget v2, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    .line 216
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 217
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 218
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 219
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 220
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 222
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    .line 199
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 200
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 201
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 202
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 203
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 205
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    .line 141
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 142
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 143
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 144
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 145
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 147
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    .line 158
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 159
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    iget v2, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 160
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 161
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 162
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 164
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(F)V
    .registers 3
    .param p1, "value"    # F

    .line 86
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 87
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 88
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 89
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 90
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Float4;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float4;

    .line 74
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 75
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 76
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 77
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 78
    return-void
.end method

.method public greylist-max-o addAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .line 410
    packed-switch p1, :pswitch_data_24

    .line 424
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 422
    return-void

    .line 418
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 419
    return-void

    .line 415
    :pswitch_17
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 416
    return-void

    .line 412
    :pswitch_1d
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 413
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Float4;F)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float4;
    .param p2, "factor"    # F

    .line 311
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 312
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 313
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 314
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 315
    return-void
.end method

.method public greylist-max-o copyTo([FI)V
    .registers 5
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    .line 450
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    aput v0, p1, p2

    .line 451
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    aput v1, p1, v0

    .line 452
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    aput v1, p1, v0

    .line 453
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    aput v1, p1, v0

    .line 454
    return-void
.end method

.method public greylist-max-o div(F)V
    .registers 3
    .param p1, "value"    # F

    .line 243
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 244
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 245
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 246
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 247
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Float4;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float4;

    .line 231
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 232
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 233
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 234
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 235
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Float4;)F
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float4;

    .line 290
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    iget v2, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    iget v2, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    iget v2, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()F
    .registers 3

    .line 354
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p0, Landroid/renderscript/Float4;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float4;->w:F

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)F
    .registers 4
    .param p1, "i"    # I

    .line 364
    packed-switch p1, :pswitch_data_18

    .line 374
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    return v0

    .line 370
    :pswitch_e
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    return v0

    .line 368
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    return v0

    .line 366
    :pswitch_14
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 345
    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mul(F)V
    .registers 3
    .param p1, "value"    # F

    .line 185
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 186
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 187
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 188
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 189
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Float4;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float4;

    .line 173
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 174
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 175
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 176
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 177
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 333
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 334
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 335
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 336
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 337
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Float4;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Float4;

    .line 323
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 324
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 325
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 326
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 327
    return-void
.end method

.method public greylist-max-o setAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .line 385
    packed-switch p1, :pswitch_data_18

    .line 399
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Float4;->w:F

    .line 397
    return-void

    .line 393
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Float4;->z:F

    .line 394
    return-void

    .line 390
    :pswitch_11
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 391
    return-void

    .line 387
    :pswitch_14
    iput p2, p0, Landroid/renderscript/Float4;->x:F

    .line 388
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(FFFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 437
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 438
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 439
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 440
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    .line 441
    return-void
.end method

.method public greylist-max-o sub(F)V
    .registers 3
    .param p1, "value"    # F

    .line 127
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 128
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 129
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 130
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 131
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Float4;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float4;

    .line 115
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->x:F

    .line 116
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    iget v1, p1, Landroid/renderscript/Float4;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->y:F

    .line 117
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    iget v1, p1, Landroid/renderscript/Float4;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->z:F

    .line 118
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    iget v1, p1, Landroid/renderscript/Float4;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float4;->w:F

    .line 119
    return-void
.end method
