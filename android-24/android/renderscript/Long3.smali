.class public Landroid/renderscript/Long3;
.super Ljava/lang/Object;
.source "Long3.java"


# instance fields
.field public x:J

.field public y:J

.field public z:J


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

.method public constructor <init>(J)V
    .locals 1
    .param p1, "i"    # J

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-wide p1, p0, Landroid/renderscript/Long3;->z:J

    #@5
    iput-wide p1, p0, Landroid/renderscript/Long3;->y:J

    #@7
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 38
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    #@7
    .line 39
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    #@9
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "source"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@7
    .line 45
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    #@9
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@b
    .line 46
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 43
    return-void
.end method

.method public static add(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 96
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    add-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@a
    .line 97
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@c
    add-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@f
    .line 98
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@11
    add-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@14
    .line 100
    return-object v0
.end method

.method public static add(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 69
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    #@9
    add-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@c
    .line 70
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    #@10
    add-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@13
    .line 71
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    #@17
    add-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@1a
    .line 73
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 258
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    div-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@a
    .line 259
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@c
    div-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@f
    .line 260
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@11
    div-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@14
    .line 262
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 231
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    #@9
    div-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@c
    .line 232
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    #@10
    div-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@13
    .line 233
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    #@17
    div-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@1a
    .line 235
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)J
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 355
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@7
    iget-wide v4, p0, Landroid/renderscript/Long3;->y:J

    #@9
    mul-long/2addr v2, v4

    #@a
    add-long/2addr v0, v2

    #@b
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@d
    iget-wide v4, p0, Landroid/renderscript/Long3;->z:J

    #@f
    mul-long/2addr v2, v4

    #@10
    add-long/2addr v0, v2

    #@11
    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 312
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    rem-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@a
    .line 313
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@c
    rem-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@f
    .line 314
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@11
    rem-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@14
    .line 316
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 285
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    #@9
    rem-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@c
    .line 286
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    #@10
    rem-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@13
    .line 287
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    #@17
    rem-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@1a
    .line 289
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 203
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 204
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    mul-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@a
    .line 205
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@c
    mul-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@f
    .line 206
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@11
    mul-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@14
    .line 208
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 177
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    #@9
    mul-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@c
    .line 178
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    #@10
    mul-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@13
    .line 179
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    #@17
    mul-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@1a
    .line 181
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 149
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 150
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    sub-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@a
    .line 151
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@c
    sub-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@f
    .line 152
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@11
    sub-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@14
    .line 154
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 123
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    #@9
    sub-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@c
    .line 124
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    #@10
    sub-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@13
    .line 125
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    #@17
    sub-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@1a
    .line 127
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 82
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 83
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@7
    add-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    .line 84
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    add-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 81
    return-void
.end method

.method public add(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@7
    .line 56
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@e
    .line 57
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@12
    add-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@15
    .line 54
    return-void
.end method

.method public addAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 451
    packed-switch p1, :pswitch_data_0

    #@3
    .line 462
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 453
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@e
    add-long/2addr v0, p2

    #@f
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@11
    .line 454
    return-void

    #@12
    .line 456
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@14
    add-long/2addr v0, p2

    #@15
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@17
    .line 457
    return-void

    #@18
    .line 459
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@1a
    add-long/2addr v0, p2

    #@1b
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@1d
    .line 460
    return-void

    #@1e
    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Long3;J)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;
    .param p2, "factor"    # J

    #@0
    .prologue
    .line 365
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    mul-long/2addr v2, p2

    #@5
    add-long/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@8
    .line 366
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@c
    mul-long/2addr v2, p2

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@10
    .line 367
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@12
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@14
    mul-long/2addr v2, p2

    #@15
    add-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@18
    .line 364
    return-void
.end method

.method public copyTo([JI)V
    .locals 4
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 473
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    aput-wide v0, p1, p2

    #@4
    .line 474
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@8
    aput-wide v2, p1, v0

    #@a
    .line 475
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@e
    aput-wide v2, p1, v0

    #@10
    .line 472
    return-void
.end method

.method public div(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 244
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    div-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 245
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@7
    div-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    .line 246
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    div-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 243
    return-void
.end method

.method public div(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 217
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    div-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@7
    .line 218
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@b
    div-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@e
    .line 219
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@12
    div-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@15
    .line 216
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long3;)J
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 344
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    #@9
    mul-long/2addr v2, v4

    #@a
    add-long/2addr v0, v2

    #@b
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@d
    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    #@f
    mul-long/2addr v2, v4

    #@10
    add-long/2addr v0, v2

    #@11
    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    #@0
    .prologue
    .line 400
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    #@4
    add-long/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    #@7
    add-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    #@3
    .line 418
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 412
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@e
    return-wide v0

    #@f
    .line 414
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@11
    return-wide v0

    #@12
    .line 416
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@14
    return-wide v0

    #@15
    .line 410
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()J
    .locals 2

    #@0
    .prologue
    .line 325
    const-wide/16 v0, 0x3

    #@2
    return-wide v0
.end method

.method public mod(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 298
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    rem-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 299
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@7
    rem-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    .line 300
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    rem-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 297
    return-void
.end method

.method public mod(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 271
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    rem-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@7
    .line 272
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@b
    rem-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@e
    .line 273
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@12
    rem-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@15
    .line 270
    return-void
.end method

.method public mul(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 190
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    mul-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 191
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@7
    mul-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    .line 192
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    mul-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 189
    return-void
.end method

.method public mul(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 163
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@7
    .line 164
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@b
    mul-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@e
    .line 165
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@12
    mul-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@15
    .line 162
    return-void
.end method

.method public negate()V
    .locals 2

    #@0
    .prologue
    .line 332
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    neg-long v0, v0

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 333
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@7
    neg-long v0, v0

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    .line 334
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    neg-long v0, v0

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 331
    return-void
.end method

.method public set(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 376
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    #@2
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@4
    .line 377
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    #@6
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@8
    .line 378
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    #@a
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    .line 375
    return-void
.end method

.method public setAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 429
    packed-switch p1, :pswitch_data_0

    #@3
    .line 440
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 431
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Long3;->x:J

    #@e
    .line 432
    return-void

    #@f
    .line 434
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long3;->y:J

    #@11
    .line 435
    return-void

    #@12
    .line 437
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Long3;->z:J

    #@14
    .line 438
    return-void

    #@15
    .line 429
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(JJJ)V
    .locals 1
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J

    #@0
    .prologue
    .line 389
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    #@2
    .line 390
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    #@4
    .line 391
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    #@6
    .line 388
    return-void
.end method

.method public sub(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 136
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    sub-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@5
    .line 137
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@7
    sub-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@a
    .line 138
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@c
    sub-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@f
    .line 135
    return-void
.end method

.method public sub(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 109
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    #@4
    sub-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    #@7
    .line 110
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    #@b
    sub-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    #@e
    .line 111
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    #@12
    sub-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    #@15
    .line 108
    return-void
.end method
