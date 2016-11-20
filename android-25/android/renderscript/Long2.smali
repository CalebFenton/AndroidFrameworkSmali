.class public Landroid/renderscript/Long2;
.super Ljava/lang/Object;
.source "Long2.java"


# instance fields
.field public x:J

.field public y:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "i"    # J

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-wide p1, p0, Landroid/renderscript/Long2;->y:J

    #@5
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 37
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "source"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 43
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    #@9
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@b
    .line 41
    return-void
.end method

.method public static add(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 90
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    add-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@a
    .line 91
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@c
    add-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@f
    .line 93
    return-object v0
.end method

.method public static add(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 65
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    #@9
    add-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@c
    .line 66
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    #@10
    add-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@13
    .line 68
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 239
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 240
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    div-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@a
    .line 241
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@c
    div-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@f
    .line 243
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 214
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 215
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    #@9
    div-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@c
    .line 216
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    #@10
    div-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@13
    .line 218
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)J
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 331
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@7
    iget-wide v4, p0, Landroid/renderscript/Long2;->y:J

    #@9
    mul-long/2addr v2, v4

    #@a
    add-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 290
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    rem-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@a
    .line 291
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@c
    rem-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@f
    .line 293
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 264
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 265
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    #@9
    rem-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@c
    .line 266
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    #@10
    rem-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@13
    .line 268
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 189
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 190
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    mul-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@a
    .line 191
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@c
    mul-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@f
    .line 193
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 164
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 165
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    #@9
    mul-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@c
    .line 166
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    #@10
    mul-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@13
    .line 168
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 140
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    sub-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@a
    .line 141
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@c
    sub-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@f
    .line 143
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 115
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    #@9
    sub-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@c
    .line 116
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    #@10
    sub-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@13
    .line 118
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 77
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 78
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@7
    add-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    .line 76
    return-void
.end method

.method public add(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 52
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 53
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@e
    .line 51
    return-void
.end method

.method public addAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    #@3
    .line 426
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 420
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@e
    add-long/2addr v0, p2

    #@f
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@11
    .line 421
    return-void

    #@12
    .line 423
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@14
    add-long/2addr v0, p2

    #@15
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@17
    .line 424
    return-void

    #@18
    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Long2;J)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;
    .param p2, "factor"    # J

    #@0
    .prologue
    .line 341
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    mul-long/2addr v2, p2

    #@5
    add-long/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@8
    .line 342
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@c
    mul-long/2addr v2, p2

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@10
    .line 340
    return-void
.end method

.method public copyTo([JI)V
    .locals 4
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 437
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    aput-wide v0, p1, p2

    #@4
    .line 438
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@8
    aput-wide v2, p1, v0

    #@a
    .line 436
    return-void
.end method

.method public div(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 227
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    div-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 228
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@7
    div-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    .line 226
    return-void
.end method

.method public div(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 202
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    div-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 203
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@b
    div-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@e
    .line 201
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long2;)J
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 320
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    #@9
    mul-long/2addr v2, v4

    #@a
    add-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    #@0
    .prologue
    .line 372
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    #@4
    add-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    #@3
    .line 388
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 384
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@e
    return-wide v0

    #@f
    .line 386
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@11
    return-wide v0

    #@12
    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()J
    .locals 2

    #@0
    .prologue
    .line 302
    const-wide/16 v0, 0x2

    #@2
    return-wide v0
.end method

.method public mod(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 277
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    rem-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 278
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@7
    rem-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    .line 276
    return-void
.end method

.method public mod(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 252
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    rem-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 253
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@b
    rem-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@e
    .line 251
    return-void
.end method

.method public mul(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 177
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    mul-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 178
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@7
    mul-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    .line 176
    return-void
.end method

.method public mul(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 152
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 153
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@b
    mul-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@e
    .line 151
    return-void
.end method

.method public negate()V
    .locals 2

    #@0
    .prologue
    .line 309
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    neg-long v0, v0

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 310
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@7
    neg-long v0, v0

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    .line 308
    return-void
.end method

.method public set(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 351
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    #@2
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@4
    .line 352
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    #@6
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@8
    .line 350
    return-void
.end method

.method public setAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    #@3
    .line 407
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 401
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Long2;->x:J

    #@e
    .line 402
    return-void

    #@f
    .line 404
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long2;->y:J

    #@11
    .line 405
    return-void

    #@12
    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(JJ)V
    .locals 1
    .param p1, "a"    # J
    .param p3, "b"    # J

    #@0
    .prologue
    .line 362
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    #@2
    .line 363
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    #@4
    .line 361
    return-void
.end method

.method public sub(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 127
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    sub-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@5
    .line 128
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@7
    sub-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@a
    .line 126
    return-void
.end method

.method public sub(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 102
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    #@4
    sub-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    #@7
    .line 103
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    #@b
    sub-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    #@e
    .line 101
    return-void
.end method
