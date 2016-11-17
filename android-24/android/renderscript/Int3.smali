.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


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

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/renderscript/Int3;->z:I

    #@5
    iput p1, p0, Landroid/renderscript/Int3;->y:I

    #@7
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 38
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    #@7
    .line 39
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    #@9
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    #@5
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@7
    .line 45
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    #@9
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@b
    .line 46
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 43
    return-void
.end method

.method public static add(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 96
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    add-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@a
    .line 97
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@c
    add-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@f
    .line 98
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@11
    add-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@14
    .line 100
    return-object v0
.end method

.method public static add(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 69
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int3;->x:I

    #@9
    add-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@c
    .line 70
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int3;->y:I

    #@10
    add-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@13
    .line 71
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int3;->z:I

    #@17
    add-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@1a
    .line 73
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 258
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    div-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@a
    .line 259
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@c
    div-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@f
    .line 260
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@11
    div-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@14
    .line 262
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 231
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int3;->x:I

    #@9
    div-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@c
    .line 232
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int3;->y:I

    #@10
    div-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@13
    .line 233
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int3;->z:I

    #@17
    div-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@1a
    .line 235
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 355
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@7
    iget v2, p0, Landroid/renderscript/Int3;->y:I

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@d
    iget v2, p0, Landroid/renderscript/Int3;->z:I

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public static mod(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 312
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    rem-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@a
    .line 313
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@c
    rem-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@f
    .line 314
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@11
    rem-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@14
    .line 316
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 285
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int3;->x:I

    #@9
    rem-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@c
    .line 286
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int3;->y:I

    #@10
    rem-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@13
    .line 287
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int3;->z:I

    #@17
    rem-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@1a
    .line 289
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 203
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 204
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    mul-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@a
    .line 205
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@c
    mul-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@f
    .line 206
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@11
    mul-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@14
    .line 208
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 177
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int3;->x:I

    #@9
    mul-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@c
    .line 178
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int3;->y:I

    #@10
    mul-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@13
    .line 179
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int3;->z:I

    #@17
    mul-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@1a
    .line 181
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 149
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 150
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    sub-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@a
    .line 151
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@c
    sub-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@f
    .line 152
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@11
    sub-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@14
    .line 154
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 123
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int3;->x:I

    #@9
    sub-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@c
    .line 124
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int3;->y:I

    #@10
    sub-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@13
    .line 125
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int3;->z:I

    #@17
    sub-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@1a
    .line 127
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 83
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@7
    add-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    .line 84
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    add-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 81
    return-void
.end method

.method public add(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    add-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@7
    .line 56
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@b
    add-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@e
    .line 57
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@15
    .line 54
    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 451
    packed-switch p1, :pswitch_data_0

    #@3
    .line 462
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 453
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@e
    add-int/2addr v0, p2

    #@f
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@11
    .line 454
    return-void

    #@12
    .line 456
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@14
    add-int/2addr v0, p2

    #@15
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@17
    .line 457
    return-void

    #@18
    .line 459
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@1a
    add-int/2addr v0, p2

    #@1b
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@1d
    .line 460
    return-void

    #@1e
    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int3;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;
    .param p2, "factor"    # I

    #@0
    .prologue
    .line 365
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@8
    .line 366
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@c
    mul-int/2addr v1, p2

    #@d
    add-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@10
    .line 367
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@12
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@14
    mul-int/2addr v1, p2

    #@15
    add-int/2addr v0, v1

    #@16
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@18
    .line 364
    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 473
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    aput v0, p1, p2

    #@4
    .line 474
    add-int/lit8 v0, p2, 0x1

    #@6
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@8
    aput v1, p1, v0

    #@a
    .line 475
    add-int/lit8 v0, p2, 0x2

    #@c
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@e
    aput v1, p1, v0

    #@10
    .line 472
    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    div-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 245
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@7
    div-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    .line 246
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    div-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 243
    return-void
.end method

.method public div(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 217
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    div-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@7
    .line 218
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@b
    div-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@e
    .line 219
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@12
    div-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@15
    .line 216
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int3;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 344
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@7
    iget v2, p1, Landroid/renderscript/Int3;->y:I

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@d
    iget v2, p1, Landroid/renderscript/Int3;->z:I

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public elementSum()I
    .locals 2

    #@0
    .prologue
    .line 400
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    #@3
    .line 418
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 412
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@e
    return v0

    #@f
    .line 414
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@11
    return v0

    #@12
    .line 416
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@14
    return v0

    #@15
    .line 410
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
    .line 325
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 298
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    rem-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 299
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@7
    rem-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    .line 300
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    rem-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 297
    return-void
.end method

.method public mod(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 271
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    rem-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@7
    .line 272
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@b
    rem-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@e
    .line 273
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@12
    rem-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@15
    .line 270
    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 190
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    mul-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 191
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@7
    mul-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    .line 192
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    mul-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 189
    return-void
.end method

.method public mul(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@7
    .line 164
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@b
    mul-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@e
    .line 165
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@12
    mul-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@15
    .line 162
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    neg-int v0, v0

    #@3
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 333
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@7
    neg-int v0, v0

    #@8
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    .line 334
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    neg-int v0, v0

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 331
    return-void
.end method

.method public set(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 376
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    #@2
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@4
    .line 377
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    #@6
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@8
    .line 378
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    #@a
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    .line 375
    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 429
    packed-switch p1, :pswitch_data_0

    #@3
    .line 440
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 431
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int3;->x:I

    #@e
    .line 432
    return-void

    #@f
    .line 434
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    #@11
    .line 435
    return-void

    #@12
    .line 437
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Int3;->z:I

    #@14
    .line 438
    return-void

    #@15
    .line 429
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(III)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 389
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    #@2
    .line 390
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    #@4
    .line 391
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    #@6
    .line 388
    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@5
    .line 137
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@7
    sub-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@a
    .line 138
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@c
    sub-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@f
    .line 135
    return-void
.end method

.method public sub(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int3;->x:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int3;->x:I

    #@7
    .line 110
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int3;->y:I

    #@b
    sub-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int3;->y:I

    #@e
    .line 111
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int3;->z:I

    #@12
    sub-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int3;->z:I

    #@15
    .line 108
    return-void
.end method
