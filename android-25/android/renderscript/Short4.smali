.class public Landroid/renderscript/Short4;
.super Ljava/lang/Object;
.source "Short4.java"


# instance fields
.field public w:S

.field public x:S

.field public y:S

.field public z:S


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

.method public constructor <init>(Landroid/renderscript/Short4;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    #@5
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@7
    .line 47
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    #@9
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@b
    .line 48
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    #@d
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@f
    .line 49
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    #@11
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@13
    .line 45
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "i"    # S

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-short p1, p0, Landroid/renderscript/Short4;->w:S

    #@5
    iput-short p1, p0, Landroid/renderscript/Short4;->z:S

    #@7
    iput-short p1, p0, Landroid/renderscript/Short4;->y:S

    #@9
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    #@b
    .line 33
    return-void
.end method

.method public constructor <init>(SSSS)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "w"    # S

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    #@5
    .line 39
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    #@7
    .line 40
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    #@9
    .line 41
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    #@b
    .line 37
    return-void
.end method

.method public static add(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 73
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    #@9
    add-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@d
    .line 74
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    #@11
    add-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@15
    .line 75
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    #@19
    add-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@1d
    .line 76
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@1f
    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    #@21
    add-int/2addr v1, v2

    #@22
    int-to-short v1, v1

    #@23
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@25
    .line 78
    return-object v0
.end method

.method public static add(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 102
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    add-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@b
    .line 103
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@d
    add-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@11
    .line 104
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@13
    add-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@17
    .line 105
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@19
    add-int/2addr v1, p1

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@1d
    .line 107
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 247
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    #@9
    div-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@d
    .line 248
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    #@11
    div-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@15
    .line 249
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    #@19
    div-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@1d
    .line 250
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@1f
    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    #@21
    div-int/2addr v1, v2

    #@22
    int-to-short v1, v1

    #@23
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@25
    .line 252
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 275
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 276
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    div-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@b
    .line 277
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@d
    div-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@11
    .line 278
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@13
    div-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@17
    .line 279
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@19
    div-int/2addr v1, p1

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@1d
    .line 281
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)S
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 379
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@7
    iget-short v2, p0, Landroid/renderscript/Short4;->y:S

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@d
    iget-short v2, p0, Landroid/renderscript/Short4;->z:S

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@13
    iget-short v2, p0, Landroid/renderscript/Short4;->w:S

    #@15
    mul-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    int-to-short v0, v0

    #@18
    return v0
.end method

.method public static mod(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 304
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 305
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    #@9
    rem-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@d
    .line 306
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    #@11
    rem-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@15
    .line 307
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    #@19
    rem-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@1d
    .line 308
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@1f
    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    #@21
    rem-int/2addr v1, v2

    #@22
    int-to-short v1, v1

    #@23
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@25
    .line 310
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 333
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 334
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    rem-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@b
    .line 335
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@d
    rem-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@11
    .line 336
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@13
    rem-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@17
    .line 337
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@19
    rem-int/2addr v1, p1

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@1d
    .line 339
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 189
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    #@9
    mul-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@d
    .line 190
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    #@11
    mul-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@15
    .line 191
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    #@19
    mul-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@1d
    .line 192
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@1f
    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    #@21
    mul-int/2addr v1, v2

    #@22
    int-to-short v1, v1

    #@23
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@25
    .line 194
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 218
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    mul-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@b
    .line 219
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@d
    mul-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@11
    .line 220
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@13
    mul-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@17
    .line 221
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@19
    mul-int/2addr v1, p1

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@1d
    .line 223
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 131
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short4;->x:S

    #@9
    sub-int/2addr v1, v2

    #@a
    int-to-short v1, v1

    #@b
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@d
    .line 132
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@f
    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    #@11
    sub-int/2addr v1, v2

    #@12
    int-to-short v1, v1

    #@13
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@15
    .line 133
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@17
    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    #@19
    sub-int/2addr v1, v2

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@1d
    .line 134
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@1f
    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    #@21
    sub-int/2addr v1, v2

    #@22
    int-to-short v1, v1

    #@23
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@25
    .line 136
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 160
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, Landroid/renderscript/Short4;->x:S

    #@7
    sub-int/2addr v1, p1

    #@8
    int-to-short v1, v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@b
    .line 161
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@d
    sub-int/2addr v1, p1

    #@e
    int-to-short v1, v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@11
    .line 162
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@13
    sub-int/2addr v1, p1

    #@14
    int-to-short v1, v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@17
    .line 163
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@19
    sub-int/2addr v1, p1

    #@1a
    int-to-short v1, v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@1d
    .line 165
    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 58
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@8
    .line 59
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@c
    add-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@10
    .line 60
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@14
    add-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@18
    .line 61
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@1a
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@1c
    add-int/2addr v0, v1

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@20
    .line 57
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 87
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    add-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@6
    .line 88
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    add-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@c
    .line 89
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@e
    add-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    .line 90
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@14
    add-int/2addr v0, p1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@18
    .line 86
    return-void
.end method

.method public addAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    #@3
    .line 498
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 486
    :pswitch_0
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@e
    add-int/2addr v0, p2

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@12
    .line 487
    return-void

    #@13
    .line 489
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@15
    add-int/2addr v0, p2

    #@16
    int-to-short v0, v0

    #@17
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@19
    .line 490
    return-void

    #@1a
    .line 492
    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@1c
    add-int/2addr v0, p2

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@20
    .line 493
    return-void

    #@21
    .line 495
    :pswitch_3
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@23
    add-int/2addr v0, p2

    #@24
    int-to-short v0, v0

    #@25
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@27
    .line 496
    return-void

    #@28
    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short4;S)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short4;
    .param p2, "factor"    # S

    #@0
    .prologue
    .line 389
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-short v0, v0

    #@7
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@9
    .line 390
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@b
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@d
    mul-int/2addr v1, p2

    #@e
    add-int/2addr v0, v1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@12
    .line 391
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@14
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@16
    mul-int/2addr v1, p2

    #@17
    add-int/2addr v0, v1

    #@18
    int-to-short v0, v0

    #@19
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@1b
    .line 392
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@1d
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@1f
    mul-int/2addr v1, p2

    #@20
    add-int/2addr v0, v1

    #@21
    int-to-short v0, v0

    #@22
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@24
    .line 388
    return-void
.end method

.method public copyTo([SI)V
    .locals 2
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 509
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    aput-short v0, p1, p2

    #@4
    .line 510
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@8
    aput-short v1, p1, v0

    #@a
    .line 511
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@e
    aput-short v1, p1, v0

    #@10
    .line 512
    add-int/lit8 v0, p2, 0x3

    #@12
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@14
    aput-short v1, p1, v0

    #@16
    .line 508
    return-void
.end method

.method public div(Landroid/renderscript/Short4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 232
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    div-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@8
    .line 233
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@c
    div-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@10
    .line 234
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@14
    div-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@18
    .line 235
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@1a
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@1c
    div-int/2addr v0, v1

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@20
    .line 231
    return-void
.end method

.method public div(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 261
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    div-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@6
    .line 262
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    div-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@c
    .line 263
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@e
    div-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    .line 264
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@14
    div-int/2addr v0, p1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@18
    .line 260
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short4;)S
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 368
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@7
    iget-short v2, p1, Landroid/renderscript/Short4;->y:S

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@d
    iget-short v2, p1, Landroid/renderscript/Short4;->z:S

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@13
    iget-short v2, p1, Landroid/renderscript/Short4;->w:S

    #@15
    mul-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    int-to-short v0, v0

    #@18
    return v0
.end method

.method public elementSum()S
    .locals 2

    #@0
    .prologue
    .line 428
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p0, Landroid/renderscript/Short4;->y:S

    #@4
    add-int/2addr v0, v1

    #@5
    iget-short v1, p0, Landroid/renderscript/Short4;->z:S

    #@7
    add-int/2addr v0, v1

    #@8
    iget-short v1, p0, Landroid/renderscript/Short4;->w:S

    #@a
    add-int/2addr v0, v1

    #@b
    int-to-short v0, v0

    #@c
    return v0
.end method

.method public get(I)S
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    #@3
    .line 448
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 440
    :pswitch_0
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@e
    return v0

    #@f
    .line 442
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@11
    return v0

    #@12
    .line 444
    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@14
    return v0

    #@15
    .line 446
    :pswitch_3
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@17
    return v0

    #@18
    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public length()S
    .locals 1

    #@0
    .prologue
    .line 348
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public mod(Landroid/renderscript/Short4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 290
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    rem-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@8
    .line 291
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@c
    rem-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@10
    .line 292
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@14
    rem-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@18
    .line 293
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@1a
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@1c
    rem-int/2addr v0, v1

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@20
    .line 289
    return-void
.end method

.method public mod(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 319
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    rem-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@6
    .line 320
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    rem-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@c
    .line 321
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@e
    rem-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    .line 322
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@14
    rem-int/2addr v0, p1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@18
    .line 318
    return-void
.end method

.method public mul(Landroid/renderscript/Short4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 174
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@8
    .line 175
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@c
    mul-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@10
    .line 176
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@14
    mul-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@18
    .line 177
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@1a
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@1c
    mul-int/2addr v0, v1

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@20
    .line 173
    return-void
.end method

.method public mul(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 203
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    mul-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@6
    .line 204
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    mul-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@c
    .line 205
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@e
    mul-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    .line 206
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@14
    mul-int/2addr v0, p1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@18
    .line 202
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 355
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    neg-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@6
    .line 356
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    neg-int v0, v0

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@c
    .line 357
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@e
    neg-int v0, v0

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    .line 358
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@14
    neg-int v0, v0

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@18
    .line 354
    return-void
.end method

.method public set(Landroid/renderscript/Short4;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 401
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    #@2
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@4
    .line 402
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    #@6
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    .line 403
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@c
    .line 404
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    #@e
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@10
    .line 400
    return-void
.end method

.method public setAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    #@3
    .line 473
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@5
    const-string/jumbo v1, "Index: i"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 461
    :pswitch_0
    iput-short p2, p0, Landroid/renderscript/Short4;->x:S

    #@e
    .line 462
    return-void

    #@f
    .line 464
    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    #@11
    .line 465
    return-void

    #@12
    .line 467
    :pswitch_2
    iput-short p2, p0, Landroid/renderscript/Short4;->z:S

    #@14
    .line 468
    return-void

    #@15
    .line 470
    :pswitch_3
    iput-short p2, p0, Landroid/renderscript/Short4;->w:S

    #@17
    .line 471
    return-void

    #@18
    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setValues(SSSS)V
    .locals 0
    .param p1, "a"    # S
    .param p2, "b"    # S
    .param p3, "c"    # S
    .param p4, "d"    # S

    #@0
    .prologue
    .line 416
    iput-short p1, p0, Landroid/renderscript/Short4;->x:S

    #@2
    .line 417
    iput-short p2, p0, Landroid/renderscript/Short4;->y:S

    #@4
    .line 418
    iput-short p3, p0, Landroid/renderscript/Short4;->z:S

    #@6
    .line 419
    iput-short p4, p0, Landroid/renderscript/Short4;->w:S

    #@8
    .line 415
    return-void
.end method

.method public sub(Landroid/renderscript/Short4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 116
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    iget-short v1, p1, Landroid/renderscript/Short4;->x:S

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@8
    .line 117
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@a
    iget-short v1, p1, Landroid/renderscript/Short4;->y:S

    #@c
    sub-int/2addr v0, v1

    #@d
    int-to-short v0, v0

    #@e
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@10
    .line 118
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    iget-short v1, p1, Landroid/renderscript/Short4;->z:S

    #@14
    sub-int/2addr v0, v1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@18
    .line 119
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@1a
    iget-short v1, p1, Landroid/renderscript/Short4;->w:S

    #@1c
    sub-int/2addr v0, v1

    #@1d
    int-to-short v0, v0

    #@1e
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@20
    .line 115
    return-void
.end method

.method public sub(S)V
    .locals 1
    .param p1, "value"    # S

    #@0
    .prologue
    .line 145
    iget-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@2
    sub-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/renderscript/Short4;->x:S

    #@6
    .line 146
    iget-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@8
    sub-int/2addr v0, p1

    #@9
    int-to-short v0, v0

    #@a
    iput-short v0, p0, Landroid/renderscript/Short4;->y:S

    #@c
    .line 147
    iget-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@e
    sub-int/2addr v0, p1

    #@f
    int-to-short v0, v0

    #@10
    iput-short v0, p0, Landroid/renderscript/Short4;->z:S

    #@12
    .line 148
    iget-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@14
    sub-int/2addr v0, p1

    #@15
    int-to-short v0, v0

    #@16
    iput-short v0, p0, Landroid/renderscript/Short4;->w:S

    #@18
    .line 144
    return-void
.end method
