.class public Landroid/renderscript/Byte4;
.super Ljava/lang/Object;
.source "Byte4.java"


# instance fields
.field public w:B

.field public x:B

.field public y:B

.field public z:B


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

.method public constructor <init>(BBBB)V
    .locals 0
    .param p1, "initX"    # B
    .param p2, "initY"    # B
    .param p3, "initZ"    # B
    .param p4, "initW"    # B

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    #@5
    .line 35
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    #@7
    .line 36
    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    #@9
    .line 37
    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    #@b
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte4;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    #@5
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    .line 42
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    #@9
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@b
    .line 43
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    #@d
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@f
    .line 44
    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    #@11
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@13
    .line 40
    return-void
.end method

.method public static add(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 97
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    add-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@b
    .line 98
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@d
    add-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@11
    .line 99
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@13
    add-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@17
    .line 100
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@19
    add-int/2addr v1, p1

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@1d
    .line 102
    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 68
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    #@9
    add-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@d
    .line 69
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    #@11
    add-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@15
    .line 70
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    #@19
    add-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@1d
    .line 71
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@1f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    #@21
    add-int/2addr v1, v2

    #@22
    int-to-byte v1, v1

    #@23
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@25
    .line 73
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 270
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 271
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    div-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@b
    .line 272
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@d
    div-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@11
    .line 273
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@13
    div-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@17
    .line 274
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@19
    div-int/2addr v1, p1

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@1d
    .line 276
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 241
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 242
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    #@9
    div-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@d
    .line 243
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    #@11
    div-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@15
    .line 244
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    #@19
    div-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@1d
    .line 245
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@1f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    #@21
    div-int/2addr v1, v2

    #@22
    int-to-byte v1, v1

    #@23
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@25
    .line 247
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)B
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 316
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    #@7
    iget-byte v2, p0, Landroid/renderscript/Byte4;->y:B

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    #@d
    iget-byte v2, p0, Landroid/renderscript/Byte4;->z:B

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    #@13
    iget-byte v2, p0, Landroid/renderscript/Byte4;->w:B

    #@15
    mul-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    int-to-byte v0, v0

    #@18
    return v0
.end method

.method public static mul(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 212
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 213
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    mul-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@b
    .line 214
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@d
    mul-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@11
    .line 215
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@13
    mul-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@17
    .line 216
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@19
    mul-int/2addr v1, p1

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@1d
    .line 218
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 183
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 184
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    #@9
    mul-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@d
    .line 185
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    #@11
    mul-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@15
    .line 186
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    #@19
    mul-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@1d
    .line 187
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@1f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    #@21
    mul-int/2addr v1, v2

    #@22
    int-to-byte v1, v1

    #@23
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@25
    .line 189
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;B)Landroid/renderscript/Byte4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 154
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 155
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    sub-int/2addr v1, p1

    #@8
    int-to-byte v1, v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@b
    .line 156
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@d
    sub-int/2addr v1, p1

    #@e
    int-to-byte v1, v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@11
    .line 157
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@13
    sub-int/2addr v1, p1

    #@14
    int-to-byte v1, v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@17
    .line 158
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@19
    sub-int/2addr v1, p1

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@1d
    .line 160
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte4;Landroid/renderscript/Byte4;)Landroid/renderscript/Byte4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte4;
    .param p1, "b"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 125
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 126
    .local v0, "result":Landroid/renderscript/Byte4;
    iget-byte v1, p0, Landroid/renderscript/Byte4;->x:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte4;->x:B

    #@9
    sub-int/2addr v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@d
    .line 127
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    #@11
    sub-int/2addr v1, v2

    #@12
    int-to-byte v1, v1

    #@13
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@15
    .line 128
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@17
    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    #@19
    sub-int/2addr v1, v2

    #@1a
    int-to-byte v1, v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@1d
    .line 129
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@1f
    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    #@21
    sub-int/2addr v1, v2

    #@22
    int-to-byte v1, v1

    #@23
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@25
    .line 131
    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 82
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    add-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@6
    .line 83
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    add-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@c
    .line 84
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@e
    add-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    .line 85
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@14
    add-int/2addr v0, p1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@18
    .line 81
    return-void
.end method

.method public add(Landroid/renderscript/Byte4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 53
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@8
    .line 54
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@10
    .line 55
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@18
    .line 56
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@1a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    #@1c
    add-int/2addr v0, v1

    #@1d
    int-to-byte v0, v0

    #@1e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@20
    .line 52
    return-void
.end method

.method public addAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    #@3
    .line 435
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
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@e
    add-int/2addr v0, p2

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@12
    .line 424
    return-void

    #@13
    .line 426
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@15
    add-int/2addr v0, p2

    #@16
    int-to-byte v0, v0

    #@17
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@19
    .line 427
    return-void

    #@1a
    .line 429
    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@1c
    add-int/2addr v0, p2

    #@1d
    int-to-byte v0, v0

    #@1e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@20
    .line 430
    return-void

    #@21
    .line 432
    :pswitch_3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@23
    add-int/2addr v0, p2

    #@24
    int-to-byte v0, v0

    #@25
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@27
    .line 433
    return-void

    #@28
    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Byte4;B)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte4;
    .param p2, "factor"    # B

    #@0
    .prologue
    .line 326
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-byte v0, v0

    #@7
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@9
    .line 327
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@b
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    #@d
    mul-int/2addr v1, p2

    #@e
    add-int/2addr v0, v1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@12
    .line 328
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@14
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    #@16
    mul-int/2addr v1, p2

    #@17
    add-int/2addr v0, v1

    #@18
    int-to-byte v0, v0

    #@19
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@1b
    .line 329
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@1d
    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    #@1f
    mul-int/2addr v1, p2

    #@20
    add-int/2addr v0, v1

    #@21
    int-to-byte v0, v0

    #@22
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@24
    .line 325
    return-void
.end method

.method public copyTo([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 446
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    aput-byte v0, p1, p2

    #@4
    .line 447
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    aput-byte v1, p1, v0

    #@a
    .line 448
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@e
    aput-byte v1, p1, v0

    #@10
    .line 449
    add-int/lit8 v0, p2, 0x3

    #@12
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@14
    aput-byte v1, p1, v0

    #@16
    .line 445
    return-void
.end method

.method public div(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 256
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    div-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@6
    .line 257
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    div-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@c
    .line 258
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@e
    div-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    .line 259
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@14
    div-int/2addr v0, p1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@18
    .line 255
    return-void
.end method

.method public div(Landroid/renderscript/Byte4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 227
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    #@4
    div-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@8
    .line 228
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    #@c
    div-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@10
    .line 229
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    #@14
    div-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@18
    .line 230
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@1a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    #@1c
    div-int/2addr v0, v1

    #@1d
    int-to-byte v0, v0

    #@1e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@20
    .line 226
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte4;)B
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 305
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@7
    iget-byte v2, p1, Landroid/renderscript/Byte4;->y:B

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@d
    iget-byte v2, p1, Landroid/renderscript/Byte4;->z:B

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@13
    iget-byte v2, p1, Landroid/renderscript/Byte4;->w:B

    #@15
    mul-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    int-to-byte v0, v0

    #@18
    return v0
.end method

.method public elementSum()B
    .locals 2

    #@0
    .prologue
    .line 365
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p0, Landroid/renderscript/Byte4;->y:B

    #@4
    add-int/2addr v0, v1

    #@5
    iget-byte v1, p0, Landroid/renderscript/Byte4;->z:B

    #@7
    add-int/2addr v0, v1

    #@8
    iget-byte v1, p0, Landroid/renderscript/Byte4;->w:B

    #@a
    add-int/2addr v0, v1

    #@b
    int-to-byte v0, v0

    #@c
    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 375
    packed-switch p1, :pswitch_data_0

    #@3
    .line 385
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 377
    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@e
    return v0

    #@f
    .line 379
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@11
    return v0

    #@12
    .line 381
    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@14
    return v0

    #@15
    .line 383
    :pswitch_3
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@17
    return v0

    #@18
    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public length()B
    .locals 1

    #@0
    .prologue
    .line 285
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public mul(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 198
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    mul-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@6
    .line 199
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    mul-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@c
    .line 200
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@e
    mul-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    .line 201
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@14
    mul-int/2addr v0, p1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@18
    .line 197
    return-void
.end method

.method public mul(Landroid/renderscript/Byte4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 169
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@8
    .line 170
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    #@c
    mul-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@10
    .line 171
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    #@14
    mul-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@18
    .line 172
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@1a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    #@1c
    mul-int/2addr v0, v1

    #@1d
    int-to-byte v0, v0

    #@1e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@20
    .line 168
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 292
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    neg-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@6
    .line 293
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    neg-int v0, v0

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@c
    .line 294
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@e
    neg-int v0, v0

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    .line 295
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@14
    neg-int v0, v0

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@18
    .line 291
    return-void
.end method

.method public set(Landroid/renderscript/Byte4;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 338
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    #@2
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@4
    .line 339
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    .line 340
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@c
    .line 341
    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@10
    .line 337
    return-void
.end method

.method public setAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 396
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
    .line 398
    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte4;->x:B

    #@e
    .line 399
    return-void

    #@f
    .line 401
    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    #@11
    .line 402
    return-void

    #@12
    .line 404
    :pswitch_2
    iput-byte p2, p0, Landroid/renderscript/Byte4;->z:B

    #@14
    .line 405
    return-void

    #@15
    .line 407
    :pswitch_3
    iput-byte p2, p0, Landroid/renderscript/Byte4;->w:B

    #@17
    .line 408
    return-void

    #@18
    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setValues(BBBB)V
    .locals 0
    .param p1, "a"    # B
    .param p2, "b"    # B
    .param p3, "c"    # B
    .param p4, "d"    # B

    #@0
    .prologue
    .line 353
    iput-byte p1, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    .line 354
    iput-byte p2, p0, Landroid/renderscript/Byte4;->y:B

    #@4
    .line 355
    iput-byte p3, p0, Landroid/renderscript/Byte4;->z:B

    #@6
    .line 356
    iput-byte p4, p0, Landroid/renderscript/Byte4;->w:B

    #@8
    .line 352
    return-void
.end method

.method public sub(B)V
    .locals 1
    .param p1, "value"    # B

    #@0
    .prologue
    .line 140
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    sub-int/2addr v0, p1

    #@3
    int-to-byte v0, v0

    #@4
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@6
    .line 141
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@8
    sub-int/2addr v0, p1

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@c
    .line 142
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@e
    sub-int/2addr v0, p1

    #@f
    int-to-byte v0, v0

    #@10
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    .line 143
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@14
    sub-int/2addr v0, p1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@18
    .line 139
    return-void
.end method

.method public sub(Landroid/renderscript/Byte4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 111
    iget-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@2
    iget-byte v1, p1, Landroid/renderscript/Byte4;->x:B

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/renderscript/Byte4;->x:B

    #@8
    .line 112
    iget-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->y:B

    #@c
    sub-int/2addr v0, v1

    #@d
    int-to-byte v0, v0

    #@e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->y:B

    #@10
    .line 113
    iget-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@12
    iget-byte v1, p1, Landroid/renderscript/Byte4;->z:B

    #@14
    sub-int/2addr v0, v1

    #@15
    int-to-byte v0, v0

    #@16
    iput-byte v0, p0, Landroid/renderscript/Byte4;->z:B

    #@18
    .line 114
    iget-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@1a
    iget-byte v1, p1, Landroid/renderscript/Byte4;->w:B

    #@1c
    sub-int/2addr v0, v1

    #@1d
    int-to-byte v0, v0

    #@1e
    iput-byte v0, p0, Landroid/renderscript/Byte4;->w:B

    #@20
    .line 110
    return-void
.end method
