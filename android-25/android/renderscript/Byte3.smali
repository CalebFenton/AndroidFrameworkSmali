.class public Landroid/renderscript/Byte3;
.super Ljava/lang/Object;
.source "Byte3.java"


# instance fields
.field public x:B

.field public y:B

.field public z:B


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

.method public constructor <init>(BBB)V
    .locals 0
    .param p1, "initX"    # B
    .param p2, "initY"    # B
    .param p3, "initZ"    # B

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    #@5
    .line 34
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    #@7
    .line 35
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    #@5
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    .line 41
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    #@9
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@b
    .line 42
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    #@d
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@f
    .line 39
    return-void
.end method

.method public static add(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 91
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 92
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    add-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@b
    .line 93
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@d
    add-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@11
    .line 94
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@13
    add-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@17
    .line 96
    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 65
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    #@9
    add-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@d
    .line 66
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    #@11
    add-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@15
    .line 67
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    #@19
    add-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@1d
    .line 69
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 253
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 254
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    div-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@b
    .line 255
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@d
    div-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@11
    .line 256
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@13
    div-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@17
    .line 258
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 226
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 227
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    #@9
    div-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@d
    .line 228
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    #@11
    div-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@15
    .line 229
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    #@19
    div-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@1d
    .line 231
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)B
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 297
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    #@8
    iget-byte v2, p0, Landroid/renderscript/Byte3;->y:B

    #@a
    mul-int/2addr v1, v2

    #@b
    int-to-byte v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    #@10
    iget-byte v2, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    mul-int/2addr v1, v2

    #@13
    int-to-byte v1, v1

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    return v0
.end method

.method public static mul(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 199
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 200
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    mul-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@b
    .line 201
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@d
    mul-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@11
    .line 202
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@13
    mul-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@17
    .line 204
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 172
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 173
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    #@9
    mul-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@d
    .line 174
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    #@11
    mul-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@15
    .line 175
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    #@19
    mul-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@1d
    .line 177
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 146
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    sub-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@b
    .line 147
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@d
    sub-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@11
    .line 148
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@13
    sub-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@17
    .line 150
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 118
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 119
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    #@9
    sub-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@d
    .line 120
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    #@11
    sub-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@15
    .line 121
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    #@19
    sub-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@1d
    .line 123
    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 78
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    add-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@6
    .line 79
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    add-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@c
    .line 80
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@e
    add-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    .line 77
    return-void
.end method

.method public add(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 51
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@8
    .line 52
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@10
    .line 53
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@18
    .line 50
    return-void
.end method

.method public addAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    #@3
    .line 404
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 395
    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@e
    add-int/2addr v0, p2

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@12
    .line 396
    return-void

    #@13
    .line 398
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@15
    add-int/2addr v0, p2

    #@16
    int-to-byte v0, v0

    #@17
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@19
    .line 399
    return-void

    #@1a
    .line 401
    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@1c
    add-int/2addr v0, p2

    #@1d
    int-to-byte v0, v0

    #@1e
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@20
    .line 402
    return-void

    #@21
    .line 393
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Byte3;B)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;
    .param p2, "factor"    # B

    #@0
    .prologue
    .line 307
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@9
    .line 308
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@b
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    #@d
    mul-int/2addr v1, p2

    #@e
    add-int/2addr v0, v1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@12
    .line 309
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@14
    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    #@16
    mul-int/2addr v1, p2

    #@17
    add-int/2addr v0, v1

    #@18
    int-to-byte v0, v0

    #@19
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@1b
    .line 306
    return-void
.end method

.method public copyTo([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 415
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    aput-byte v0, p1, p2

    #@4
    .line 416
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    aput-byte v1, p1, v0

    #@a
    .line 417
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@e
    aput-byte v1, p1, v0

    #@10
    .line 414
    return-void
.end method

.method public div(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 240
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    div-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@6
    .line 241
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    div-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@c
    .line 242
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@e
    div-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    .line 239
    return-void
.end method

.method public div(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 213
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    #@4
    div-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@8
    .line 214
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    #@c
    div-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@10
    .line 215
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    #@14
    div-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@18
    .line 212
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte3;)B
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 286
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    #@a
    mul-int/2addr v1, v2

    #@b
    int-to-byte v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@10
    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    #@12
    mul-int/2addr v1, v2

    #@13
    int-to-byte v1, v1

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    return v0
.end method

.method public elementSum()B
    .locals 2

    #@0
    .prologue
    .line 342
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    #@4
    add-int/2addr v0, v1

    #@5
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    #@7
    add-int/2addr v0, v1

    #@8
    int-to-byte v0, v0

    #@9
    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

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
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@e
    return v0

    #@f
    .line 356
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@11
    return v0

    #@12
    .line 358
    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@14
    return v0

    #@15
    .line 352
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()B
    .locals 1

    #@0
    .prologue
    .line 267
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public mul(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 186
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    mul-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@6
    .line 187
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    mul-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@c
    .line 188
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@e
    mul-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    .line 185
    return-void
.end method

.method public mul(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 159
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@8
    .line 160
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    #@c
    mul-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@10
    .line 161
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    #@14
    mul-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@18
    .line 158
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 274
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    neg-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@6
    .line 275
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    neg-int v0, v0

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@c
    .line 276
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@e
    neg-int v0, v0

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    .line 273
    return-void
.end method

.method public set(Landroid/renderscript/Byte3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 318
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    #@2
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@4
    .line 319
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    .line 320
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@c
    .line 317
    return-void
.end method

.method public setAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 371
    packed-switch p1, :pswitch_data_0

    #@3
    .line 382
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 373
    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte3;->x:B

    #@e
    .line 374
    return-void

    #@f
    .line 376
    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    #@11
    .line 377
    return-void

    #@12
    .line 379
    :pswitch_2
    iput-byte p2, p0, Landroid/renderscript/Byte3;->z:B

    #@14
    .line 380
    return-void

    #@15
    .line 371
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(BBB)V
    .locals 0
    .param p1, "a"    # B
    .param p2, "b"    # B
    .param p3, "c"    # B

    #@0
    .prologue
    .line 331
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    .line 332
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    #@4
    .line 333
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    #@6
    .line 330
    return-void
.end method

.method public sub(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 132
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    sub-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@6
    .line 133
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@8
    sub-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@c
    .line 134
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@e
    sub-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    .line 131
    return-void
.end method

.method public sub(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 105
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    #@8
    .line 106
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    #@c
    sub-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    #@10
    .line 107
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    #@14
    sub-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    #@18
    .line 104
    return-void
.end method
