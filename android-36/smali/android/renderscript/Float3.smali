.class public Landroid/renderscript/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:F

.field public whitelist y:F

.field public whitelist z:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor whitelist <init>(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    .line 44
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 45
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Float3;)V
    .registers 3
    .param p1, "data"    # Landroid/renderscript/Float3;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 38
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 39
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 40
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .line 94
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 95
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 96
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 97
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 99
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .line 56
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 57
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 58
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 59
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 61
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .line 256
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 257
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 258
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 259
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 261
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .line 229
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 230
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 231
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 232
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 234
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Ljava/lang/Float;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .line 282
    new-instance v0, Ljava/lang/Float;

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    iget v3, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    iget v3, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .line 202
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 203
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 204
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 205
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 207
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .line 175
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 176
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 177
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 178
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 180
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    .line 148
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 149
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 150
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 151
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 153
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    .line 121
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 122
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 123
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 124
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    iget v2, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 126
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(F)V
    .registers 3
    .param p1, "value"    # F

    .line 81
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 82
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 83
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 84
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .line 70
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 71
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 72
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 73
    return-void
.end method

.method public greylist-max-o addAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .line 383
    packed-switch p1, :pswitch_data_1e

    .line 394
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 392
    return-void

    .line 388
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 389
    return-void

    .line 385
    :pswitch_17
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 386
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Float3;F)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Float3;
    .param p2, "factor"    # F

    .line 292
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 293
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 294
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 295
    return-void
.end method

.method public greylist-max-o copyTo([FI)V
    .registers 5
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    .line 418
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    aput v0, p1, p2

    .line 419
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    aput v1, p1, v0

    .line 420
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Float3;->z:F

    aput v1, p1, v0

    .line 421
    return-void
.end method

.method public greylist-max-o div(F)V
    .registers 3
    .param p1, "value"    # F

    .line 243
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 244
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 245
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 246
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .line 216
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 217
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 218
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 219
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Float3;)Ljava/lang/Float;
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Float3;

    .line 271
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    iget v3, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    iget v3, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public greylist-max-o elementSum()Ljava/lang/Float;
    .registers 4

    .line 332
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public greylist-max-o get(I)F
    .registers 4
    .param p1, "i"    # I

    .line 342
    packed-switch p1, :pswitch_data_14

    .line 350
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    return v0

    .line 346
    :pswitch_e
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    return v0

    .line 344
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 323
    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o mul(F)V
    .registers 3
    .param p1, "value"    # F

    .line 189
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 190
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 191
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 192
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .line 162
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 163
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 164
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 165
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 312
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 313
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 314
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 315
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Float3;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Float3;

    .line 303
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 304
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 305
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 306
    return-void
.end method

.method public greylist-max-o setAt(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # F

    .line 361
    packed-switch p1, :pswitch_data_14

    .line 372
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Float3;->z:F

    .line 370
    return-void

    .line 366
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 367
    return-void

    .line 363
    :pswitch_11
    iput p2, p0, Landroid/renderscript/Float3;->x:F

    .line 364
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 406
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    .line 407
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    .line 408
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    .line 409
    return-void
.end method

.method public greylist-max-o sub(F)V
    .registers 3
    .param p1, "value"    # F

    .line 135
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 136
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 137
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 138
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Float3;)V
    .registers 4
    .param p1, "value"    # Landroid/renderscript/Float3;

    .line 108
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    .line 109
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    .line 110
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget v1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    .line 111
    return-void
.end method
