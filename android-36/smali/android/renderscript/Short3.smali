.class public Landroid/renderscript/Short3;
.super Ljava/lang/Object;
.source "Short3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:S

.field public whitelist y:S

.field public whitelist z:S


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Short3;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Short3;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 50
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 51
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(S)V
    .registers 2
    .param p1, "i"    # S

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(SSS)V
    .registers 4
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 43
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 44
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    .line 45
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .line 73
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 74
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 75
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 76
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 78
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .line 100
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 101
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 102
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 103
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 105
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .line 235
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 236
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 237
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 238
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 240
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .line 262
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 263
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 264
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 265
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 267
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)S
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .line 360
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    iget-short v2, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    iget-short v2, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .line 289
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 290
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 291
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 292
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 294
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .line 316
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 317
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 318
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 319
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 321
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .line 181
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 182
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 183
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 184
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 186
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .line 208
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 209
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 210
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 211
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 213
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .line 127
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 128
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 129
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 130
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 132
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .line 154
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 155
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 156
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 157
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 159
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(Landroid/renderscript/Short3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 60
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 61
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 62
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 63
    return-void
.end method

.method public greylist-max-o add(S)V
    .registers 3
    .param p1, "value"    # S

    .line 87
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 88
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 89
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 90
    return-void
.end method

.method public greylist-max-o addAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .line 456
    packed-switch p1, :pswitch_data_20

    .line 467
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_b
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 465
    return-void

    .line 461
    :pswitch_12
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 462
    return-void

    .line 458
    :pswitch_19
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 459
    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Short3;S)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short3;
    .param p2, "factor"    # S

    .line 370
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 371
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 372
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 373
    return-void
.end method

.method public greylist-max-o copyTo([SI)V
    .registers 5
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    .line 478
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    aput-short v0, p1, p2

    .line 479
    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    aput-short v1, p1, v0

    .line 480
    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    aput-short v1, p1, v0

    .line 481
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Short3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 222
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 223
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 224
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 225
    return-void
.end method

.method public greylist-max-o div(S)V
    .registers 3
    .param p1, "value"    # S

    .line 249
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 250
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 251
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 252
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Short3;)S
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 349
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()S
    .registers 3

    .line 405
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o get(I)S
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
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    return v0

    .line 419
    :pswitch_e
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    return v0

    .line 417
    :pswitch_11
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()S
    .registers 2

    .line 330
    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o mod(Landroid/renderscript/Short3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 276
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 277
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 278
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 279
    return-void
.end method

.method public greylist-max-o mod(S)V
    .registers 3
    .param p1, "value"    # S

    .line 303
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 304
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 305
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 306
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Short3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 168
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 169
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 170
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 171
    return-void
.end method

.method public greylist-max-o mul(S)V
    .registers 3
    .param p1, "value"    # S

    .line 195
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 196
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 197
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 198
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 337
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 338
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 339
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 340
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Short3;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 381
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 382
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 383
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 384
    return-void
.end method

.method public greylist-max-o setAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .line 434
    packed-switch p1, :pswitch_data_14

    .line 445
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_b
    iput-short p2, p0, Landroid/renderscript/Short3;->z:S

    .line 443
    return-void

    .line 439
    :pswitch_e
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 440
    return-void

    .line 436
    :pswitch_11
    iput-short p2, p0, Landroid/renderscript/Short3;->x:S

    .line 437
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(SSS)V
    .registers 4
    .param p1, "a"    # S
    .param p2, "b"    # S
    .param p3, "c"    # S

    .line 394
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 395
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 396
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    .line 397
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Short3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short3;

    .line 114
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 115
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 116
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 117
    return-void
.end method

.method public greylist-max-o sub(S)V
    .registers 3
    .param p1, "value"    # S

    .line 141
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 142
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 143
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 144
    return-void
.end method
