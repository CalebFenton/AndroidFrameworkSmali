.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "Long4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:J

.field public whitelist x:J

.field public whitelist y:J

.field public whitelist z:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "i"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Landroid/renderscript/Long4;->w:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(JJJJ)V
    .registers 9
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J
    .param p7, "w"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 44
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    .line 45
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    .line 46
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "source"    # Landroid/renderscript/Long4;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 52
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 53
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 54
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 55
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .line 106
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 107
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 108
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 109
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 110
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 112
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .line 77
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 78
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 79
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 80
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 81
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 83
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .line 280
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 281
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 282
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 283
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 284
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 286
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .line 251
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 252
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 253
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 254
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 255
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 257
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)J
    .registers 8
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .line 384
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .line 338
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 339
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 340
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 341
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 342
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 344
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .line 309
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 310
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 311
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 312
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 313
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 315
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .line 222
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 223
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 224
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 225
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 226
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 228
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .line 193
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 194
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 195
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 196
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 197
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 199
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .registers 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .line 164
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 165
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 166
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 167
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 168
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 170
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .registers 7
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .line 135
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 136
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v1, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 137
    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 138
    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 139
    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v3, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 141
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(J)V
    .registers 5
    .param p1, "value"    # J

    .line 92
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 93
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 94
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 95
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 96
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Long4;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 63
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 64
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 65
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 66
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 67
    return-void
.end method

.method public greylist-max-o addAt(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 489
    packed-switch p1, :pswitch_data_24

    .line 503
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_b
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 501
    return-void

    .line 497
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 498
    return-void

    .line 494
    :pswitch_17
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 495
    return-void

    .line 491
    :pswitch_1d
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

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

.method public greylist-max-o addMultiple(Landroid/renderscript/Long4;J)V
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Long4;
    .param p2, "factor"    # J

    .line 394
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 395
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 396
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 397
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 398
    return-void
.end method

.method public greylist-max-o copyTo([JI)V
    .registers 6
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    .line 514
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    aput-wide v0, p1, p2

    .line 515
    add-int/lit8 v0, p2, 0x1

    iget-wide v1, p0, Landroid/renderscript/Long4;->y:J

    aput-wide v1, p1, v0

    .line 516
    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Landroid/renderscript/Long4;->z:J

    aput-wide v1, p1, v0

    .line 517
    add-int/lit8 v0, p2, 0x3

    iget-wide v1, p0, Landroid/renderscript/Long4;->w:J

    aput-wide v1, p1, v0

    .line 518
    return-void
.end method

.method public greylist-max-o div(J)V
    .registers 5
    .param p1, "value"    # J

    .line 266
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 267
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 268
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 269
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 270
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Long4;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 237
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 238
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 239
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 240
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 241
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Long4;)J
    .registers 8
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 373
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()J
    .registers 5

    .line 433
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-wide v0

    .line 449
    :pswitch_e
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    return-wide v0

    .line 447
    :pswitch_11
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    return-wide v0

    .line 445
    :pswitch_14
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

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

.method public greylist-max-o length()J
    .registers 3

    .line 353
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public greylist-max-o mod(J)V
    .registers 5
    .param p1, "value"    # J

    .line 324
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 325
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 326
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 327
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 328
    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Long4;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 295
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 296
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 297
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 298
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 299
    return-void
.end method

.method public greylist-max-o mul(J)V
    .registers 5
    .param p1, "value"    # J

    .line 208
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 209
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 210
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 211
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 212
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Long4;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 179
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 180
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 181
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 182
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 183
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 3

    .line 360
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 361
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 362
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 363
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 364
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 406
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 407
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 408
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 409
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 410
    return-void
.end method

.method public greylist-max-o setAt(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 464
    packed-switch p1, :pswitch_data_18

    .line 478
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :pswitch_b
    iput-wide p2, p0, Landroid/renderscript/Long4;->w:J

    .line 476
    return-void

    .line 472
    :pswitch_e
    iput-wide p2, p0, Landroid/renderscript/Long4;->z:J

    .line 473
    return-void

    .line 469
    :pswitch_11
    iput-wide p2, p0, Landroid/renderscript/Long4;->y:J

    .line 470
    return-void

    .line 466
    :pswitch_14
    iput-wide p2, p0, Landroid/renderscript/Long4;->x:J

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

.method public greylist-max-o setValues(JJJJ)V
    .registers 9
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J

    .line 421
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 422
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    .line 423
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    .line 424
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    .line 425
    return-void
.end method

.method public greylist-max-o sub(J)V
    .registers 5
    .param p1, "value"    # J

    .line 150
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 151
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 152
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 153
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 154
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Long4;)V
    .registers 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    .line 121
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 122
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 123
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 124
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 125
    return-void
.end method
