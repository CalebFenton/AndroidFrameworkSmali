.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 42
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Float2;)V
    .registers 3
    .param p1, "data"    # Landroid/renderscript/Float2;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 37
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 38
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .line 88
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 89
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 90
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 92
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .line 53
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 54
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 55
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 57
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .line 238
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 239
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 240
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 242
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .line 213
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 214
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 215
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 217
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .line 263
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    iget v2, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .line 188
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 189
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 190
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 192
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .line 163
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 164
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 165
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 167
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    .line 138
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 139
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 140
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 142
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    .line 113
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 114
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 115
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 117
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(F)V
    .registers 3
    .param p1, "value"    # F

    .line 76
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 77
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 78
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .line 66
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 67
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 68
    return-void
.end method

.method public greylist-max-o addAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .line 356
    packed-switch p1, :pswitch_data_18

    .line 364
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 362
    return-void

    .line 358
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 359
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Float2;F)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float2;
    .param p2, "factor"    # F

    .line 273
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 274
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 275
    return-void
.end method

.method public greylist-max-o copyTo([FI)V
    .registers 5
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    .line 386
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    aput v0, p1, p2

    .line 387
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    aput v1, p1, v0

    .line 388
    return-void
.end method

.method public greylist-max-o div(F)V
    .registers 3
    .param p1, "value"    # F

    .line 226
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 227
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 228
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .line 201
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 202
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 203
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Float2;)F
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float2;

    .line 252
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget v2, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()F
    .registers 3

    .line 310
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)F
    .registers 4
    .param p1, "i"    # I

    .line 320
    packed-switch p1, :pswitch_data_12

    .line 326
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    return v0

    .line 322
    :pswitch_e
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 301
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o mul(F)V
    .registers 3
    .param p1, "value"    # F

    .line 176
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 177
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 178
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .line 151
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 152
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 153
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 291
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 292
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 293
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Float2;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Float2;

    .line 283
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 284
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 285
    return-void
.end method

.method public greylist-max-o setAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .line 337
    packed-switch p1, :pswitch_data_12

    .line 345
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 343
    return-void

    .line 339
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    .line 340
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 375
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 376
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 377
    return-void
.end method

.method public greylist-max-o sub(F)V
    .registers 3
    .param p1, "value"    # F

    .line 126
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 127
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 128
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Float2;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float2;

    .line 101
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 102
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget v1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 103
    return-void
.end method
