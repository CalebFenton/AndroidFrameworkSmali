.class public Landroid/renderscript/Byte2;
.super Ljava/lang/Object;
.source "Byte2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:B

.field public whitelist y:B


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(BB)V
    .registers 3
    .param p1, "initX"    # B
    .param p2, "initY"    # B

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 37
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    .line 38
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Byte2;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Byte2;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 43
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 44
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    .line 89
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 90
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 91
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 93
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    .line 64
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 65
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 66
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 68
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    .line 239
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 240
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 241
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 243
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    .line 214
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 215
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 216
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 218
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)B
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    .line 281
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    .line 189
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 190
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 191
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 193
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    .line 164
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 165
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 166
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 168
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    .line 139
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 140
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 141
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 143
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    .line 114
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 115
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 116
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 118
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(B)V
    .registers 3
    .param p1, "value"    # B

    .line 77
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 78
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 79
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Byte2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte2;

    .line 52
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 53
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 54
    return-void
.end method

.method public greylist-max-o addAt(IB)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # B

    .line 368
    packed-switch p1, :pswitch_data_1a

    .line 376
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_b
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 374
    return-void

    .line 370
    :pswitch_12
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 371
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Byte2;B)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Byte2;
    .param p2, "factor"    # B

    .line 291
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 292
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 293
    return-void
.end method

.method public greylist-max-o copyTo([BI)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 387
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    aput-byte v0, p1, p2

    .line 388
    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    aput-byte v1, p1, v0

    .line 389
    return-void
.end method

.method public greylist-max-o div(B)V
    .registers 3
    .param p1, "value"    # B

    .line 227
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 228
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 229
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Byte2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte2;

    .line 202
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 203
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 204
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Byte2;)B
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Byte2;

    .line 270
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()B
    .registers 3

    .line 322
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o get(I)B
    .registers 4
    .param p1, "i"    # I

    .line 332
    packed-switch p1, :pswitch_data_12

    .line 338
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_b
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    return v0

    .line 334
    :pswitch_e
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()B
    .registers 2

    .line 252
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o mul(B)V
    .registers 3
    .param p1, "value"    # B

    .line 177
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 178
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 179
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Byte2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte2;

    .line 152
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 153
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 154
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 259
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 260
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 261
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Byte2;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Byte2;

    .line 301
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 302
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 303
    return-void
.end method

.method public greylist-max-o setAt(IB)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # B

    .line 349
    packed-switch p1, :pswitch_data_12

    .line 357
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_b
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    .line 355
    return-void

    .line 351
    :pswitch_e
    iput-byte p2, p0, Landroid/renderscript/Byte2;->x:B

    .line 352
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(BB)V
    .registers 3
    .param p1, "a"    # B
    .param p2, "b"    # B

    .line 312
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 313
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    .line 314
    return-void
.end method

.method public greylist-max-o sub(B)V
    .registers 3
    .param p1, "value"    # B

    .line 127
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 128
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 129
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Byte2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte2;

    .line 102
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    .line 103
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    .line 104
    return-void
.end method
