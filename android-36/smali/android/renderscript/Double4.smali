.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:D

.field public whitelist x:D

.field public whitelist y:D

.field public whitelist z:D


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(DDDD)V
    .registers 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 46
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 47
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 48
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Double4;)V
    .registers 4
    .param p1, "data"    # Landroid/renderscript/Double4;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 39
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 40
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 41
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 42
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    .line 100
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 101
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 102
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 103
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 104
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 106
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    .line 59
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 60
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 61
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 62
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 63
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 65
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    .line 257
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 258
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 259
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 260
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 261
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 263
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    .line 274
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 275
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 276
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 277
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 278
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 280
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)D
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    .line 301
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    .line 216
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 217
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 218
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 219
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 220
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 222
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    .line 199
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 200
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 201
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 202
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 203
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 205
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    .line 141
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 142
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 143
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 144
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 145
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 147
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    .line 158
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 159
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v1, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 160
    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 161
    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 162
    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v3, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 164
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(D)V
    .registers 5
    .param p1, "value"    # D

    .line 86
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 87
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 88
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 89
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 90
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Double4;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double4;

    .line 74
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 75
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 76
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 77
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 78
    return-void
.end method

.method public greylist-max-o addAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .line 410
    packed-switch p1, :pswitch_data_24

    .line 424
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 422
    return-void

    .line 418
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 419
    return-void

    .line 415
    :pswitch_17
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 416
    return-void

    .line 412
    :pswitch_1d
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 413
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

.method public greylist-max-o addMultiple(Landroid/renderscript/Double4;D)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double4;
    .param p2, "factor"    # D

    .line 311
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 312
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 313
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 314
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 315
    return-void
.end method

.method public greylist-max-o copyTo([DI)V
    .registers 6
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    .line 450
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    aput-wide v0, p1, p2

    .line 451
    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Double4;->y:D

    aput-wide v1, p1, v0

    .line 452
    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Double4;->z:D

    aput-wide v1, p1, v0

    .line 453
    add-int/lit8 v0, p2, 0x3

    iget-wide v1, p0, Landroid/renderscript/Double4;->w:D

    aput-wide v1, p1, v0

    .line 454
    return-void
.end method

.method public greylist-max-o div(D)V
    .registers 5
    .param p1, "value"    # D

    .line 243
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 244
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 245
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 246
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 247
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Double4;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double4;

    .line 231
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 232
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 233
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 234
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 235
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Double4;)D
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double4;

    .line 290
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()D
    .registers 5

    .line 354
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 364
    packed-switch p1, :pswitch_data_18

    .line 374
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    return-wide v0

    .line 370
    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    return-wide v0

    .line 368
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    return-wide v0

    .line 366
    :pswitch_14
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    return-wide v0

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

    .line 345
    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mul(D)V
    .registers 5
    .param p1, "value"    # D

    .line 185
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 186
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 187
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 188
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 189
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Double4;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double4;

    .line 173
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 174
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 175
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 176
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 177
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 3

    .line 333
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 334
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 335
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 336
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 337
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Double4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Double4;

    .line 323
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 324
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 325
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 326
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 327
    return-void
.end method

.method public greylist-max-o setAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .line 385
    packed-switch p1, :pswitch_data_18

    .line 399
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Double4;->w:D

    .line 397
    return-void

    .line 393
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Double4;->z:D

    .line 394
    return-void

    .line 390
    :pswitch_11
    iput-wide p2, p0, Landroid/renderscript/Double4;->y:D

    .line 391
    return-void

    .line 387
    :pswitch_14
    iput-wide p2, p0, Landroid/renderscript/Double4;->x:D

    .line 388
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

.method public greylist-max-o setValues(DDDD)V
    .registers 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .line 437
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 438
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 439
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 440
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    .line 441
    return-void
.end method

.method public greylist-max-o sub(D)V
    .registers 5
    .param p1, "value"    # D

    .line 127
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 128
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 129
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 130
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 131
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Double4;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double4;

    .line 115
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    .line 116
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    .line 117
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    .line 118
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    .line 119
    return-void
.end method
