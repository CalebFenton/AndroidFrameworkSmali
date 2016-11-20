.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    #@5
    .line 41
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    #@7
    .line 42
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    #@9
    .line 43
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Float4;)V
    .locals 1
    .param p1, "data"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    #@5
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@7
    .line 34
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    #@9
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@b
    .line 35
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    #@d
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@f
    .line 36
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    #@11
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@13
    .line 32
    return-void
.end method

.method public static add(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 96
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    add-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@a
    .line 97
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@c
    add-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@f
    .line 98
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@11
    add-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@14
    .line 99
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@16
    add-float/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@19
    .line 101
    return-object v0
.end method

.method public static add(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 54
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 55
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float4;->x:F

    #@9
    add-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@c
    .line 56
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float4;->y:F

    #@10
    add-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@13
    .line 57
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float4;->z:F

    #@17
    add-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@1a
    .line 58
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    iget v2, p1, Landroid/renderscript/Float4;->w:F

    #@1e
    add-float/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@21
    .line 60
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 252
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 253
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    div-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@a
    .line 254
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@c
    div-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@f
    .line 255
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@11
    div-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@14
    .line 256
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@16
    div-float/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@19
    .line 258
    return-object v0
.end method

.method public static div(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 269
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 270
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float4;->x:F

    #@9
    div-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@c
    .line 271
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float4;->y:F

    #@10
    div-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@13
    .line 272
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float4;->z:F

    #@17
    div-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@1a
    .line 273
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    iget v2, p1, Landroid/renderscript/Float4;->w:F

    #@1e
    div-float/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@21
    .line 275
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)F
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 296
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@7
    iget v2, p0, Landroid/renderscript/Float4;->y:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@d
    iget v2, p0, Landroid/renderscript/Float4;->z:F

    #@f
    mul-float/2addr v1, v2

    #@10
    add-float/2addr v0, v1

    #@11
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@13
    iget v2, p0, Landroid/renderscript/Float4;->w:F

    #@15
    mul-float/2addr v1, v2

    #@16
    add-float/2addr v0, v1

    #@17
    return v0
.end method

.method public static mul(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 211
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 212
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    mul-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@a
    .line 213
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@c
    mul-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@f
    .line 214
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@11
    mul-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@14
    .line 215
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@16
    mul-float/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@19
    .line 217
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 195
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float4;->x:F

    #@9
    mul-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@c
    .line 196
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float4;->y:F

    #@10
    mul-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@13
    .line 197
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float4;->z:F

    #@17
    mul-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@1a
    .line 198
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    iget v2, p1, Landroid/renderscript/Float4;->w:F

    #@1e
    mul-float/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@21
    .line 200
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;F)Landroid/renderscript/Float4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # F

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 137
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    sub-float/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@a
    .line 138
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@c
    sub-float/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@f
    .line 139
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@11
    sub-float/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@14
    .line 140
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@16
    sub-float/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@19
    .line 142
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Float4;Landroid/renderscript/Float4;)Landroid/renderscript/Float4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Float4;
    .param p1, "b"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 153
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 154
    .local v0, "res":Landroid/renderscript/Float4;
    iget v1, p0, Landroid/renderscript/Float4;->x:F

    #@7
    iget v2, p1, Landroid/renderscript/Float4;->x:F

    #@9
    sub-float/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@c
    .line 155
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@e
    iget v2, p1, Landroid/renderscript/Float4;->y:F

    #@10
    sub-float/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@13
    .line 156
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@15
    iget v2, p1, Landroid/renderscript/Float4;->z:F

    #@17
    sub-float/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@1a
    .line 157
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    iget v2, p1, Landroid/renderscript/Float4;->w:F

    #@1e
    sub-float/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@21
    .line 159
    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    add-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@5
    .line 82
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@7
    add-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@a
    .line 83
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@c
    add-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@f
    .line 84
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@11
    add-float/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@14
    .line 80
    return-void
.end method

.method public add(Landroid/renderscript/Float4;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@4
    add-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@7
    .line 70
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@b
    add-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@e
    .line 71
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@12
    add-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@15
    .line 72
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@17
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@19
    add-float/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    .line 68
    return-void
.end method

.method public addAt(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 405
    packed-switch p1, :pswitch_data_0

    #@3
    .line 419
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 407
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@e
    add-float/2addr v0, p2

    #@f
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@11
    .line 408
    return-void

    #@12
    .line 410
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@14
    add-float/2addr v0, p2

    #@15
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@17
    .line 411
    return-void

    #@18
    .line 413
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@1a
    add-float/2addr v0, p2

    #@1b
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@1d
    .line 414
    return-void

    #@1e
    .line 416
    :pswitch_3
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@20
    add-float/2addr v0, p2

    #@21
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@23
    .line 417
    return-void

    #@24
    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Float4;F)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Float4;
    .param p2, "factor"    # F

    #@0
    .prologue
    .line 306
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@4
    mul-float/2addr v1, p2

    #@5
    add-float/2addr v0, v1

    #@6
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@8
    .line 307
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@a
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@c
    mul-float/2addr v1, p2

    #@d
    add-float/2addr v0, v1

    #@e
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@10
    .line 308
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@12
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@14
    mul-float/2addr v1, p2

    #@15
    add-float/2addr v0, v1

    #@16
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@18
    .line 309
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@1a
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@1c
    mul-float/2addr v1, p2

    #@1d
    add-float/2addr v0, v1

    #@1e
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@20
    .line 305
    return-void
.end method

.method public copyTo([FI)V
    .locals 2
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 445
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    aput v0, p1, p2

    #@4
    .line 446
    add-int/lit8 v0, p2, 0x1

    #@6
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@8
    aput v1, p1, v0

    #@a
    .line 447
    add-int/lit8 v0, p2, 0x2

    #@c
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@e
    aput v1, p1, v0

    #@10
    .line 448
    add-int/lit8 v0, p2, 0x3

    #@12
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@14
    aput v1, p1, v0

    #@16
    .line 444
    return-void
.end method

.method public div(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    div-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@5
    .line 239
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@7
    div-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@a
    .line 240
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@c
    div-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@f
    .line 241
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@11
    div-float/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@14
    .line 237
    return-void
.end method

.method public div(Landroid/renderscript/Float4;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 226
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@4
    div-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@7
    .line 227
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@b
    div-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@e
    .line 228
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@12
    div-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@15
    .line 229
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@17
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@19
    div-float/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    .line 225
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Float4;)F
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 285
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@7
    iget v2, p1, Landroid/renderscript/Float4;->y:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@d
    iget v2, p1, Landroid/renderscript/Float4;->z:F

    #@f
    mul-float/2addr v1, v2

    #@10
    add-float/2addr v0, v1

    #@11
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@13
    iget v2, p1, Landroid/renderscript/Float4;->w:F

    #@15
    mul-float/2addr v1, v2

    #@16
    add-float/2addr v0, v1

    #@17
    return v0
.end method

.method public elementSum()F
    .locals 2

    #@0
    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p0, Landroid/renderscript/Float4;->y:F

    #@4
    add-float/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Float4;->z:F

    #@7
    add-float/2addr v0, v1

    #@8
    iget v1, p0, Landroid/renderscript/Float4;->w:F

    #@a
    add-float/2addr v0, v1

    #@b
    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    #@3
    .line 369
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 361
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@e
    return v0

    #@f
    .line 363
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@11
    return v0

    #@12
    .line 365
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@14
    return v0

    #@15
    .line 367
    :pswitch_3
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@17
    return v0

    #@18
    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 340
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public mul(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 180
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    mul-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@5
    .line 181
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@7
    mul-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@a
    .line 182
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@c
    mul-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@f
    .line 183
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@11
    mul-float/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@14
    .line 179
    return-void
.end method

.method public mul(Landroid/renderscript/Float4;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 168
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@7
    .line 169
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@b
    mul-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@e
    .line 170
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@12
    mul-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@15
    .line 171
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@17
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@19
    mul-float/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    .line 167
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 328
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    neg-float v0, v0

    #@3
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@5
    .line 329
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@7
    neg-float v0, v0

    #@8
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@a
    .line 330
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@c
    neg-float v0, v0

    #@d
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@f
    .line 331
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@11
    neg-float v0, v0

    #@12
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@14
    .line 327
    return-void
.end method

.method public set(Landroid/renderscript/Float4;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 318
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    #@2
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@4
    .line 319
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    #@6
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@8
    .line 320
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    #@a
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@c
    .line 321
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    #@e
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@10
    .line 317
    return-void
.end method

.method public setAt(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 380
    packed-switch p1, :pswitch_data_0

    #@3
    .line 394
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 382
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Float4;->x:F

    #@e
    .line 383
    return-void

    #@f
    .line 385
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    #@11
    .line 386
    return-void

    #@12
    .line 388
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Float4;->z:F

    #@14
    .line 389
    return-void

    #@15
    .line 391
    :pswitch_3
    iput p2, p0, Landroid/renderscript/Float4;->w:F

    #@17
    .line 392
    return-void

    #@18
    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setValues(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    #@0
    .prologue
    .line 432
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    #@2
    .line 433
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    #@4
    .line 434
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    #@6
    .line 435
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    #@8
    .line 431
    return-void
.end method

.method public sub(F)V
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    sub-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@5
    .line 123
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@7
    sub-float/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@a
    .line 124
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@c
    sub-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@f
    .line 125
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@11
    sub-float/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@14
    .line 121
    return-void
.end method

.method public sub(Landroid/renderscript/Float4;)V
    .locals 2
    .param p1, "value"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/renderscript/Float4;->x:F

    #@2
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    #@4
    sub-float/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Float4;->x:F

    #@7
    .line 111
    iget v0, p0, Landroid/renderscript/Float4;->y:F

    #@9
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    #@b
    sub-float/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Float4;->y:F

    #@e
    .line 112
    iget v0, p0, Landroid/renderscript/Float4;->z:F

    #@10
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    #@12
    sub-float/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Float4;->z:F

    #@15
    .line 113
    iget v0, p0, Landroid/renderscript/Float4;->w:F

    #@17
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    #@19
    sub-float/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Float4;->w:F

    #@1c
    .line 109
    return-void
.end method
