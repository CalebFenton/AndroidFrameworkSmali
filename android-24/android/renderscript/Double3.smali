.class public Landroid/renderscript/Double3;
.super Ljava/lang/Object;
.source "Double3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    #@5
    .line 39
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    #@7
    .line 40
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    #@9
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double3;)V
    .locals 2
    .param p1, "data"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@7
    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    #@9
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@b
    .line 34
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@f
    .line 31
    return-void
.end method

.method public static add(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 90
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    add-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@a
    .line 91
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@c
    add-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@f
    .line 92
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@11
    add-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@14
    .line 94
    return-object v0
.end method

.method public static add(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 52
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    #@9
    add-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@c
    .line 53
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    #@10
    add-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@13
    .line 54
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    #@17
    add-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@1a
    .line 56
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 251
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 252
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    div-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@a
    .line 253
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@c
    div-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@f
    .line 254
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@11
    div-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@14
    .line 256
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 224
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 225
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    #@9
    div-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@c
    .line 226
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    #@10
    div-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@13
    .line 227
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    #@17
    div-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@1a
    .line 229
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)D
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 277
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    #@7
    iget-wide v4, p0, Landroid/renderscript/Double3;->y:D

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    #@d
    iget-wide v4, p0, Landroid/renderscript/Double3;->z:D

    #@f
    mul-double/2addr v2, v4

    #@10
    add-double/2addr v0, v2

    #@11
    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 197
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 198
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    mul-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@a
    .line 199
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@c
    mul-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@f
    .line 200
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@11
    mul-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@14
    .line 202
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 170
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 171
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    #@9
    mul-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@c
    .line 172
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    #@10
    mul-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@13
    .line 173
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    #@17
    mul-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@1a
    .line 175
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 143
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 144
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    sub-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@a
    .line 145
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@c
    sub-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@f
    .line 146
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@11
    sub-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@14
    .line 148
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 117
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    #@9
    sub-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@c
    .line 118
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    #@10
    sub-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@13
    .line 119
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    #@17
    sub-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@1a
    .line 121
    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 76
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    add-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@5
    .line 77
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@7
    add-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@a
    .line 78
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@c
    add-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@f
    .line 75
    return-void
.end method

.method public add(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 65
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    #@4
    add-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@7
    .line 66
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    #@b
    add-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@e
    .line 67
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    #@12
    add-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@15
    .line 64
    return-void
.end method

.method public addAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 378
    packed-switch p1, :pswitch_data_0

    #@3
    .line 389
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 380
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@e
    add-double/2addr v0, p2

    #@f
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@11
    .line 381
    return-void

    #@12
    .line 383
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@14
    add-double/2addr v0, p2

    #@15
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@17
    .line 384
    return-void

    #@18
    .line 386
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@1a
    add-double/2addr v0, p2

    #@1b
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@1d
    .line 387
    return-void

    #@1e
    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double3;D)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Double3;
    .param p2, "factor"    # D

    #@0
    .prologue
    .line 287
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    #@4
    mul-double/2addr v2, p2

    #@5
    add-double/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@8
    .line 288
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@a
    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    #@c
    mul-double/2addr v2, p2

    #@d
    add-double/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@10
    .line 289
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@12
    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    #@14
    mul-double/2addr v2, p2

    #@15
    add-double/2addr v0, v2

    #@16
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@18
    .line 286
    return-void
.end method

.method public copyTo([DI)V
    .locals 4
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 413
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    aput-wide v0, p1, p2

    #@4
    .line 414
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@8
    aput-wide v2, p1, v0

    #@a
    .line 415
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@e
    aput-wide v2, p1, v0

    #@10
    .line 412
    return-void
.end method

.method public div(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 238
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    div-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@5
    .line 239
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@7
    div-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@a
    .line 240
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@c
    div-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@f
    .line 237
    return-void
.end method

.method public div(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 211
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    #@4
    div-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@7
    .line 212
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    #@b
    div-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@e
    .line 213
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    #@12
    div-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@15
    .line 210
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double3;)D
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 266
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@d
    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    #@f
    mul-double/2addr v2, v4

    #@10
    add-double/2addr v0, v2

    #@11
    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    #@0
    .prologue
    .line 327
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    #@4
    add-double/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    #@7
    add-double/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 337
    packed-switch p1, :pswitch_data_0

    #@3
    .line 345
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 339
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@e
    return-wide v0

    #@f
    .line 341
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@11
    return-wide v0

    #@12
    .line 343
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@14
    return-wide v0

    #@15
    .line 337
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 318
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public mul(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 184
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    mul-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@5
    .line 185
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@7
    mul-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@a
    .line 186
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@c
    mul-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@f
    .line 183
    return-void
.end method

.method public mul(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 157
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@7
    .line 158
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    #@b
    mul-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@e
    .line 159
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    #@12
    mul-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@15
    .line 156
    return-void
.end method

.method public negate()V
    .locals 2

    #@0
    .prologue
    .line 307
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    neg-double v0, v0

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@5
    .line 308
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@7
    neg-double v0, v0

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@a
    .line 309
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@c
    neg-double v0, v0

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@f
    .line 306
    return-void
.end method

.method public set(Landroid/renderscript/Double3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 298
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    #@2
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@4
    .line 299
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    #@6
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@8
    .line 300
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    #@a
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@c
    .line 297
    return-void
.end method

.method public setAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    #@3
    .line 367
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 358
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double3;->x:D

    #@e
    .line 359
    return-void

    #@f
    .line 361
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double3;->y:D

    #@11
    .line 362
    return-void

    #@12
    .line 364
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double3;->z:D

    #@14
    .line 365
    return-void

    #@15
    .line 356
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    #@0
    .prologue
    .line 401
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    #@2
    .line 402
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    #@4
    .line 403
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    #@6
    .line 400
    return-void
.end method

.method public sub(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 130
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    sub-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@5
    .line 131
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@7
    sub-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@a
    .line 132
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@c
    sub-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@f
    .line 129
    return-void
.end method

.method public sub(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 103
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    #@4
    sub-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    #@7
    .line 104
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    #@b
    sub-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    #@e
    .line 105
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    #@12
    sub-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    #@15
    .line 102
    return-void
.end method
