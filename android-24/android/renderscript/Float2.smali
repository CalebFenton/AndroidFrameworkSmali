.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    #@5
    .line 37
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float2;)V
    .locals 1
    .param p1, "data"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    #@5
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@7
    .line 32
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    #@9
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@b
    .line 30
    return-void
.end method

.method public static add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 84
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    add-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@a
    .line 85
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@c
    add-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@f
    .line 87
    return-object v0
.end method

.method public static add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 48
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 49
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float2;->x:F

    #@9
    add-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@c
    .line 50
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float2;->y:F

    #@10
    add-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@13
    .line 52
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 233
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 234
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    div-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@a
    .line 235
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@c
    div-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@f
    .line 237
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 208
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 209
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float2;->x:F

    #@9
    div-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@c
    .line 210
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float2;->y:F

    #@10
    div-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@13
    .line 212
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 258
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iget v1, p1, Landroid/renderscript/Float2;->y:F

    #@7
    iget v2, p0, Landroid/renderscript/Float2;->y:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    return v0
.end method

.method public static mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 183
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 184
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    mul-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@a
    .line 185
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@c
    mul-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@f
    .line 187
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 158
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 159
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float2;->x:F

    #@9
    mul-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@c
    .line 160
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float2;->y:F

    #@10
    mul-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@13
    .line 162
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 134
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    sub-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@a
    .line 135
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@c
    sub-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@f
    .line 137
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float2;
    .param p1, "b"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 109
    .local v0, "res":Landroid/renderscript/Float2;
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float2;->x:F

    #@9
    sub-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@c
    .line 110
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float2;->y:F

    #@10
    sub-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@13
    .line 112
    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    add-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@5
    .line 72
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@7
    add-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@a
    .line 70
    return-void
.end method

.method public add(Landroid/renderscript/Float2;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 61
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    #@4
    add-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@7
    .line 62
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float2;->y:F

    #@b
    add-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@e
    .line 60
    return-void
.end method

.method public addAt(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    #@3
    .line 359
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 353
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@e
    add-float/2addr v0, p2

    #@f
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@11
    .line 354
    return-void

    #@12
    .line 356
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@14
    add-float/2addr v0, p2

    #@15
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@17
    .line 357
    return-void

    #@18
    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float2;F)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Float2;
    .param p2, "factor"    # F

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    #@4
    mul-float/2addr v1, p2

    #@5
    add-float/2addr v0, v1

    #@6
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@8
    .line 269
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@a
    iget v1, p1, Landroid/renderscript/Float2;->y:F

    #@c
    mul-float/2addr v1, p2

    #@d
    add-float/2addr v0, v1

    #@e
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@10
    .line 267
    return-void
.end method

.method public copyTo([FI)V
    .locals 2
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 381
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    aput v0, p1, p2

    #@4
    .line 382
    add-int/lit8 v0, p2, 0x1

    #@6
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@8
    aput v1, p1, v0

    #@a
    .line 380
    return-void
.end method

.method public div(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 221
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    div-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@5
    .line 222
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@7
    div-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@a
    .line 220
    return-void
.end method

.method public div(Landroid/renderscript/Float2;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 196
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    #@4
    div-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@7
    .line 197
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float2;->y:F

    #@b
    div-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@e
    .line 195
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float2;)F
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 247
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@7
    iget v2, p1, Landroid/renderscript/Float2;->y:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    return v0
.end method

.method public elementSum()F
    .locals 2

    #@0
    .prologue
    .line 305
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p0, Landroid/renderscript/Float2;->y:F

    #@4
    add-float/2addr v0, v1

    #@5
    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    #@3
    .line 321
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 317
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@e
    return v0

    #@f
    .line 319
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@11
    return v0

    #@12
    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 296
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public mul(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 171
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    mul-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@5
    .line 172
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@7
    mul-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@a
    .line 170
    return-void
.end method

.method public mul(Landroid/renderscript/Float2;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@7
    .line 147
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float2;->y:F

    #@b
    mul-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@e
    .line 145
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 286
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    neg-float v0, v0

    #@3
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@5
    .line 287
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@7
    neg-float v0, v0

    #@8
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@a
    .line 285
    return-void
.end method

.method public set(Landroid/renderscript/Float2;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 278
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    #@2
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@4
    .line 279
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    #@6
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@8
    .line 277
    return-void
.end method

.method public setAt(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    #@3
    .line 340
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 334
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    #@e
    .line 335
    return-void

    #@f
    .line 337
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    #@11
    .line 338
    return-void

    #@12
    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 370
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    #@2
    .line 371
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    #@4
    .line 369
    return-void
.end method

.method public sub(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    sub-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@5
    .line 122
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@7
    sub-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@a
    .line 120
    return-void
.end method

.method public sub(Landroid/renderscript/Float2;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float2;->x:F

    #@4
    sub-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float2;->x:F

    #@7
    .line 97
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float2;->y:F

    #@b
    sub-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float2;->y:F

    #@e
    .line 95
    return-void
.end method
