.class public Landroid/renderscript/Byte2;
.super Ljava/lang/Object;
.source "Byte2.java"


# instance fields
.field public x:B

.field public y:B


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

.method public constructor <init>(BB)V
    .locals 0
    .param p1, "initX"    # B
    .param p2, "initY"    # B

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    #@5
    .line 33
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte2;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    #@5
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    .line 39
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    #@9
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@b
    .line 37
    return-void
.end method

.method public static add(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 85
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 86
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    add-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@b
    .line 87
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@d
    add-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@11
    .line 89
    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 60
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 61
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    #@9
    add-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@d
    .line 62
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    #@11
    add-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@15
    .line 64
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 235
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 236
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    div-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@b
    .line 237
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@d
    div-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@11
    .line 239
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 210
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 211
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    #@9
    div-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@d
    .line 212
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    #@11
    div-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@15
    .line 214
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)B
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 277
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    #@7
    iget-byte v2, p0, Landroid/renderscript/Byte2;->y:B

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    int-to-byte v0, v0

    #@c
    return v0
.end method

.method public static mul(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 185
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 186
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    mul-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@b
    .line 187
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@d
    mul-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@11
    .line 189
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 160
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 161
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    #@9
    mul-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@d
    .line 162
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    #@11
    mul-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@15
    .line 164
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 135
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 136
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    sub-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@b
    .line 137
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@d
    sub-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@11
    .line 139
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte2;
    .param p1, "b"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 110
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 111
    .local v0, "result":Landroid/renderscript/Byte2;
    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    #@9
    sub-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@d
    .line 112
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    #@11
    sub-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@15
    .line 114
    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 73
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    add-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@6
    .line 74
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    add-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@c
    .line 72
    return-void
.end method

.method public add(Landroid/renderscript/Byte2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 48
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@8
    .line 49
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@10
    .line 47
    return-void
.end method

.method public addAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 364
    packed-switch p1, :pswitch_data_0

    #@3
    .line 372
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 366
    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@e
    add-int/2addr v0, p2

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@12
    .line 367
    return-void

    #@13
    .line 369
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@15
    add-int/2addr v0, p2

    #@16
    int-to-byte v0, v0

    #@17
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@19
    .line 370
    return-void

    #@1a
    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Byte2;B)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte2;
    .param p2, "factor"    # B

    #@0
    .prologue
    .line 287
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@9
    .line 288
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@b
    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    #@d
    mul-int/2addr v1, p2

    #@e
    add-int/2addr v0, v1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@12
    .line 286
    return-void
.end method

.method public copyTo([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 383
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    aput-byte v0, p1, p2

    #@4
    .line 384
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    aput-byte v1, p1, v0

    #@a
    .line 382
    return-void
.end method

.method public div(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 223
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    div-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@6
    .line 224
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    div-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@c
    .line 222
    return-void
.end method

.method public div(Landroid/renderscript/Byte2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 198
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    #@4
    div-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@8
    .line 199
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    #@c
    div-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@10
    .line 197
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte2;)B
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 266
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte2;->y:B

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    int-to-byte v0, v0

    #@c
    return v0
.end method

.method public elementSum()B
    .locals 2

    #@0
    .prologue
    .line 318
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p0, Landroid/renderscript/Byte2;->y:B

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    #@3
    .line 334
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 330
    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@e
    return v0

    #@f
    .line 332
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@11
    return v0

    #@12
    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()B
    .locals 1

    #@0
    .prologue
    .line 248
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public mul(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 173
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    mul-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@6
    .line 174
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    mul-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@c
    .line 172
    return-void
.end method

.method public mul(Landroid/renderscript/Byte2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 148
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@8
    .line 149
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    #@c
    mul-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@10
    .line 147
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 255
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    neg-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@6
    .line 256
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    neg-int v0, v0

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@c
    .line 254
    return-void
.end method

.method public set(Landroid/renderscript/Byte2;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 297
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    #@2
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@4
    .line 298
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    .line 296
    return-void
.end method

.method public setAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 345
    packed-switch p1, :pswitch_data_0

    #@3
    .line 353
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 347
    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte2;->x:B

    #@e
    .line 348
    return-void

    #@f
    .line 350
    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    #@11
    .line 351
    return-void

    #@12
    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(BB)V
    .locals 0
    .param p1, "a"    # B
    .param p2, "b"    # B

    #@0
    .prologue
    .line 308
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    .line 309
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    #@4
    .line 307
    return-void
.end method

.method public sub(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 123
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    sub-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@6
    .line 124
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@8
    sub-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@c
    .line 122
    return-void
.end method

.method public sub(Landroid/renderscript/Byte2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 98
    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    #@8
    .line 99
    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte2;->y:B

    #@c
    sub-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    #@10
    .line 97
    return-void
.end method
