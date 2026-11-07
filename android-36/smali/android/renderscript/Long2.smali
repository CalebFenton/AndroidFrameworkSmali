.class public Landroid/renderscript/Long2;
.super Ljava/lang/Object;
.source "Long2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:J

.field public whitelist y:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "i"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Landroid/renderscript/Long2;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .registers 5
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 42
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "source"    # Landroid/renderscript/Long2;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 48
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 49
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .line 94
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 95
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 96
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 98
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .line 69
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 70
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 71
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 73
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .line 244
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 245
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 246
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 248
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .line 219
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 220
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 221
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 223
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)J
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .line 336
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .line 294
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 295
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 296
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 298
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .line 269
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 270
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 271
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 273
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .line 194
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 195
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 196
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 198
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .line 169
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 170
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 171
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 173
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .line 144
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 145
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 146
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 148
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .line 119
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 120
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v1, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 121
    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 123
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(J)V
    .registers 5
    .param p1, "value"    # J

    .line 82
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 83
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 84
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Long2;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 57
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 58
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 59
    return-void
.end method

.method public greylist-max-o addAt(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 423
    packed-switch p1, :pswitch_data_18

    .line 431
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 429
    return-void

    .line 425
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 426
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Long2;J)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Long2;
    .param p2, "factor"    # J

    .line 346
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 347
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 348
    return-void
.end method

.method public greylist-max-o copyTo([JI)V
    .registers 6
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    .line 442
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    aput-wide v0, p1, p2

    .line 443
    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Long2;->y:J

    aput-wide v1, p1, v0

    .line 444
    return-void
.end method

.method public greylist-max-o div(J)V
    .registers 5
    .param p1, "value"    # J

    .line 232
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 233
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 234
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Long2;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 207
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 208
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 209
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Long2;)J
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 325
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()J
    .registers 5

    .line 377
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)J
    .registers 4
    .param p1, "i"    # I

    .line 387
    packed-switch p1, :pswitch_data_12

    .line 393
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-wide v0

    .line 389
    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    return-wide v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()J
    .registers 3

    .line 307
    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public greylist-max-o mod(J)V
    .registers 5
    .param p1, "value"    # J

    .line 282
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 283
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 284
    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Long2;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 257
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 258
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 259
    return-void
.end method

.method public greylist-max-o mul(J)V
    .registers 5
    .param p1, "value"    # J

    .line 182
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 183
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 184
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Long2;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 157
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 158
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 159
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 3

    .line 314
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 315
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 316
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 356
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 357
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 358
    return-void
.end method

.method public greylist-max-o setAt(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 404
    packed-switch p1, :pswitch_data_12

    .line 412
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Long2;->y:J

    .line 410
    return-void

    .line 406
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Long2;->x:J

    .line 407
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(JJ)V
    .registers 5
    .param p1, "a"    # J
    .param p3, "b"    # J

    .line 367
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 368
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    .line 369
    return-void
.end method

.method public greylist-max-o sub(J)V
    .registers 5
    .param p1, "value"    # J

    .line 132
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 133
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 134
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Long2;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    .line 107
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 108
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 109
    return-void
.end method
