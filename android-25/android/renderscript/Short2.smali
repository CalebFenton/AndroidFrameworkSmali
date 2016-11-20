.class public Landroid/renderscript/Short2;
.super Ljava/lang/Object;
.source "Short2.java"


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short2;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    #@5
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@7
    .line 46
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    #@9
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@b
    .line 44
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "i"    # S

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-short p1, p0, Landroid/renderscript/Short2;->y:S

    #@5
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    #@5
    .line 40
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    #@7
    .line 38
    return-void
.end method

.method public static add(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 68
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    #@9
    add-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@d
    .line 69
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    #@11
    add-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@15
    .line 71
    return-object v0
.end method

.method public static add(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 92
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 93
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    add-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@b
    .line 94
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@d
    add-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@11
    .line 96
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 218
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    #@9
    div-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@d
    .line 219
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    #@11
    div-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@15
    .line 221
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 242
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 243
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    div-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@b
    .line 244
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@d
    div-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@11
    .line 246
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)S
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 334
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@7
    iget-short v2, p0, Landroid/renderscript/Short2;->y:S

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    int-to-short v0, v0

    #@c
    return v0
.end method

.method public static mod(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 267
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 268
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    #@9
    rem-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@d
    .line 269
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    #@11
    rem-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@15
    .line 271
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 292
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 293
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    rem-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@b
    .line 294
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@d
    rem-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@11
    .line 296
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 167
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 168
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    #@9
    mul-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@d
    .line 169
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    #@11
    mul-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@15
    .line 171
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 192
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 193
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    mul-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@b
    .line 194
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@d
    mul-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@11
    .line 196
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short2;Landroid/renderscript/Short2;)Landroid/renderscript/Short2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 118
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short2;->x:S

    #@9
    sub-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@d
    .line 119
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    #@11
    sub-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@15
    .line 121
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short2;S)Landroid/renderscript/Short2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short2;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 143
    .local v0, "result":Landroid/renderscript/Short2;
    iget-short v1, p0, Landroid/renderscript/Short2;->x:S

    #@7
    sub-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@b
    .line 144
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@d
    sub-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@11
    .line 146
    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 55
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@8
    .line 56
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@10
    .line 54
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 80
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    add-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@6
    .line 81
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    add-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@c
    .line 79
    return-void
.end method

.method public addAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    #@3
    .line 429
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 423
    :pswitch_0
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@e
    add-int/2addr v0, p2

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@12
    .line 424
    return-void

    #@13
    .line 426
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@15
    add-int/2addr v0, p2

    #@16
    int-to-short v0, v0

    #@17
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@19
    .line 427
    return-void

    #@1a
    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short2;S)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short2;
    .param p2, "factor"    # S

    #@0
    .prologue
    .line 344
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-short v0, v0

    #@7
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@9
    .line 345
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@b
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@d
    mul-int/2addr v1, p2

    #@e
    add-int/2addr v0, v1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@12
    .line 343
    return-void
.end method

.method public copyTo([SI)V
    .locals 2
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 440
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    aput-short v0, p1, p2

    #@4
    .line 441
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@8
    aput-short v1, p1, v0

    #@a
    .line 439
    return-void
.end method

.method public div(Landroid/renderscript/Short2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 205
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    div-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@8
    .line 206
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@c
    div-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@10
    .line 204
    return-void
.end method

.method public div(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 230
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    div-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@6
    .line 231
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    div-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@c
    .line 229
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short2;)S
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 323
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short2;->y:S

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    int-to-short v0, v0

    #@c
    return v0
.end method

.method public elementSum()S
    .locals 2

    #@0
    .prologue
    .line 375
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p0, Landroid/renderscript/Short2;->y:S

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method public get(I)S
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 385
    packed-switch p1, :pswitch_data_0

    #@3
    .line 391
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 387
    :pswitch_0
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@e
    return v0

    #@f
    .line 389
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@11
    return v0

    #@12
    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()S
    .locals 1

    #@0
    .prologue
    .line 305
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public mod(Landroid/renderscript/Short2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 255
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    rem-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@8
    .line 256
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@c
    rem-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@10
    .line 254
    return-void
.end method

.method public mod(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 280
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    rem-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@6
    .line 281
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    rem-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@c
    .line 279
    return-void
.end method

.method public mul(Landroid/renderscript/Short2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 155
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@8
    .line 156
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@c
    mul-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@10
    .line 154
    return-void
.end method

.method public mul(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 180
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    mul-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@6
    .line 181
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    mul-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@c
    .line 179
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 312
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    neg-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@6
    .line 313
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    neg-int v0, v0

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@c
    .line 311
    return-void
.end method

.method public set(Landroid/renderscript/Short2;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 354
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    #@2
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@4
    .line 355
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    #@6
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    .line 353
    return-void
.end method

.method public setAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 402
    packed-switch p1, :pswitch_data_0

    #@3
    .line 410
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 404
    :pswitch_0
    iput-short p2, p0, Landroid/renderscript/Short2;->x:S

    #@e
    .line 405
    return-void

    #@f
    .line 407
    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    #@11
    .line 408
    return-void

    #@12
    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(SS)V
    .locals 0
    .param p1, "a"    # S
    .param p2, "b"    # S

    #@0
    .prologue
    .line 365
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    #@2
    .line 366
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    #@4
    .line 364
    return-void
.end method

.method public sub(Landroid/renderscript/Short2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 105
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short2;->x:S

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@8
    .line 106
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short2;->y:S

    #@c
    sub-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@10
    .line 104
    return-void
.end method

.method public sub(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 130
    iget-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@2
    sub-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short2;->x:S

    #@6
    .line 131
    iget-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@8
    sub-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short2;->y:S

    #@c
    .line 129
    return-void
.end method
