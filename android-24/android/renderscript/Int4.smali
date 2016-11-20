.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;
.source "Int4.java"


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


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

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput p1, p0, Landroid/renderscript/Int4;->w:I

    #@5
    iput p1, p0, Landroid/renderscript/Int4;->z:I

    #@7
    iput p1, p0, Landroid/renderscript/Int4;->y:I

    #@9
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    #@b
    .line 33
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "w"    # I

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 39
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    #@7
    .line 40
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    #@9
    .line 41
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    #@b
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    #@5
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@7
    .line 47
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    #@9
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@b
    .line 48
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 49
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    #@11
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@13
    .line 45
    return-void
.end method

.method public static add(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 102
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    add-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@a
    .line 103
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@c
    add-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@f
    .line 104
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@11
    add-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@14
    .line 105
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@16
    add-int/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@19
    .line 107
    return-object v0
.end method

.method public static add(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 73
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int4;->x:I

    #@9
    add-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@c
    .line 74
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int4;->y:I

    #@10
    add-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@13
    .line 75
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int4;->z:I

    #@17
    add-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@1a
    .line 76
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    iget v2, p1, Landroid/renderscript/Int4;->w:I

    #@1e
    add-int/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@21
    .line 78
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 275
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 276
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    div-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@a
    .line 277
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@c
    div-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@f
    .line 278
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@11
    div-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@14
    .line 279
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@16
    div-int/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@19
    .line 281
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 247
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int4;->x:I

    #@9
    div-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@c
    .line 248
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int4;->y:I

    #@10
    div-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@13
    .line 249
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int4;->z:I

    #@17
    div-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@1a
    .line 250
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    iget v2, p1, Landroid/renderscript/Int4;->w:I

    #@1e
    div-int/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@21
    .line 252
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 379
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@7
    iget v2, p0, Landroid/renderscript/Int4;->y:I

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@d
    iget v2, p0, Landroid/renderscript/Int4;->z:I

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@13
    iget v2, p0, Landroid/renderscript/Int4;->w:I

    #@15
    mul-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    return v0
.end method

.method public static mod(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 333
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 334
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    rem-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@a
    .line 335
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@c
    rem-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@f
    .line 336
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@11
    rem-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@14
    .line 337
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@16
    rem-int/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@19
    .line 339
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 304
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 305
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int4;->x:I

    #@9
    rem-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@c
    .line 306
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int4;->y:I

    #@10
    rem-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@13
    .line 307
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int4;->z:I

    #@17
    rem-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@1a
    .line 308
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    iget v2, p1, Landroid/renderscript/Int4;->w:I

    #@1e
    rem-int/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@21
    .line 310
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 218
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    mul-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@a
    .line 219
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@c
    mul-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@f
    .line 220
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@11
    mul-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@14
    .line 221
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@16
    mul-int/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@19
    .line 223
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 189
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int4;->x:I

    #@9
    mul-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@c
    .line 190
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int4;->y:I

    #@10
    mul-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@13
    .line 191
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int4;->z:I

    #@17
    mul-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@1a
    .line 192
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    iget v2, p1, Landroid/renderscript/Int4;->w:I

    #@1e
    mul-int/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@21
    .line 194
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 160
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    sub-int/2addr v1, p1

    #@8
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@a
    .line 161
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@c
    sub-int/2addr v1, p1

    #@d
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@f
    .line 162
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@11
    sub-int/2addr v1, p1

    #@12
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@14
    .line 163
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@16
    sub-int/2addr v1, p1

    #@17
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@19
    .line 165
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 131
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    #@7
    iget v2, p1, Landroid/renderscript/Int4;->x:I

    #@9
    sub-int/2addr v1, v2

    #@a
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@c
    .line 132
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@e
    iget v2, p1, Landroid/renderscript/Int4;->y:I

    #@10
    sub-int/2addr v1, v2

    #@11
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@13
    .line 133
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@15
    iget v2, p1, Landroid/renderscript/Int4;->z:I

    #@17
    sub-int/2addr v1, v2

    #@18
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@1a
    .line 134
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    iget v2, p1, Landroid/renderscript/Int4;->w:I

    #@1e
    sub-int/2addr v1, v2

    #@1f
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@21
    .line 136
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 88
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@7
    add-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    .line 89
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    add-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 90
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@11
    add-int/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@14
    .line 86
    return-void
.end method

.method public add(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    add-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@7
    .line 59
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@b
    add-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@e
    .line 60
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@15
    .line 61
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@17
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    .line 57
    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

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
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@e
    add-int/2addr v0, p2

    #@f
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@11
    .line 487
    return-void

    #@12
    .line 489
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@14
    add-int/2addr v0, p2

    #@15
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@17
    .line 490
    return-void

    #@18
    .line 492
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@1a
    add-int/2addr v0, p2

    #@1b
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@1d
    .line 493
    return-void

    #@1e
    .line 495
    :pswitch_3
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@20
    add-int/2addr v0, p2

    #@21
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@23
    .line 496
    return-void

    #@24
    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int4;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;
    .param p2, "factor"    # I

    #@0
    .prologue
    .line 389
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    mul-int/2addr v1, p2

    #@5
    add-int/2addr v0, v1

    #@6
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@8
    .line 390
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@c
    mul-int/2addr v1, p2

    #@d
    add-int/2addr v0, v1

    #@e
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@10
    .line 391
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@12
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@14
    mul-int/2addr v1, p2

    #@15
    add-int/2addr v0, v1

    #@16
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@18
    .line 392
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@1a
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@1c
    mul-int/2addr v1, p2

    #@1d
    add-int/2addr v0, v1

    #@1e
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@20
    .line 388
    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 509
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    aput v0, p1, p2

    #@4
    .line 510
    add-int/lit8 v0, p2, 0x1

    #@6
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@8
    aput v1, p1, v0

    #@a
    .line 511
    add-int/lit8 v0, p2, 0x2

    #@c
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@e
    aput v1, p1, v0

    #@10
    .line 512
    add-int/lit8 v0, p2, 0x3

    #@12
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@14
    aput v1, p1, v0

    #@16
    .line 508
    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 261
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    div-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 262
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@7
    div-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    .line 263
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    div-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 264
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@11
    div-int/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@14
    .line 260
    return-void
.end method

.method public div(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    div-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@7
    .line 233
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@b
    div-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@e
    .line 234
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@12
    div-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@15
    .line 235
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@17
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@19
    div-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    .line 231
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int4;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 368
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@7
    iget v2, p1, Landroid/renderscript/Int4;->y:I

    #@9
    mul-int/2addr v1, v2

    #@a
    add-int/2addr v0, v1

    #@b
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@d
    iget v2, p1, Landroid/renderscript/Int4;->z:I

    #@f
    mul-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@13
    iget v2, p1, Landroid/renderscript/Int4;->w:I

    #@15
    mul-int/2addr v1, v2

    #@16
    add-int/2addr v0, v1

    #@17
    return v0
.end method

.method public elementSum()I
    .locals 2

    #@0
    .prologue
    .line 428
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    #@7
    add-int/2addr v0, v1

    #@8
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public get(I)I
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
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@e
    return v0

    #@f
    .line 442
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@11
    return v0

    #@12
    .line 444
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@14
    return v0

    #@15
    .line 446
    :pswitch_3
    iget v0, p0, Landroid/renderscript/Int4;->w:I

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

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 348
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 319
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    rem-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 320
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@7
    rem-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    .line 321
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    rem-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 322
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@11
    rem-int/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@14
    .line 318
    return-void
.end method

.method public mod(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    rem-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@7
    .line 291
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@b
    rem-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@e
    .line 292
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@12
    rem-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@15
    .line 293
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@17
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@19
    rem-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    .line 289
    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 203
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    mul-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 204
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@7
    mul-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    .line 205
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    mul-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 206
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@11
    mul-int/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@14
    .line 202
    return-void
.end method

.method public mul(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 174
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    mul-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@7
    .line 175
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@b
    mul-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@e
    .line 176
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@12
    mul-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@15
    .line 177
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@17
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@19
    mul-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    .line 173
    return-void
.end method

.method public negate()V
    .locals 1

    #@0
    .prologue
    .line 355
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    neg-int v0, v0

    #@3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 356
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@7
    neg-int v0, v0

    #@8
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    .line 357
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    neg-int v0, v0

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 358
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@11
    neg-int v0, v0

    #@12
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@14
    .line 354
    return-void
.end method

.method public set(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 401
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    #@2
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@4
    .line 402
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    #@6
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@8
    .line 403
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    #@a
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    .line 404
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    #@e
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@10
    .line 400
    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

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
    iput p2, p0, Landroid/renderscript/Int4;->x:I

    #@e
    .line 462
    return-void

    #@f
    .line 464
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    #@11
    .line 465
    return-void

    #@12
    .line 467
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Int4;->z:I

    #@14
    .line 468
    return-void

    #@15
    .line 470
    :pswitch_3
    iput p2, p0, Landroid/renderscript/Int4;->w:I

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

.method public setValues(IIII)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    #@0
    .prologue
    .line 416
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    #@2
    .line 417
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    #@4
    .line 418
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    #@6
    .line 419
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    #@8
    .line 415
    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 145
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@5
    .line 146
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@7
    sub-int/2addr v0, p1

    #@8
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@a
    .line 147
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@c
    sub-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@f
    .line 148
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@11
    sub-int/2addr v0, p1

    #@12
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@14
    .line 144
    return-void
.end method

.method public sub(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 116
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    #@2
    iget v1, p1, Landroid/renderscript/Int4;->x:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/renderscript/Int4;->x:I

    #@7
    .line 117
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    #@9
    iget v1, p1, Landroid/renderscript/Int4;->y:I

    #@b
    sub-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/renderscript/Int4;->y:I

    #@e
    .line 118
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    #@10
    iget v1, p1, Landroid/renderscript/Int4;->z:I

    #@12
    sub-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/renderscript/Int4;->z:I

    #@15
    .line 119
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    #@17
    iget v1, p1, Landroid/renderscript/Int4;->w:I

    #@19
    sub-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/renderscript/Int4;->w:I

    #@1c
    .line 115
    return-void
.end method
