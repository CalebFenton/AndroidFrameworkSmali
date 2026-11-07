.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:I

.field public whitelist y:I

.field public whitelist z:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "i"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->y:I

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 43
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 44
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    .line 45
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Int3;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Int3;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 50
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 51
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 52
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .line 100
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 101
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 102
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 103
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 105
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .line 73
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 74
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 75
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 76
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 78
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .line 262
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 263
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 264
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 265
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 267
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .line 235
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 236
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 237
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 238
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 240
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)I
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .line 360
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    iget v2, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    iget v2, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .line 316
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 317
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 318
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 319
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 321
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .line 289
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 290
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 291
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 292
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 294
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .line 208
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 209
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 210
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 211
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 213
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .line 181
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 182
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 183
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 184
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 186
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .line 154
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 155
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 156
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 157
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 159
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .line 127
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 128
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 129
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 130
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 132
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .registers 3
    .param p1, "value"    # I

    .line 87
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 88
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 89
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 90
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Int3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 60
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 61
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 62
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 63
    return-void
.end method

.method public greylist-max-o addAt(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 456
    packed-switch p1, :pswitch_data_1e

    .line 467
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 465
    return-void

    .line 461
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 462
    return-void

    .line 458
    :pswitch_17
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 459
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Int3;I)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Int3;
    .param p2, "factor"    # I

    .line 370
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 371
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 372
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 373
    return-void
.end method

.method public greylist-max-o copyTo([II)V
    .registers 5
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .line 478
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    aput v0, p1, p2

    .line 479
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    aput v1, p1, v0

    .line 480
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    aput v1, p1, v0

    .line 481
    return-void
.end method

.method public greylist-max-o div(I)V
    .registers 3
    .param p1, "value"    # I

    .line 249
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 250
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 251
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 252
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Int3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 222
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 223
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 224
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 225
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Int3;)I
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 349
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()I
    .registers 3

    .line 405
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)I
    .registers 4
    .param p1, "i"    # I

    .line 415
    packed-switch p1, :pswitch_data_14

    .line 423
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    return v0

    .line 419
    :pswitch_e
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    return v0

    .line 417
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Int3;->x:I

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

    .line 330
    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o mod(I)V
    .registers 3
    .param p1, "value"    # I

    .line 303
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 304
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 305
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 306
    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Int3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 276
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 277
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 278
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 279
    return-void
.end method

.method public greylist-max-o mul(I)V
    .registers 3
    .param p1, "value"    # I

    .line 195
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 196
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 197
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 198
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Int3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 168
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 169
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 170
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 171
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 337
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 338
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 339
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 340
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Int3;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 381
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 382
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 383
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 384
    return-void
.end method

.method public greylist-max-o setAt(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 434
    packed-switch p1, :pswitch_data_14

    .line 445
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Int3;->z:I

    .line 443
    return-void

    .line 439
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 440
    return-void

    .line 436
    :pswitch_11
    iput p2, p0, Landroid/renderscript/Int3;->x:I

    .line 437
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(III)V
    .registers 4
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .line 394
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 395
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 396
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    .line 397
    return-void
.end method

.method public greylist-max-o sub(I)V
    .registers 3
    .param p1, "value"    # I

    .line 141
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 142
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 143
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 144
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Int3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int3;

    .line 114
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 115
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 116
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 117
    return-void
.end method
