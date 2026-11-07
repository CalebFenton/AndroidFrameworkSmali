.class public Landroid/renderscript/Short4;
.super Ljava/lang/Object;
.source "Short4.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist w:S

.field public whitelist x:S

.field public whitelist y:S

.field public whitelist z:S


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Short4;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 52
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 53
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 54
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 55
    return-void
.end method

.method public constructor greylist-max-o <init>(S)V
    .registers 2
    .param p1, "i"    # S

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    iput-short p1, p0, Landroid/renderscript/Short4;->z:S

    iput-short p1, p0, Landroid/renderscript/Short4;->y:S

    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(SSSS)V
    .registers 5
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "w"    # S

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 44
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 45
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    .line 46
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    .line 47
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .line 77
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 78
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 79
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 80
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 81
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 83
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .line 106
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 107
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 108
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 109
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 110
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 112
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .line 251
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 252
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 253
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 254
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 255
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 257
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .line 280
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 281
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 282
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 283
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 284
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 286
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)S
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .line 384
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    iget-short v2, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    iget-short v2, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    iget-short v2, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .line 309
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 310
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 311
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 312
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 313
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 315
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .line 338
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 339
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 340
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 341
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 342
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 344
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .line 193
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 194
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 195
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 196
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 197
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 199
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .line 222
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 223
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 224
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 225
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 226
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 228
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .line 135
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 136
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 137
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 138
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 139
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 141
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .line 164
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 165
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 166
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 167
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 168
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 170
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 63
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 64
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 65
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 66
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 67
    return-void
.end method

.method public greylist-max-o add(S)V
    .registers 3
    .param p1, "value"    # S

    .line 92
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 93
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 94
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 95
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 96
    return-void
.end method

.method public greylist-max-o addAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .line 489
    packed-switch p1, :pswitch_data_28

    .line 503
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :pswitch_b
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 501
    return-void

    .line 497
    :pswitch_12
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 498
    return-void

    .line 494
    :pswitch_19
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 495
    return-void

    .line 491
    :pswitch_20
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 492
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Short4;S)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short4;
    .param p2, "factor"    # S

    .line 394
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 395
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 396
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 397
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 398
    return-void
.end method

.method public greylist-max-o copyTo([SI)V
    .registers 5
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    .line 514
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    aput-short v0, p1, p2

    .line 515
    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    aput-short v1, p1, v0

    .line 516
    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    aput-short v1, p1, v0

    .line 517
    add-int/lit8 v0, p2, 0x3

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    aput-short v1, p1, v0

    .line 518
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 237
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 238
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 239
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 240
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 241
    return-void
.end method

.method public greylist-max-o div(S)V
    .registers 3
    .param p1, "value"    # S

    .line 266
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 267
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 268
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 269
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 270
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Short4;)S
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 373
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o elementSum()S
    .registers 3

    .line 433
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public greylist-max-o get(I)S
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
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    return v0

    .line 449
    :pswitch_e
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    return v0

    .line 447
    :pswitch_11
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    return v0

    .line 445
    :pswitch_14
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()S
    .registers 2

    .line 353
    const/4 v0, 0x4

    return v0
.end method

.method public greylist-max-o mod(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 295
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 296
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 297
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 298
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 299
    return-void
.end method

.method public greylist-max-o mod(S)V
    .registers 3
    .param p1, "value"    # S

    .line 324
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 325
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 326
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 327
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 328
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 179
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 180
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 181
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 182
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 183
    return-void
.end method

.method public greylist-max-o mul(S)V
    .registers 3
    .param p1, "value"    # S

    .line 208
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 209
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 210
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 211
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 212
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 360
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 361
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 362
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 363
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 364
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 406
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 407
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 408
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 409
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 410
    return-void
.end method

.method public greylist-max-o setAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .line 464
    packed-switch p1, :pswitch_data_18

    .line 478
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :pswitch_b
    iput-short p2, p0, Landroid/renderscript/Short4;->w:S

    .line 476
    return-void

    .line 472
    :pswitch_e
    iput-short p2, p0, Landroid/renderscript/Short4;->z:S

    .line 473
    return-void

    .line 469
    :pswitch_11
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 470
    return-void

    .line 466
    :pswitch_14
    iput-short p2, p0, Landroid/renderscript/Short4;->x:S

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

.method public greylist-max-o setValues(SSSS)V
    .registers 5
    .param p1, "a"    # S
    .param p2, "b"    # S
    .param p3, "c"    # S
    .param p4, "d"    # S

    .line 421
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    .line 422
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    .line 423
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    .line 424
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    .line 425
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .line 121
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 122
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 123
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 124
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 125
    return-void
.end method

.method public greylist-max-o sub(S)V
    .registers 3
    .param p1, "value"    # S

    .line 150
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    .line 151
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    .line 152
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    .line 153
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    .line 154
    return-void
.end method
