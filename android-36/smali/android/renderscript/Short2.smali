.class public Landroid/renderscript/Short2;
.super Ljava/lang/Object;
.source "Short2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:S

.field public whitelist y:S


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Short2;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Short2;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 51
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(S)V
    .registers 2
    .param p1, "i"    # S

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(SS)V
    .registers 3
    .param p1, "x"    # S
    .param p2, "y"    # S

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 45
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    .line 46
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    .line 72
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 73
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 74
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 76
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    .line 97
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 98
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 99
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 101
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    .line 222
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 223
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 224
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 226
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    .line 247
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 248
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 249
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 251
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)S
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    .line 339
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    iget-short v2, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    .line 272
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 273
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 274
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 276
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    .line 297
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 298
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 299
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 301
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    .line 172
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 173
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 174
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 176
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    .line 197
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 198
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 199
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 201
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    .line 122
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 123
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 124
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 126
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    .line 147
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 148
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 149
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 151
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(Landroid/renderscript/Short2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 60
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 61
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 62
    return-void
.end method

.method public greylist-max-o add(S)V
    .registers 3
    .param p1, "value"    # S

    .line 85
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 86
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 87
    return-void
.end method

.method public greylist-max-o addAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .line 426
    packed-switch p1, :pswitch_data_1a

    .line 434
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :pswitch_b
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 432
    return-void

    .line 428
    :pswitch_12
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 429
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Short2;S)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short2;
    .param p2, "factor"    # S

    .line 349
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 350
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 351
    return-void
.end method

.method public greylist-max-o copyTo([SI)V
    .registers 5
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    .line 445
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    aput-short v0, p1, p2

    .line 446
    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    aput-short v1, p1, v0

    .line 447
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Short2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 210
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 211
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 212
    return-void
.end method

.method public greylist-max-o div(S)V
    .registers 3
    .param p1, "value"    # S

    .line 235
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 236
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 237
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Short2;)S
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 328
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()S
    .registers 3

    .line 380
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o get(I)S
    .registers 4
    .param p1, "i"    # I

    .line 390
    packed-switch p1, :pswitch_data_12

    .line 396
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_b
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    return v0

    .line 392
    :pswitch_e
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()S
    .registers 2

    .line 310
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o mod(Landroid/renderscript/Short2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 260
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 261
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 262
    return-void
.end method

.method public greylist-max-o mod(S)V
    .registers 3
    .param p1, "value"    # S

    .line 285
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 286
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 287
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Short2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 160
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 161
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 162
    return-void
.end method

.method public greylist-max-o mul(S)V
    .registers 3
    .param p1, "value"    # S

    .line 185
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 186
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 187
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 317
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 318
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 319
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Short2;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 359
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 360
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 361
    return-void
.end method

.method public greylist-max-o setAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .line 407
    packed-switch p1, :pswitch_data_12

    .line 415
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_b
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    .line 413
    return-void

    .line 409
    :pswitch_e
    iput-short p2, p0, Landroid/renderscript/Short2;->x:S

    .line 410
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(SS)V
    .registers 3
    .param p1, "a"    # S
    .param p2, "b"    # S

    .line 370
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 371
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    .line 372
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Short2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short2;

    .line 110
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 111
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 112
    return-void
.end method

.method public greylist-max-o sub(S)V
    .registers 3
    .param p1, "value"    # S

    .line 135
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    .line 136
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    .line 137
    return-void
.end method
