.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    #@5
    .line 41
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    #@7
    .line 42
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    #@9
    .line 43
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double4;)V
    .locals 2
    .param p1, "data"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@7
    .line 34
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    #@9
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@b
    .line 35
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@f
    .line 36
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    #@11
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@13
    .line 32
    return-void
.end method

.method public static add(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 96
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    add-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@a
    .line 97
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@c
    add-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@f
    .line 98
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@11
    add-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@14
    .line 99
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@16
    add-double/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@19
    .line 101
    return-object v0
.end method

.method public static add(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 54
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 55
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    #@9
    add-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@c
    .line 56
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    #@10
    add-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@13
    .line 57
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    #@17
    add-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@1a
    .line 58
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    #@1e
    add-double/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@21
    .line 60
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 252
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 253
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    div-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@a
    .line 254
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@c
    div-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@f
    .line 255
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@11
    div-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@14
    .line 256
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@16
    div-double/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@19
    .line 258
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 269
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 270
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    #@9
    div-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@c
    .line 271
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    #@10
    div-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@13
    .line 272
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    #@17
    div-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@1a
    .line 273
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    #@1e
    div-double/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@21
    .line 275
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)D
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 296
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    #@7
    iget-wide v4, p0, Landroid/renderscript/Double4;->y:D

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    #@d
    iget-wide v4, p0, Landroid/renderscript/Double4;->z:D

    #@f
    mul-double/2addr v2, v4

    #@10
    add-double/2addr v0, v2

    #@11
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    #@13
    iget-wide v4, p0, Landroid/renderscript/Double4;->w:D

    #@15
    mul-double/2addr v2, v4

    #@16
    add-double/2addr v0, v2

    #@17
    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 211
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 212
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    mul-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@a
    .line 213
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@c
    mul-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@f
    .line 214
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@11
    mul-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@14
    .line 215
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@16
    mul-double/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@19
    .line 217
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 195
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    #@9
    mul-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@c
    .line 196
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    #@10
    mul-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@13
    .line 197
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    #@17
    mul-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@1a
    .line 198
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    #@1e
    mul-double/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@21
    .line 200
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;D)Landroid/renderscript/Double4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # D

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 137
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    sub-double/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@a
    .line 138
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@c
    sub-double/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@f
    .line 139
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@11
    sub-double/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@14
    .line 140
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@16
    sub-double/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@19
    .line 142
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double4;Landroid/renderscript/Double4;)Landroid/renderscript/Double4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double4;
    .param p1, "b"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 153
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 154
    .local v0, "res":Landroid/renderscript/Double4;
    iget-wide v2, p0, Landroid/renderscript/Double4;->x:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double4;->x:D

    #@9
    sub-double/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@c
    .line 155
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@e
    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    #@10
    sub-double/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@13
    .line 156
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@15
    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    #@17
    sub-double/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@1a
    .line 157
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    #@1e
    sub-double/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@21
    .line 159
    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 81
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    add-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@5
    .line 82
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@7
    add-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@a
    .line 83
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@c
    add-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@f
    .line 84
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@11
    add-double/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@14
    .line 80
    return-void
.end method

.method public add(Landroid/renderscript/Double4;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 69
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    #@4
    add-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@7
    .line 70
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    #@b
    add-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@e
    .line 71
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    #@12
    add-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@15
    .line 72
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@17
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    #@19
    add-double/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    .line 68
    return-void
.end method

.method public addAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 405
    packed-switch p1, :pswitch_data_0

    #@3
    .line 419
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 407
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@e
    add-double/2addr v0, p2

    #@f
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@11
    .line 408
    return-void

    #@12
    .line 410
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@14
    add-double/2addr v0, p2

    #@15
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@17
    .line 411
    return-void

    #@18
    .line 413
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@1a
    add-double/2addr v0, p2

    #@1b
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@1d
    .line 414
    return-void

    #@1e
    .line 416
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@20
    add-double/2addr v0, p2

    #@21
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@23
    .line 417
    return-void

    #@24
    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double4;D)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Double4;
    .param p2, "factor"    # D

    #@0
    .prologue
    .line 306
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    #@4
    mul-double/2addr v2, p2

    #@5
    add-double/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@8
    .line 307
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@a
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    #@c
    mul-double/2addr v2, p2

    #@d
    add-double/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@10
    .line 308
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@12
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    #@14
    mul-double/2addr v2, p2

    #@15
    add-double/2addr v0, v2

    #@16
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@18
    .line 309
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@1a
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    #@1c
    mul-double/2addr v2, p2

    #@1d
    add-double/2addr v0, v2

    #@1e
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@20
    .line 305
    return-void
.end method

.method public copyTo([DI)V
    .locals 4
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 445
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    aput-wide v0, p1, p2

    #@4
    .line 446
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@8
    aput-wide v2, p1, v0

    #@a
    .line 447
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@e
    aput-wide v2, p1, v0

    #@10
    .line 448
    add-int/lit8 v0, p2, 0x3

    #@12
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@14
    aput-wide v2, p1, v0

    #@16
    .line 444
    return-void
.end method

.method public div(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 238
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    div-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@5
    .line 239
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@7
    div-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@a
    .line 240
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@c
    div-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@f
    .line 241
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@11
    div-double/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@14
    .line 237
    return-void
.end method

.method public div(Landroid/renderscript/Double4;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 226
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    #@4
    div-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@7
    .line 227
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    #@b
    div-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@e
    .line 228
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    #@12
    div-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@15
    .line 229
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@17
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    #@19
    div-double/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    .line 225
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double4;)D
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 285
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@7
    iget-wide v4, p1, Landroid/renderscript/Double4;->y:D

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@d
    iget-wide v4, p1, Landroid/renderscript/Double4;->z:D

    #@f
    mul-double/2addr v2, v4

    #@10
    add-double/2addr v0, v2

    #@11
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@13
    iget-wide v4, p1, Landroid/renderscript/Double4;->w:D

    #@15
    mul-double/2addr v2, v4

    #@16
    add-double/2addr v0, v2

    #@17
    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    #@0
    .prologue
    .line 349
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p0, Landroid/renderscript/Double4;->y:D

    #@4
    add-double/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Double4;->z:D

    #@7
    add-double/2addr v0, v2

    #@8
    iget-wide v2, p0, Landroid/renderscript/Double4;->w:D

    #@a
    add-double/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    #@3
    .line 369
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 361
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@e
    return-wide v0

    #@f
    .line 363
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@11
    return-wide v0

    #@12
    .line 365
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@14
    return-wide v0

    #@15
    .line 367
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@17
    return-wide v0

    #@18
    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 340
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public mul(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 180
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    mul-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@5
    .line 181
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@7
    mul-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@a
    .line 182
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@c
    mul-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@f
    .line 183
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@11
    mul-double/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@14
    .line 179
    return-void
.end method

.method public mul(Landroid/renderscript/Double4;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 168
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    #@4
    mul-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@7
    .line 169
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    #@b
    mul-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@e
    .line 170
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    #@12
    mul-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@15
    .line 171
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@17
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    #@19
    mul-double/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    .line 167
    return-void
.end method

.method public negate()V
    .locals 2

    #@0
    .prologue
    .line 328
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    neg-double v0, v0

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@5
    .line 329
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@7
    neg-double v0, v0

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@a
    .line 330
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@c
    neg-double v0, v0

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@f
    .line 331
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@11
    neg-double v0, v0

    #@12
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@14
    .line 327
    return-void
.end method

.method public set(Landroid/renderscript/Double4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 318
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    #@2
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@4
    .line 319
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    #@6
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@8
    .line 320
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    #@a
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@c
    .line 321
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    #@e
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@10
    .line 317
    return-void
.end method

.method public setAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 380
    packed-switch p1, :pswitch_data_0

    #@3
    .line 394
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 382
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double4;->x:D

    #@e
    .line 383
    return-void

    #@f
    .line 385
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double4;->y:D

    #@11
    .line 386
    return-void

    #@12
    .line 388
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double4;->z:D

    #@14
    .line 389
    return-void

    #@15
    .line 391
    :pswitch_3
    iput-wide p2, p0, Landroid/renderscript/Double4;->w:D

    #@17
    .line 392
    return-void

    #@18
    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setValues(DDDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    #@0
    .prologue
    .line 432
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    #@2
    .line 433
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    #@4
    .line 434
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    #@6
    .line 435
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    #@8
    .line 431
    return-void
.end method

.method public sub(D)V
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 122
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    sub-double/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@5
    .line 123
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@7
    sub-double/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@a
    .line 124
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@c
    sub-double/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@f
    .line 125
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@11
    sub-double/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@14
    .line 121
    return-void
.end method

.method public sub(Landroid/renderscript/Double4;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 110
    iget-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@2
    iget-wide v2, p1, Landroid/renderscript/Double4;->x:D

    #@4
    sub-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Double4;->x:D

    #@7
    .line 111
    iget-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@9
    iget-wide v2, p1, Landroid/renderscript/Double4;->y:D

    #@b
    sub-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Double4;->y:D

    #@e
    .line 112
    iget-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@10
    iget-wide v2, p1, Landroid/renderscript/Double4;->z:D

    #@12
    sub-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Double4;->z:D

    #@15
    .line 113
    iget-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@17
    iget-wide v2, p1, Landroid/renderscript/Double4;->w:D

    #@19
    sub-double/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Double4;->w:D

    #@1c
    .line 109
    return-void
.end method
