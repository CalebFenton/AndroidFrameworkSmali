.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "Long4.java"


# instance fields
.field public w:J

.field public x:J

.field public y:J

.field public z:J


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

.method public constructor <init>(J)V
    .locals 1
    .param p1, "i"    # J

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-wide p1, p0, Landroid/renderscript/Long4;->w:J

    #@5
    iput-wide p1, p0, Landroid/renderscript/Long4;->z:J

    #@7
    iput-wide p1, p0, Landroid/renderscript/Long4;->y:J

    #@9
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    #@b
    .line 33
    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J
    .param p7, "w"    # J

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 39
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    #@7
    .line 40
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    #@9
    .line 41
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    #@b
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "source"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@7
    .line 47
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    #@9
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@b
    .line 48
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 49
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    #@11
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@13
    .line 45
    return-void
.end method

.method public static add(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 102
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    add-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@a
    .line 103
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@c
    add-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@f
    .line 104
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@11
    add-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@14
    .line 105
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@16
    add-long/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@19
    .line 107
    return-object v0
.end method

.method public static add(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 73
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    #@9
    add-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@c
    .line 74
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    #@10
    add-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@13
    .line 75
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    #@17
    add-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@1a
    .line 76
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    #@1e
    add-long/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@21
    .line 78
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 275
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 276
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    div-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@a
    .line 277
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@c
    div-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@f
    .line 278
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@11
    div-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@14
    .line 279
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@16
    div-long/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@19
    .line 281
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 247
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    #@9
    div-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@c
    .line 248
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    #@10
    div-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@13
    .line 249
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    #@17
    div-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@1a
    .line 250
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    #@1e
    div-long/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@21
    .line 252
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)J
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 379
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@7
    iget-wide v4, p0, Landroid/renderscript/Long4;->y:J

    #@9
    mul-long/2addr v2, v4

    #@a
    add-long/2addr v0, v2

    #@b
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@d
    iget-wide v4, p0, Landroid/renderscript/Long4;->z:J

    #@f
    mul-long/2addr v2, v4

    #@10
    add-long/2addr v0, v2

    #@11
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@13
    iget-wide v4, p0, Landroid/renderscript/Long4;->w:J

    #@15
    mul-long/2addr v2, v4

    #@16
    add-long/2addr v0, v2

    #@17
    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 333
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 334
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    rem-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@a
    .line 335
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@c
    rem-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@f
    .line 336
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@11
    rem-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@14
    .line 337
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@16
    rem-long/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@19
    .line 339
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 304
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 305
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    #@9
    rem-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@c
    .line 306
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    #@10
    rem-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@13
    .line 307
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    #@17
    rem-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@1a
    .line 308
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    #@1e
    rem-long/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@21
    .line 310
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 218
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    mul-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@a
    .line 219
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@c
    mul-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@f
    .line 220
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@11
    mul-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@14
    .line 221
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@16
    mul-long/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@19
    .line 223
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 189
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    #@9
    mul-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@c
    .line 190
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    #@10
    mul-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@13
    .line 191
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    #@17
    mul-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@1a
    .line 192
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    #@1e
    mul-long/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@21
    .line 194
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 160
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    sub-long/2addr v2, p1

    #@8
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@a
    .line 161
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@c
    sub-long/2addr v2, p1

    #@d
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@f
    .line 162
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@11
    sub-long/2addr v2, p1

    #@12
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@14
    .line 163
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@16
    sub-long/2addr v2, p1

    #@17
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@19
    .line 165
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 131
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    #@9
    sub-long/2addr v2, v4

    #@a
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@c
    .line 132
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@e
    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    #@10
    sub-long/2addr v2, v4

    #@11
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@13
    .line 133
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@15
    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    #@17
    sub-long/2addr v2, v4

    #@18
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@1a
    .line 134
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    #@1e
    sub-long/2addr v2, v4

    #@1f
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@21
    .line 136
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 87
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 88
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@7
    add-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    .line 89
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    add-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 90
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@11
    add-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@14
    .line 86
    return-void
.end method

.method public add(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 58
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@7
    .line 59
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@e
    .line 60
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@12
    add-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@15
    .line 61
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@17
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@19
    add-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    .line 57
    return-void
.end method

.method public addAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

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
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@e
    add-long/2addr v0, p2

    #@f
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@11
    .line 487
    return-void

    #@12
    .line 489
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@14
    add-long/2addr v0, p2

    #@15
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@17
    .line 490
    return-void

    #@18
    .line 492
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@1a
    add-long/2addr v0, p2

    #@1b
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@1d
    .line 493
    return-void

    #@1e
    .line 495
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@20
    add-long/2addr v0, p2

    #@21
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

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

.method public addMultiple(Landroid/renderscript/Long4;J)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;
    .param p2, "factor"    # J

    #@0
    .prologue
    .line 389
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    mul-long/2addr v2, p2

    #@5
    add-long/2addr v0, v2

    #@6
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@8
    .line 390
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@c
    mul-long/2addr v2, p2

    #@d
    add-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@10
    .line 391
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@12
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@14
    mul-long/2addr v2, p2

    #@15
    add-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@18
    .line 392
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@1a
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@1c
    mul-long/2addr v2, p2

    #@1d
    add-long/2addr v0, v2

    #@1e
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@20
    .line 388
    return-void
.end method

.method public copyTo([JI)V
    .locals 4
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 509
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    aput-wide v0, p1, p2

    #@4
    .line 510
    add-int/lit8 v0, p2, 0x1

    #@6
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@8
    aput-wide v2, p1, v0

    #@a
    .line 511
    add-int/lit8 v0, p2, 0x2

    #@c
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@e
    aput-wide v2, p1, v0

    #@10
    .line 512
    add-int/lit8 v0, p2, 0x3

    #@12
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@14
    aput-wide v2, p1, v0

    #@16
    .line 508
    return-void
.end method

.method public div(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 261
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    div-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 262
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@7
    div-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    .line 263
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    div-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 264
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@11
    div-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@14
    .line 260
    return-void
.end method

.method public div(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 232
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    div-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@7
    .line 233
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@b
    div-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@e
    .line 234
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@12
    div-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@15
    .line 235
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@17
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@19
    div-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    .line 231
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long4;)J
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 368
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@7
    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    #@9
    mul-long/2addr v2, v4

    #@a
    add-long/2addr v0, v2

    #@b
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@d
    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    #@f
    mul-long/2addr v2, v4

    #@10
    add-long/2addr v0, v2

    #@11
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@13
    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    #@15
    mul-long/2addr v2, v4

    #@16
    add-long/2addr v0, v2

    #@17
    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    #@0
    .prologue
    .line 428
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    #@4
    add-long/2addr v0, v2

    #@5
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    #@7
    add-long/2addr v0, v2

    #@8
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    #@a
    add-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@e
    return-wide v0

    #@f
    .line 442
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@11
    return-wide v0

    #@12
    .line 444
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@14
    return-wide v0

    #@15
    .line 446
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@17
    return-wide v0

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

.method public length()J
    .locals 2

    #@0
    .prologue
    .line 348
    const-wide/16 v0, 0x4

    #@2
    return-wide v0
.end method

.method public mod(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 319
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    rem-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 320
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@7
    rem-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    .line 321
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    rem-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 322
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@11
    rem-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@14
    .line 318
    return-void
.end method

.method public mod(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 290
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    rem-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@7
    .line 291
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@b
    rem-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@e
    .line 292
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@12
    rem-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@15
    .line 293
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@17
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@19
    rem-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    .line 289
    return-void
.end method

.method public mul(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 203
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    mul-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 204
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@7
    mul-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    .line 205
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    mul-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 206
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@11
    mul-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@14
    .line 202
    return-void
.end method

.method public mul(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 174
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    mul-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@7
    .line 175
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@b
    mul-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@e
    .line 176
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@12
    mul-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@15
    .line 177
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@17
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@19
    mul-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    .line 173
    return-void
.end method

.method public negate()V
    .locals 2

    #@0
    .prologue
    .line 355
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    neg-long v0, v0

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 356
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@7
    neg-long v0, v0

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    .line 357
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    neg-long v0, v0

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 358
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@11
    neg-long v0, v0

    #@12
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@14
    .line 354
    return-void
.end method

.method public set(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 401
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    #@2
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@4
    .line 402
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    #@6
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@8
    .line 403
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    #@a
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    .line 404
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    #@e
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@10
    .line 400
    return-void
.end method

.method public setAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

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
    iput-wide p2, p0, Landroid/renderscript/Long4;->x:J

    #@e
    .line 462
    return-void

    #@f
    .line 464
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long4;->y:J

    #@11
    .line 465
    return-void

    #@12
    .line 467
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Long4;->z:J

    #@14
    .line 468
    return-void

    #@15
    .line 470
    :pswitch_3
    iput-wide p2, p0, Landroid/renderscript/Long4;->w:J

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

.method public setValues(JJJJ)V
    .locals 1
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J

    #@0
    .prologue
    .line 416
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    #@2
    .line 417
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    #@4
    .line 418
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    #@6
    .line 419
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    #@8
    .line 415
    return-void
.end method

.method public sub(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 145
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    sub-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@5
    .line 146
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@7
    sub-long/2addr v0, p1

    #@8
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@a
    .line 147
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@c
    sub-long/2addr v0, p1

    #@d
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@f
    .line 148
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@11
    sub-long/2addr v0, p1

    #@12
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@14
    .line 144
    return-void
.end method

.method public sub(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 116
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@2
    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    #@4
    sub-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    #@7
    .line 117
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@9
    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    #@b
    sub-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    #@e
    .line 118
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@10
    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    #@12
    sub-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    #@15
    .line 119
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@17
    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    #@19
    sub-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    #@1c
    .line 115
    return-void
.end method
