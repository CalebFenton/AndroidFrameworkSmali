.class public Landroid/renderscript/Double3;
.super Ljava/lang/Object;
.source "Double3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:D

.field public whitelist y:D

.field public whitelist z:D


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor whitelist <init>(DDD)V
    .registers 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    .line 44
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    .line 45
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Double3;)V
    .registers 4
    .param p1, "data"    # Landroid/renderscript/Double3;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 38
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 39
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 40
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .line 94
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 95
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 96
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 97
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 99
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .line 56
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 57
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 58
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 59
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 61
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .line 256
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 257
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 258
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 259
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 261
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .line 229
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 230
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 231
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 232
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 234
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)D
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .line 282
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .line 202
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 203
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 204
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 205
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 207
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .line 175
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 176
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 177
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 178
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 180
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .line 148
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 149
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 150
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 151
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 153
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .line 121
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 122
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v1, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 123
    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 124
    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 126
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(D)V
    .registers 5
    .param p1, "value"    # D

    .line 81
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 82
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 83
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 84
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Double3;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double3;

    .line 70
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 71
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 72
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 73
    return-void
.end method

.method public greylist-max-o addAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .line 383
    packed-switch p1, :pswitch_data_1e

    .line 394
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 392
    return-void

    .line 388
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 389
    return-void

    .line 385
    :pswitch_17
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 386
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Double3;D)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double3;
    .param p2, "factor"    # D

    .line 292
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 293
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 294
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 295
    return-void
.end method

.method public greylist-max-o copyTo([DI)V
    .registers 6
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    .line 418
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    aput-wide v0, p1, p2

    .line 419
    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Double3;->y:D

    aput-wide v1, p1, v0

    .line 420
    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Double3;->z:D

    aput-wide v1, p1, v0

    .line 421
    return-void
.end method

.method public greylist-max-o div(D)V
    .registers 5
    .param p1, "value"    # D

    .line 243
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 244
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 245
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 246
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Double3;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double3;

    .line 216
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 217
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 218
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 219
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Double3;)D
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double3;

    .line 271
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()D
    .registers 5

    .line 332
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 342
    packed-switch p1, :pswitch_data_14

    .line 350
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    return-wide v0

    .line 346
    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    return-wide v0

    .line 344
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    return-wide v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 323
    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o mul(D)V
    .registers 5
    .param p1, "value"    # D

    .line 189
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 190
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 191
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 192
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Double3;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double3;

    .line 162
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 163
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 164
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 165
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 3

    .line 312
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 313
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 314
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 315
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Double3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Double3;

    .line 303
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 304
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 305
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 306
    return-void
.end method

.method public greylist-max-o setAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .line 361
    packed-switch p1, :pswitch_data_14

    .line 372
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Double3;->z:D

    .line 370
    return-void

    .line 366
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Double3;->y:D

    .line 367
    return-void

    .line 363
    :pswitch_11
    iput-wide p2, p0, Landroid/renderscript/Double3;->x:D

    .line 364
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(DDD)V
    .registers 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 406
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    .line 407
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    .line 408
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    .line 409
    return-void
.end method

.method public greylist-max-o sub(D)V
    .registers 5
    .param p1, "value"    # D

    .line 135
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 136
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 137
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 138
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Double3;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double3;

    .line 108
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 109
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 110
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 111
    return-void
.end method
