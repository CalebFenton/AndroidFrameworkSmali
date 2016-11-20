.class public Landroid/renderscript/Short3;
.super Ljava/lang/Object;
.source "Short3.java"


# instance fields
.field public x:S

.field public y:S

.field public z:S


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

.method public constructor <init>(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    #@5
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@7
    .line 45
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    #@9
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@b
    .line 46
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    #@d
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@f
    .line 43
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "i"    # S

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    #@5
    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    #@7
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>(SSS)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    #@5
    .line 38
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    #@7
    .line 39
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    #@9
    .line 36
    return-void
.end method

.method public static add(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 69
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    #@9
    add-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@d
    .line 70
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    #@11
    add-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@15
    .line 71
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    #@19
    add-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@1d
    .line 73
    return-object v0
.end method

.method public static add(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 96
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    add-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@b
    .line 97
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@d
    add-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 98
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@13
    add-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@17
    .line 100
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 231
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    #@9
    div-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@d
    .line 232
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    #@11
    div-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@15
    .line 233
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    #@19
    div-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@1d
    .line 235
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 258
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    div-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@b
    .line 259
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@d
    div-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 260
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@13
    div-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@17
    .line 262
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)S
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 355
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@7
    iget-short v2, p0, Landroid/renderscript/Short3;->y:S

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@d
    iget-short v2, p0, Landroid/renderscript/Short3;->z:S

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    int-to-short v0, v0

    #@12
    return v0
.end method

.method public static mod(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 285
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    #@9
    rem-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@d
    .line 286
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    #@11
    rem-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@15
    .line 287
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    #@19
    rem-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@1d
    .line 289
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 312
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    rem-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@b
    .line 313
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@d
    rem-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 314
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@13
    rem-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@17
    .line 316
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 177
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    #@9
    mul-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@d
    .line 178
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    #@11
    mul-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@15
    .line 179
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    #@19
    mul-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@1d
    .line 181
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 203
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 204
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    mul-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@b
    .line 205
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@d
    mul-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 206
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@13
    mul-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@17
    .line 208
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 123
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    #@9
    sub-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@d
    .line 124
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    #@11
    sub-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@15
    .line 125
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    #@19
    sub-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@1d
    .line 127
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 149
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 150
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    #@7
    sub-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@b
    .line 151
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@d
    sub-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 152
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@13
    sub-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@17
    .line 154
    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 55
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@8
    .line 56
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@10
    .line 57
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@18
    .line 54
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 82
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    add-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@6
    .line 83
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    add-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@c
    .line 84
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@e
    add-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    .line 81
    return-void
.end method

.method public addAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

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
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@e
    add-int/2addr v0, p2

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@12
    .line 454
    return-void

    #@13
    .line 456
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@15
    add-int/2addr v0, p2

    #@16
    int-to-short v0, v0

    #@17
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@19
    .line 457
    return-void

    #@1a
    .line 459
    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@1c
    add-int/2addr v0, p2

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@20
    .line 460
    return-void

    #@21
    .line 451
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short3;S)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;
    .param p2, "factor"    # S

    #@0
    .prologue
    .line 365
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-short v0, v0

    #@7
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@9
    .line 366
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@b
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@d
    mul-int/2addr v1, p2

    #@e
    add-int/2addr v0, v1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@12
    .line 367
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@14
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@16
    mul-int/2addr v1, p2

    #@17
    add-int/2addr v0, v1

    #@18
    int-to-short v0, v0

    #@19
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@1b
    .line 364
    return-void
.end method

.method public copyTo([SI)V
    .locals 2
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 473
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    aput-short v0, p1, p2

    #@4
    .line 474
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@8
    aput-short v1, p1, v0

    #@a
    .line 475
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@e
    aput-short v1, p1, v0

    #@10
    .line 472
    return-void
.end method

.method public div(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 217
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    div-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@8
    .line 218
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@c
    div-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@10
    .line 219
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@14
    div-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@18
    .line 216
    return-void
.end method

.method public div(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 244
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    div-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@6
    .line 245
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    div-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@c
    .line 246
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@e
    div-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    .line 243
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short3;)S
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 344
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@d
    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    int-to-short v0, v0

    #@12
    return v0
.end method

.method public elementSum()S
    .locals 2

    #@0
    .prologue
    .line 400
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    #@4
    add-int/2addr v0, v1

    #@5
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    #@7
    add-int/2addr v0, v1

    #@8
    int-to-short v0, v0

    #@9
    return v0
.end method

.method public get(I)S
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
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@e
    return v0

    #@f
    .line 414
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@11
    return v0

    #@12
    .line 416
    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@14
    return v0

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

.method public length()S
    .locals 1

    #@0
    .prologue
    .line 325
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public mod(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 271
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    rem-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@8
    .line 272
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@c
    rem-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@10
    .line 273
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@14
    rem-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@18
    .line 270
    return-void
.end method

.method public mod(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 298
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    rem-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@6
    .line 299
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    rem-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@c
    .line 300
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@e
    rem-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    .line 297
    return-void
.end method

.method public mul(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 163
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@8
    .line 164
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@c
    mul-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@10
    .line 165
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@14
    mul-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@18
    .line 162
    return-void
.end method

.method public mul(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 190
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    mul-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@6
    .line 191
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    mul-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@c
    .line 192
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@e
    mul-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    .line 189
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 332
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    neg-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@6
    .line 333
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    neg-int v0, v0

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@c
    .line 334
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@e
    neg-int v0, v0

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    .line 331
    return-void
.end method

.method public set(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 376
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    #@2
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@4
    .line 377
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    #@6
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    .line 378
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@c
    .line 375
    return-void
.end method

.method public setAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

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
    iput-short p2, p0, Landroid/renderscript/Short3;->x:S

    #@e
    .line 432
    return-void

    #@f
    .line 434
    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 435
    return-void

    #@12
    .line 437
    :pswitch_2
    iput-short p2, p0, Landroid/renderscript/Short3;->z:S

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

.method public setValues(SSS)V
    .locals 0
    .param p1, "a"    # S
    .param p2, "b"    # S
    .param p3, "c"    # S

    #@0
    .prologue
    .line 389
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    #@2
    .line 390
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    #@4
    .line 391
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    #@6
    .line 388
    return-void
.end method

.method public sub(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 109
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@8
    .line 110
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    #@c
    sub-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@10
    .line 111
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    #@14
    sub-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@18
    .line 108
    return-void
.end method

.method public sub(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 136
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@2
    sub-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    #@6
    .line 137
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@8
    sub-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    #@c
    .line 138
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@e
    sub-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    #@12
    .line 135
    return-void
.end method
