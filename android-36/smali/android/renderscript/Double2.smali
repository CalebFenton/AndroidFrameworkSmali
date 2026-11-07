.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "Double2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:D

.field public whitelist y:D


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(DD)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 43
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    .line 44
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Double2;)V
    .registers 4
    .param p1, "data"    # Landroid/renderscript/Double2;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 38
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 39
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .line 89
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 90
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 91
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 93
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .line 54
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 55
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 56
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 58
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .line 239
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 240
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 241
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 243
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .line 214
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 215
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 216
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 218
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Ljava/lang/Double;
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .line 264
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .line 189
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 190
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 191
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 193
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .line 164
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 165
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 166
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 168
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    .line 139
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 140
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 141
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 143
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    .line 114
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 115
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 116
    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 118
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(D)V
    .registers 5
    .param p1, "value"    # D

    .line 77
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 78
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 79
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .line 67
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 68
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 69
    return-void
.end method

.method public greylist-max-o addAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .line 357
    packed-switch p1, :pswitch_data_18

    .line 365
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 363
    return-void

    .line 359
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 360
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Double2;D)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double2;
    .param p2, "factor"    # D

    .line 274
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 275
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 276
    return-void
.end method

.method public greylist-max-o copyTo([DI)V
    .registers 6
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    .line 387
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    aput-wide v0, p1, p2

    .line 388
    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    aput-wide v1, p1, v0

    .line 389
    return-void
.end method

.method public greylist-max-o div(D)V
    .registers 5
    .param p1, "value"    # D

    .line 227
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 228
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 229
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .line 202
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 203
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 204
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Double2;)D
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Double2;

    .line 253
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()D
    .registers 5

    .line 311
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 321
    packed-switch p1, :pswitch_data_12

    .line 327
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-wide v0

    .line 323
    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    return-wide v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 302
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o mul(D)V
    .registers 5
    .param p1, "value"    # D

    .line 177
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 178
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 179
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .line 152
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 153
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 154
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 3

    .line 292
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 293
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 294
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Double2;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Double2;

    .line 284
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 285
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 286
    return-void
.end method

.method public greylist-max-o setAt(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # D

    .line 338
    packed-switch p1, :pswitch_data_12

    .line 346
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Double2;->y:D

    .line 344
    return-void

    .line 340
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Double2;->x:D

    .line 341
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(DD)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 376
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 377
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    .line 378
    return-void
.end method

.method public greylist-max-o sub(D)V
    .registers 5
    .param p1, "value"    # D

    .line 127
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 128
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 129
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Double2;)V
    .registers 6
    .param p1, "value"    # Landroid/renderscript/Double2;

    .line 102
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    .line 103
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    .line 104
    return-void
.end method
