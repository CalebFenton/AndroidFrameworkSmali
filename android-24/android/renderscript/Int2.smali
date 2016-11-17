.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# instance fields
.field public x:I

.field public y:I


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

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    #@5
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 37
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    #@5
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 43
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    #@9
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@b
    .line 41
    return-void
.end method

.method public static add(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 90
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    add-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@a
    .line 91
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@c
    add-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@f
    .line 93
    return-object v0
.end method

.method public static add(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 65
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int2;->x:I

    #@9
    add-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@c
    .line 66
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int2;->y:I

    #@10
    add-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@13
    .line 68
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 239
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 240
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    div-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@a
    .line 241
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@c
    div-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@f
    .line 243
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 214
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 215
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int2;->x:I

    #@9
    div-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@c
    .line 216
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int2;->y:I

    #@10
    div-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@13
    .line 218
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 331
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@7
    iget v2, p0, Landroid/renderscript/Int2;->y:I

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public static mod(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 290
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    rem-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@a
    .line 291
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@c
    rem-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@f
    .line 293
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 264
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 265
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int2;->x:I

    #@9
    rem-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@c
    .line 266
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int2;->y:I

    #@10
    rem-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@13
    .line 268
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 189
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 190
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    mul-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@a
    .line 191
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@c
    mul-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@f
    .line 193
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 164
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 165
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int2;->x:I

    #@9
    mul-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@c
    .line 166
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int2;->y:I

    #@10
    mul-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@13
    .line 168
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 140
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    sub-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@a
    .line 141
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@c
    sub-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@f
    .line 143
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 115
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int2;->x:I

    #@9
    sub-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@c
    .line 116
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int2;->y:I

    #@10
    sub-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@13
    .line 118
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 78
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@7
    add-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    .line 76
    return-void
.end method

.method public add(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 52
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    add-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 53
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@b
    add-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@e
    .line 51
    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    #@3
    .line 426
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 420
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@e
    add-int/2addr v0, p2

    #@f
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@11
    .line 421
    return-void

    #@12
    .line 423
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@14
    add-int/2addr v0, p2

    #@15
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@17
    .line 424
    return-void

    #@18
    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int2;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;
    .param p2, "factor"    # I

    #@0
    .prologue
    .line 341
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@8
    .line 342
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@c
    mul-int/2addr v1, p2

    #@d
    add-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@10
    .line 340
    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 437
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    aput v0, p1, p2

    #@4
    .line 438
    add-int/lit8 v0, p2, 0x1

    #@6
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@8
    aput v1, p1, v0

    #@a
    .line 436
    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    div-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 228
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@7
    div-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    .line 226
    return-void
.end method

.method public div(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    div-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 203
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@b
    div-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@e
    .line 201
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int2;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 320
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@7
    iget v2, p1, Landroid/renderscript/Int2;->y:I

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public elementSum()I
    .locals 2

    #@0
    .prologue
    .line 372
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    #@3
    .line 388
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 384
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@e
    return v0

    #@f
    .line 386
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@11
    return v0

    #@12
    .line 382
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
    .line 302
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 277
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    rem-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 278
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@7
    rem-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    .line 276
    return-void
.end method

.method public mod(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    rem-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 253
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@b
    rem-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@e
    .line 251
    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 177
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    mul-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 178
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@7
    mul-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    .line 176
    return-void
.end method

.method public mul(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 152
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 153
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@b
    mul-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@e
    .line 151
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 309
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    neg-int v0, v0

    #@3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 310
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@7
    neg-int v0, v0

    #@8
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    .line 308
    return-void
.end method

.method public set(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 351
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    #@2
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@4
    .line 352
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    #@6
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@8
    .line 350
    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    #@3
    .line 407
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 401
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int2;->x:I

    #@e
    .line 402
    return-void

    #@f
    .line 404
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    #@11
    .line 405
    return-void

    #@12
    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 362
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    #@2
    .line 363
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    #@4
    .line 361
    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 127
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@5
    .line 128
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@7
    sub-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@a
    .line 126
    return-void
.end method

.method public sub(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int2;->x:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int2;->x:I

    #@7
    .line 103
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int2;->y:I

    #@b
    sub-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int2;->y:I

    #@e
    .line 101
    return-void
.end method
