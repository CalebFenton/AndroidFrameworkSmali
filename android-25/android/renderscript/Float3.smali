.class public Landroid/renderscript/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    #@5
    .line 39
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    #@7
    .line 40
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    #@9
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float3;)V
    .locals 1
    .param p1, "data"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    #@5
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@7
    .line 33
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    #@9
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@b
    .line 34
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    #@d
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@f
    .line 31
    return-void
.end method

.method public static add(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 90
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    add-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@a
    .line 91
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@c
    add-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@f
    .line 92
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@11
    add-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@14
    .line 94
    return-object v0
.end method

.method public static add(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 52
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float3;->x:F

    #@9
    add-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@c
    .line 53
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float3;->y:F

    #@10
    add-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@13
    .line 54
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float3;->z:F

    #@17
    add-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@1a
    .line 56
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 251
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 252
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    div-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@a
    .line 253
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@c
    div-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@f
    .line 254
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@11
    div-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@14
    .line 256
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 224
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 225
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float3;->x:F

    #@9
    div-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@c
    .line 226
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float3;->y:F

    #@10
    div-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@13
    .line 227
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float3;->z:F

    #@17
    div-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@1a
    .line 229
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Ljava/lang/Float;
    .locals 4
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 277
    new-instance v0, Ljava/lang/Float;

    #@2
    iget v1, p1, Landroid/renderscript/Float3;->x:F

    #@4
    iget v2, p0, Landroid/renderscript/Float3;->x:F

    #@6
    mul-float/2addr v1, v2

    #@7
    iget v2, p1, Landroid/renderscript/Float3;->y:F

    #@9
    iget v3, p0, Landroid/renderscript/Float3;->y:F

    #@b
    mul-float/2addr v2, v3

    #@c
    add-float/2addr v1, v2

    #@d
    iget v2, p1, Landroid/renderscript/Float3;->z:F

    #@f
    iget v3, p0, Landroid/renderscript/Float3;->z:F

    #@11
    mul-float/2addr v2, v3

    #@12
    add-float/2addr v1, v2

    #@13
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@16
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 197
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 198
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    mul-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@a
    .line 199
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@c
    mul-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@f
    .line 200
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@11
    mul-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@14
    .line 202
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 170
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 171
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float3;->x:F

    #@9
    mul-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@c
    .line 172
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float3;->y:F

    #@10
    mul-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@13
    .line 173
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float3;->z:F

    #@17
    mul-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@1a
    .line 175
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 143
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 144
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    sub-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@a
    .line 145
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@c
    sub-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@f
    .line 146
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@11
    sub-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@14
    .line 148
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float3;
    .param p1, "b"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 117
    .local v0, "res":Landroid/renderscript/Float3;
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float3;->x:F

    #@9
    sub-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@c
    .line 118
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float3;->y:F

    #@10
    sub-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@13
    .line 119
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float3;->z:F

    #@17
    sub-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@1a
    .line 121
    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    add-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@5
    .line 77
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@7
    add-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@a
    .line 78
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@c
    add-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@f
    .line 75
    return-void
.end method

.method public add(Landroid/renderscript/Float3;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 65
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float3;->x:F

    #@4
    add-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@7
    .line 66
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float3;->y:F

    #@b
    add-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@e
    .line 67
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float3;->z:F

    #@12
    add-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@15
    .line 64
    return-void
.end method

.method public addAt(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 378
    packed-switch p1, :pswitch_data_0

    #@3
    .line 389
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 380
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@e
    add-float/2addr v0, p2

    #@f
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@11
    .line 381
    return-void

    #@12
    .line 383
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@14
    add-float/2addr v0, p2

    #@15
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@17
    .line 384
    return-void

    #@18
    .line 386
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@1a
    add-float/2addr v0, p2

    #@1b
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@1d
    .line 387
    return-void

    #@1e
    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float3;F)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Float3;
    .param p2, "factor"    # F

    #@0
    .prologue
    .line 287
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float3;->x:F

    #@4
    mul-float/2addr v1, p2

    #@5
    add-float/2addr v0, v1

    #@6
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@8
    .line 288
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@a
    iget v1, p1, Landroid/renderscript/Float3;->y:F

    #@c
    mul-float/2addr v1, p2

    #@d
    add-float/2addr v0, v1

    #@e
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@10
    .line 289
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@12
    iget v1, p1, Landroid/renderscript/Float3;->z:F

    #@14
    mul-float/2addr v1, p2

    #@15
    add-float/2addr v0, v1

    #@16
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@18
    .line 286
    return-void
.end method

.method public copyTo([FI)V
    .locals 2
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 413
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    aput v0, p1, p2

    #@4
    .line 414
    add-int/lit8 v0, p2, 0x1

    #@6
    iget v1, p0, Landroid/renderscript/Float3;->y:F

    #@8
    aput v1, p1, v0

    #@a
    .line 415
    add-int/lit8 v0, p2, 0x2

    #@c
    iget v1, p0, Landroid/renderscript/Float3;->z:F

    #@e
    aput v1, p1, v0

    #@10
    .line 412
    return-void
.end method

.method public div(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    div-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@5
    .line 239
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@7
    div-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@a
    .line 240
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@c
    div-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@f
    .line 237
    return-void
.end method

.method public div(Landroid/renderscript/Float3;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 211
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float3;->x:F

    #@4
    div-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@7
    .line 212
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float3;->y:F

    #@b
    div-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@e
    .line 213
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float3;->z:F

    #@12
    div-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@15
    .line 210
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float3;)Ljava/lang/Float;
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 266
    new-instance v0, Ljava/lang/Float;

    #@2
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@4
    iget v2, p1, Landroid/renderscript/Float3;->x:F

    #@6
    mul-float/2addr v1, v2

    #@7
    iget v2, p0, Landroid/renderscript/Float3;->y:F

    #@9
    iget v3, p1, Landroid/renderscript/Float3;->y:F

    #@b
    mul-float/2addr v2, v3

    #@c
    add-float/2addr v1, v2

    #@d
    iget v2, p0, Landroid/renderscript/Float3;->z:F

    #@f
    iget v3, p1, Landroid/renderscript/Float3;->z:F

    #@11
    mul-float/2addr v2, v3

    #@12
    add-float/2addr v1, v2

    #@13
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@16
    return-object v0
.end method

.method public elementSum()Ljava/lang/Float;
    .locals 3

    #@0
    .prologue
    .line 327
    new-instance v0, Ljava/lang/Float;

    #@2
    iget v1, p0, Landroid/renderscript/Float3;->x:F

    #@4
    iget v2, p0, Landroid/renderscript/Float3;->y:F

    #@6
    add-float/2addr v1, v2

    #@7
    iget v2, p0, Landroid/renderscript/Float3;->z:F

    #@9
    add-float/2addr v1, v2

    #@a
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@d
    return-object v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 337
    packed-switch p1, :pswitch_data_0

    #@3
    .line 345
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 339
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@e
    return v0

    #@f
    .line 341
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@11
    return v0

    #@12
    .line 343
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@14
    return v0

    #@15
    .line 337
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 318
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public mul(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 184
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    mul-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@5
    .line 185
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@7
    mul-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@a
    .line 186
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@c
    mul-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@f
    .line 183
    return-void
.end method

.method public mul(Landroid/renderscript/Float3;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 157
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float3;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@7
    .line 158
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float3;->y:F

    #@b
    mul-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@e
    .line 159
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float3;->z:F

    #@12
    mul-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@15
    .line 156
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 307
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    neg-float v0, v0

    #@3
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@5
    .line 308
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@7
    neg-float v0, v0

    #@8
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@a
    .line 309
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@c
    neg-float v0, v0

    #@d
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@f
    .line 306
    return-void
.end method

.method public set(Landroid/renderscript/Float3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 298
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    #@2
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@4
    .line 299
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    #@6
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@8
    .line 300
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    #@a
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@c
    .line 297
    return-void
.end method

.method public setAt(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    #@3
    .line 367
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 358
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float3;->x:F

    #@e
    .line 359
    return-void

    #@f
    .line 361
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    #@11
    .line 362
    return-void

    #@12
    .line 364
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Float3;->z:F

    #@14
    .line 365
    return-void

    #@15
    .line 356
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 401
    iput p1, p0, Landroid/renderscript/Float3;->x:F

    #@2
    .line 402
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    #@4
    .line 403
    iput p3, p0, Landroid/renderscript/Float3;->z:F

    #@6
    .line 400
    return-void
.end method

.method public sub(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    sub-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@5
    .line 131
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@7
    sub-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@a
    .line 132
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@c
    sub-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@f
    .line 129
    return-void
.end method

.method public sub(Landroid/renderscript/Float3;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 103
    iget v0, p0, Landroid/renderscript/Float3;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float3;->x:F

    #@4
    sub-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float3;->x:F

    #@7
    .line 104
    iget v0, p0, Landroid/renderscript/Float3;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float3;->y:F

    #@b
    sub-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float3;->y:F

    #@e
    .line 105
    iget v0, p0, Landroid/renderscript/Float3;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float3;->z:F

    #@12
    sub-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float3;->z:F

    #@15
    .line 102
    return-void
.end method
