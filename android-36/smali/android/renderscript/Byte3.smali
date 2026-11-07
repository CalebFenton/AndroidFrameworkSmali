.class public Landroid/renderscript/Byte3;
.super Ljava/lang/Object;
.source "Byte3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:B

.field public whitelist y:B

.field public whitelist z:B


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor whitelist <init>(BBB)V
    .registers 4
    .param p1, "initX"    # B
    .param p2, "initY"    # B
    .param p3, "initZ"    # B

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 38
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 39
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    .line 40
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Byte3;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Byte3;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 45
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 46
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 47
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .line 95
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 96
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 97
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 98
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 100
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .line 68
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 69
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 70
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 71
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 73
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .line 257
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 258
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 259
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 260
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 262
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .line 230
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 231
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 232
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 233
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 235
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)B
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .line 301
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .line 203
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 204
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 205
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 206
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 208
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .line 176
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 177
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 178
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 179
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 181
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .line 149
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 150
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 151
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 152
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 154
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .line 122
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 123
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 124
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 125
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 127
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(B)V
    .registers 3
    .param p1, "value"    # B

    .line 82
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 83
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 84
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 85
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Byte3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .line 55
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 56
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 57
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 58
    return-void
.end method

.method public greylist-max-o addAt(IB)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # B

    .line 397
    packed-switch p1, :pswitch_data_20

    .line 408
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :pswitch_b
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 406
    return-void

    .line 402
    :pswitch_12
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 403
    return-void

    .line 399
    :pswitch_19
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 400
    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Byte3;B)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Byte3;
    .param p2, "factor"    # B

    .line 311
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 312
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 313
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 314
    return-void
.end method

.method public greylist-max-o copyTo([BI)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 419
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    aput-byte v0, p1, p2

    .line 420
    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    aput-byte v1, p1, v0

    .line 421
    add-int/lit8 v0, p2, 0x2

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    aput-byte v1, p1, v0

    .line 422
    return-void
.end method

.method public greylist-max-o div(B)V
    .registers 3
    .param p1, "value"    # B

    .line 244
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 245
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 246
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 247
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Byte3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .line 217
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 218
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 219
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 220
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Byte3;)B
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .line 290
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()B
    .registers 3

    .line 346
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public greylist-max-o get(I)B
    .registers 4
    .param p1, "i"    # I

    .line 356
    packed-switch p1, :pswitch_data_14

    .line 364
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :pswitch_b
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    return v0

    .line 360
    :pswitch_e
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    return v0

    .line 358
    :pswitch_11
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()B
    .registers 2

    .line 271
    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o mul(B)V
    .registers 3
    .param p1, "value"    # B

    .line 190
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 191
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 192
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 193
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Byte3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .line 163
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 164
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 165
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 166
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 278
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 279
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 280
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 281
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Byte3;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .line 322
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 323
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 324
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 325
    return-void
.end method

.method public greylist-max-o setAt(IB)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # B

    .line 375
    packed-switch p1, :pswitch_data_14

    .line 386
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :pswitch_b
    iput-byte p2, p0, Landroid/renderscript/Byte3;->z:B

    .line 384
    return-void

    .line 380
    :pswitch_e
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 381
    return-void

    .line 377
    :pswitch_11
    iput-byte p2, p0, Landroid/renderscript/Byte3;->x:B

    .line 378
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(BBB)V
    .registers 4
    .param p1, "a"    # B
    .param p2, "b"    # B
    .param p3, "c"    # B

    .line 335
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 336
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 337
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    .line 338
    return-void
.end method

.method public greylist-max-o sub(B)V
    .registers 3
    .param p1, "value"    # B

    .line 136
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 137
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 138
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 139
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Byte3;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .line 109
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 110
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 111
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 112
    return-void
.end method
