.class public Landroid/renderscript/Long3;
.super Ljava/lang/Object;
.source "Long3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:J

.field public whitelist y:J

.field public whitelist z:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "i"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Landroid/renderscript/Long3;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long3;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(JJJ)V
    .registers 7
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 43
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 44
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    .line 45
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "source"    # Landroid/renderscript/Long3;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 50
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 51
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 52
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .line 100
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 101
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 102
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 103
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 105
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .line 73
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 74
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 75
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 76
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->z:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 78
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .line 262
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 263
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 264
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 265
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 267
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .line 235
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 236
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 237
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 238
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->z:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 240
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)J
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .line 360
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .line 316
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 317
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 318
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 319
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 321
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .line 289
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 290
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 291
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 292
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 294
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .line 208
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 209
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 210
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 211
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 213
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .line 181
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 182
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 183
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 184
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 186
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .line 154
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 155
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 156
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 157
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 159
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .line 127
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 128
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v1, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 129
    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 130
    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 132
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(J)V
    .registers 5
    .param p1, "value"    # J

    .line 87
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 88
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 89
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 90
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Long3;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 60
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 61
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 62
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 63
    return-void
.end method

.method public greylist-max-o addAt(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 456
    packed-switch p1, :pswitch_data_1e

    .line 467
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 465
    return-void

    .line 461
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 462
    return-void

    .line 458
    :pswitch_17
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

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

.method public greylist-max-o addMultiple(Landroid/renderscript/Long3;J)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Long3;
    .param p2, "factor"    # J

    .line 370
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 371
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 372
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 373
    return-void
.end method

.method public greylist-max-o copyTo([JI)V
    .registers 6
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    .line 478
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    aput-wide v0, p1, p2

    .line 479
    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Long3;->y:J

    aput-wide v1, p1, v0

    .line 480
    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Long3;->z:J

    aput-wide v1, p1, v0

    .line 481
    return-void
.end method

.method public greylist-max-o div(J)V
    .registers 5
    .param p1, "value"    # J

    .line 249
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 250
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 251
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 252
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Long3;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 222
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 223
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 224
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 225
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Long3;)J
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 349
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()J
    .registers 5

    .line 405
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    return-wide v0

    .line 419
    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    return-wide v0

    .line 417
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    return-wide v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()J
    .registers 3

    .line 330
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public greylist-max-o mod(J)V
    .registers 5
    .param p1, "value"    # J

    .line 303
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 304
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 305
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 306
    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Long3;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 276
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 277
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 278
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 279
    return-void
.end method

.method public greylist-max-o mul(J)V
    .registers 5
    .param p1, "value"    # J

    .line 195
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 196
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 197
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 198
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Long3;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 168
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 169
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 170
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 171
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 3

    .line 337
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 338
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 339
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 340
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 381
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 382
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 383
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 384
    return-void
.end method

.method public greylist-max-o setAt(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 434
    packed-switch p1, :pswitch_data_14

    .line 445
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Long3;->z:J

    .line 443
    return-void

    .line 439
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Long3;->y:J

    .line 440
    return-void

    .line 436
    :pswitch_11
    iput-wide p2, p0, Landroid/renderscript/Long3;->x:J

    .line 437
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(JJJ)V
    .registers 7
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J

    .line 394
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 395
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 396
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    .line 397
    return-void
.end method

.method public greylist-max-o sub(J)V
    .registers 5
    .param p1, "value"    # J

    .line 141
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 142
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 143
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 144
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Long3;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    .line 114
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 115
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 116
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 117
    return-void
.end method
