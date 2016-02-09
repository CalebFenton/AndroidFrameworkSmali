.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "Double2.java"


# instance fields
.field public x:D

.field public y:D


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

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    #@5
    .line 38
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double2;)V
    .locals 2
    .param p1, "data"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@7
    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    #@9
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@b
    .line 31
    return-void
.end method

.method public static add(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 85
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    add-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@a
    .line 86
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@c
    add-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@f
    .line 88
    return-object v0
.end method

.method public static add(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 50
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    #@9
    add-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@c
    .line 51
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    #@10
    add-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@13
    .line 53
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 235
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    div-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@a
    .line 236
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@c
    div-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@f
    .line 238
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 209
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 210
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    #@9
    div-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@c
    .line 211
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    #@10
    div-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@13
    .line 213
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 259
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    #@7
    iget-wide v4, p0, Landroid/renderscript/Double2;->y:D

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 184
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 185
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    mul-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@a
    .line 186
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@c
    mul-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@f
    .line 188
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 160
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    #@9
    mul-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@c
    .line 161
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    #@10
    mul-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@13
    .line 163
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 134
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 135
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    sub-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@a
    .line 136
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@c
    sub-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@f
    .line 138
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double2;
    .param p1, "b"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 110
    .local v0, "res":Landroid/renderscript/Double2;
    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double2;->x:D

    #@9
    sub-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@c
    .line 111
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    #@10
    sub-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@13
    .line 113
    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 72
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    add-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@5
    .line 73
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@7
    add-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@a
    .line 71
    return-void
.end method

.method public add(Landroid/renderscript/Double2;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    #@4
    add-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@7
    .line 63
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    #@b
    add-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@e
    .line 61
    return-void
.end method

.method public addAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    #@3
    .line 360
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 354
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@e
    add-double/2addr v0, p2

    #@f
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@11
    .line 355
    return-void

    #@12
    .line 357
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@14
    add-double/2addr v0, p2

    #@15
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@17
    .line 358
    return-void

    #@18
    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double2;D)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Double2;
    .param p2, "factor"    # D

    #@0
    .prologue
    .line 269
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    #@4
    mul-double/2addr v2, p2

    #@5
    add-double/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@8
    .line 270
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@a
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    #@c
    mul-double/2addr v2, p2

    #@d
    add-double/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@10
    .line 268
    return-void
.end method

.method public copyTo([DI)V
    .locals 4
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 382
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    aput-wide v0, p1, p2

    #@4
    .line 383
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@8
    aput-wide v2, p1, v0

    #@a
    .line 381
    return-void
.end method

.method public div(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 222
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    div-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@5
    .line 223
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@7
    div-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@a
    .line 221
    return-void
.end method

.method public div(Landroid/renderscript/Double2;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 197
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    #@4
    div-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@7
    .line 198
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    #@b
    div-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@e
    .line 196
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double2;)D
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 248
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double2;->y:D

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    #@0
    .prologue
    .line 306
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    #@4
    add-double/2addr v0, v2

    #@5
    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    #@3
    .line 322
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 318
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@e
    return-wide v0

    #@f
    .line 320
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@11
    return-wide v0

    #@12
    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 297
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public mul(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 172
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    mul-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@5
    .line 173
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@7
    mul-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@a
    .line 171
    return-void
.end method

.method public mul(Landroid/renderscript/Double2;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 147
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@7
    .line 148
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    #@b
    mul-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@e
    .line 146
    return-void
.end method

.method public negate()V
    .locals 2

    #@0
    .prologue
    .line 287
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    neg-double v0, v0

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@5
    .line 288
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@7
    neg-double v0, v0

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@a
    .line 286
    return-void
.end method

.method public set(Landroid/renderscript/Double2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 279
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    #@2
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@4
    .line 280
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    #@6
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@8
    .line 278
    return-void
.end method

.method public setAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    #@3
    .line 341
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 335
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double2;->x:D

    #@e
    .line 336
    return-void

    #@f
    .line 338
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double2;->y:D

    #@11
    .line 339
    return-void

    #@12
    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    #@0
    .prologue
    .line 371
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    #@2
    .line 372
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    #@4
    .line 370
    return-void
.end method

.method public sub(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 122
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    sub-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@5
    .line 123
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@7
    sub-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@a
    .line 121
    return-void
.end method

.method public sub(Landroid/renderscript/Double2;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 97
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    #@4
    sub-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    #@7
    .line 98
    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    #@b
    sub-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    #@e
    .line 96
    return-void
.end method
