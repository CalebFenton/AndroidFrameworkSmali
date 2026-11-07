.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;
.source "Int4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:I

.field public whitelist x:I

.field public whitelist y:I

.field public whitelist z:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "i"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/renderscript/Int4;->w:I

    iput p1, p0, Landroid/renderscript/Int4;->z:I

    iput p1, p0, Landroid/renderscript/Int4;->y:I

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "w"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 44
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 45
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 46
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Int4;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Int4;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 52
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 53
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 54
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 55
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .line 106
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 107
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 108
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 109
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 110
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 112
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .line 77
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 78
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 79
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 80
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 81
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 83
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .line 280
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 281
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 282
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 283
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 284
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 286
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .line 251
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 252
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 253
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 254
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 255
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 257
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)I
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .line 384
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    iget v2, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    iget v2, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    iget v2, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .line 338
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 339
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 340
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 341
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 342
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 344
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .line 309
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 310
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 311
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 312
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 313
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 315
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .line 222
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 223
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 224
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 225
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 226
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 228
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .line 193
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 194
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 195
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 196
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 197
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 199
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .line 164
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 165
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 166
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 167
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 168
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 170
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .line 135
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 136
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 137
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 138
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 139
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 141
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .registers 3
    .param p1, "value"    # I

    .line 92
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 93
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 94
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 95
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 96
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Int4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 63
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 64
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 65
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 66
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 67
    return-void
.end method

.method public greylist-max-o addAt(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 489
    packed-switch p1, :pswitch_data_24

    .line 503
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 501
    return-void

    .line 497
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 498
    return-void

    .line 494
    :pswitch_17
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 495
    return-void

    .line 491
    :pswitch_1d
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 492
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

.method public greylist-max-o addMultiple(Landroid/renderscript/Int4;I)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Int4;
    .param p2, "factor"    # I

    .line 394
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 395
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 396
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 397
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 398
    return-void
.end method

.method public greylist-max-o copyTo([II)V
    .registers 5
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .line 514
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    aput v0, p1, p2

    .line 515
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    aput v1, p1, v0

    .line 516
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    aput v1, p1, v0

    .line 517
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    aput v1, p1, v0

    .line 518
    return-void
.end method

.method public greylist-max-o div(I)V
    .registers 3
    .param p1, "value"    # I

    .line 266
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 267
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 268
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 269
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 270
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Int4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 237
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 238
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 239
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 240
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 241
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Int4;)I
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 373
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()I
    .registers 3

    .line 433
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)I
    .registers 4
    .param p1, "i"    # I

    .line 443
    packed-switch p1, :pswitch_data_18

    .line 453
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :pswitch_b
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    return v0

    .line 449
    :pswitch_e
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    return v0

    .line 447
    :pswitch_11
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    return v0

    .line 445
    :pswitch_14
    iget v0, p0, Landroid/renderscript/Int4;->x:I

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

    .line 353
    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mod(I)V
    .registers 3
    .param p1, "value"    # I

    .line 324
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 325
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 326
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 327
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 328
    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Int4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 295
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 296
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 297
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 298
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 299
    return-void
.end method

.method public greylist-max-o mul(I)V
    .registers 3
    .param p1, "value"    # I

    .line 208
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 209
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 210
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 211
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 212
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Int4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 179
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 180
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 181
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 182
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 183
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 360
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 361
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 362
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 363
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 364
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Int4;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 406
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 407
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 408
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 409
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 410
    return-void
.end method

.method public greylist-max-o setAt(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 464
    packed-switch p1, :pswitch_data_18

    .line 478
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Int4;->w:I

    .line 476
    return-void

    .line 472
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Int4;->z:I

    .line 473
    return-void

    .line 469
    :pswitch_11
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 470
    return-void

    .line 466
    :pswitch_14
    iput p2, p0, Landroid/renderscript/Int4;->x:I

    .line 467
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

.method public greylist-max-o setValues(IIII)V
    .registers 5
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .line 421
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 422
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 423
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 424
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    .line 425
    return-void
.end method

.method public greylist-max-o sub(I)V
    .registers 3
    .param p1, "value"    # I

    .line 150
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 151
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 152
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 153
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 154
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Int4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Int4;

    .line 121
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 122
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 123
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 124
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 125
    return-void
.end method
