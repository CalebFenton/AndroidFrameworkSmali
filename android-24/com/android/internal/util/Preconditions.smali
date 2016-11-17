.class public Lcom/android/internal/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


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

.method public static checkArgument(Z)V
    .locals 1
    .param p0, "expression"    # Z

    #@0
    .prologue
    .line 32
    if-nez p0, :cond_0

    #@2
    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 31
    :cond_0
    return-void
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 46
    if-nez p0, :cond_0

    #@2
    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 45
    :cond_0
    return-void
.end method

.method public static checkArgumentFinite(FLjava/lang/String;)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 251
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " must not be NaN"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 253
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, " must not be infinite"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 257
    :cond_1
    return p0
.end method

.method public static checkArgumentInRange(FFFLjava/lang/String;)F
    .locals 6
    .param p0, "value"    # F
    .param p1, "lower"    # F
    .param p2, "upper"    # F
    .param p3, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 277
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " must not be NaN"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 279
    :cond_0
    cmpg-float v0, p0, p1

    #@26
    if-gez v0, :cond_1

    #@28
    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    .line 282
    const-string/jumbo v1, "%s is out of range of [%f, %f] (too low)"

    #@2d
    .line 281
    new-array v2, v2, [Ljava/lang/Object;

    #@2f
    .line 282
    aput-object p3, v2, v3

    #@31
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@34
    move-result-object v3

    #@35
    aput-object v3, v2, v4

    #@37
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3a
    move-result-object v3

    #@3b
    aput-object v3, v2, v5

    #@3d
    .line 281
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 280
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 283
    :cond_1
    cmpl-float v0, p0, p2

    #@47
    if-lez v0, :cond_2

    #@49
    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4b
    .line 286
    const-string/jumbo v1, "%s is out of range of [%f, %f] (too high)"

    #@4e
    .line 285
    new-array v2, v2, [Ljava/lang/Object;

    #@50
    .line 286
    aput-object p3, v2, v3

    #@52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@55
    move-result-object v3

    #@56
    aput-object v3, v2, v4

    #@58
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5b
    move-result-object v3

    #@5c
    aput-object v3, v2, v5

    #@5e
    .line 285
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 284
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0

    #@66
    .line 289
    :cond_2
    return p0
.end method

.method public static checkArgumentInRange(IIILjava/lang/String;)I
    .locals 6
    .param p0, "value"    # I
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 306
    if-ge p0, p1, :cond_0

    #@6
    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 309
    const-string/jumbo v1, "%s is out of range of [%d, %d] (too low)"

    #@b
    .line 308
    new-array v2, v2, [Ljava/lang/Object;

    #@d
    .line 309
    aput-object p3, v2, v3

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v3

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v2, v5

    #@1b
    .line 308
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 307
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 310
    :cond_0
    if-le p0, p2, :cond_1

    #@25
    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    .line 313
    const-string/jumbo v1, "%s is out of range of [%d, %d] (too high)"

    #@2a
    .line 312
    new-array v2, v2, [Ljava/lang/Object;

    #@2c
    .line 313
    aput-object p3, v2, v3

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v3

    #@32
    aput-object v3, v2, v4

    #@34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v3

    #@38
    aput-object v3, v2, v5

    #@3a
    .line 312
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 311
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 316
    :cond_1
    return p0
.end method

.method public static checkArgumentInRange(JJJLjava/lang/String;)J
    .locals 6
    .param p0, "value"    # J
    .param p2, "lower"    # J
    .param p4, "upper"    # J
    .param p6, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 333
    cmp-long v0, p0, p2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 336
    const-string/jumbo v1, "%s is out of range of [%d, %d] (too low)"

    #@d
    .line 335
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    .line 336
    aput-object p6, v2, v3

    #@11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v4

    #@17
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v3

    #@1b
    aput-object v3, v2, v5

    #@1d
    .line 335
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 334
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 337
    :cond_0
    cmp-long v0, p0, p4

    #@27
    if-lez v0, :cond_1

    #@29
    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    .line 340
    const-string/jumbo v1, "%s is out of range of [%d, %d] (too high)"

    #@2e
    .line 339
    new-array v2, v2, [Ljava/lang/Object;

    #@30
    .line 340
    aput-object p6, v2, v3

    #@32
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@35
    move-result-object v3

    #@36
    aput-object v3, v2, v4

    #@38
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3b
    move-result-object v3

    #@3c
    aput-object v3, v2, v5

    #@3e
    .line 339
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 338
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 343
    :cond_1
    return-wide p0
.end method

.method public static checkArgumentNonnegative(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 183
    if-gez p0, :cond_0

    #@2
    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 187
    :cond_0
    return p0
.end method

.method public static checkArgumentNonnegative(ILjava/lang/String;)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    if-gez p0, :cond_0

    #@2
    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 171
    :cond_0
    return p0
.end method

.method public static checkArgumentNonnegative(J)J
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 198
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 202
    :cond_0
    return-wide p0
.end method

.method public static checkArgumentNonnegative(JLjava/lang/String;)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 214
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 218
    :cond_0
    return-wide p0
.end method

.method public static checkArgumentPositive(ILjava/lang/String;)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    if-gtz p0, :cond_0

    #@2
    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 234
    :cond_0
    return p0
.end method

.method public static checkArrayElementsInRange([FFFLjava/lang/String;)[F
    .locals 9
    .param p0, "value"    # [F
    .param p1, "lower"    # F
    .param p2, "upper"    # F
    .param p3, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, " must not be null"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 442
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@1e
    if-ge v0, v2, :cond_3

    #@20
    .line 443
    aget v1, p0, v0

    #@22
    .line 445
    .local v1, "v":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 446
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, "["

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, "] must not be NaN"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v2

    #@4d
    .line 447
    :cond_0
    cmpg-float v2, v1, p1

    #@4f
    if-gez v2, :cond_1

    #@51
    .line 448
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@53
    .line 449
    const-string/jumbo v3, "%s[%d] is out of range of [%f, %f] (too low)"

    #@56
    new-array v4, v4, [Ljava/lang/Object;

    #@58
    .line 450
    aput-object p3, v4, v5

    #@5a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v5

    #@5e
    aput-object v5, v4, v6

    #@60
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@63
    move-result-object v5

    #@64
    aput-object v5, v4, v7

    #@66
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@69
    move-result-object v5

    #@6a
    aput-object v5, v4, v8

    #@6c
    .line 449
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    .line 448
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v2

    #@74
    .line 451
    :cond_1
    cmpl-float v2, v1, p2

    #@76
    if-lez v2, :cond_2

    #@78
    .line 452
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7a
    .line 453
    const-string/jumbo v3, "%s[%d] is out of range of [%f, %f] (too high)"

    #@7d
    new-array v4, v4, [Ljava/lang/Object;

    #@7f
    .line 454
    aput-object p3, v4, v5

    #@81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v5

    #@85
    aput-object v5, v4, v6

    #@87
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8a
    move-result-object v5

    #@8b
    aput-object v5, v4, v7

    #@8d
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@90
    move-result-object v5

    #@91
    aput-object v5, v4, v8

    #@93
    .line 453
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    .line 452
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v2

    #@9b
    .line 442
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@9d
    goto :goto_0

    #@9e
    .line 458
    .end local v1    # "v":F
    :cond_3
    return-object p0
.end method

.method public static checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    #@2
    .line 358
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, " must not be null"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 361
    :cond_0
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@1e
    if-ge v0, v1, :cond_2

    #@20
    .line 362
    aget-object v1, p0, v0

    #@22
    if-nez v1, :cond_1

    #@24
    .line 363
    new-instance v1, Ljava/lang/NullPointerException;

    #@26
    .line 364
    const-string/jumbo v2, "%s[%d] must not be null"

    #@29
    const/4 v3, 0x2

    #@2a
    new-array v3, v3, [Ljava/lang/Object;

    #@2c
    const/4 v4, 0x0

    #@2d
    aput-object p1, v3, v4

    #@2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v4

    #@33
    const/4 v5, 0x1

    #@34
    aput-object v4, v3, v5

    #@36
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 363
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1

    #@3e
    .line 361
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 368
    :cond_2
    return-object p0
.end method

.method public static checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<TT;>;T:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    #@0
    .prologue
    .line 384
    .local p0, "value":Ljava/util/Collection;, "TC;"
    if-nez p0, :cond_0

    #@2
    .line 385
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    const-string/jumbo v6, " must not be null"

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 388
    :cond_0
    const-wide/16 v0, 0x0

    #@1e
    .line 389
    .local v0, "ctr":J
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    .local v3, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_2

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .line 390
    .local v2, "elem":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    #@2e
    .line 391
    new-instance v4, Ljava/lang/NullPointerException;

    #@30
    .line 392
    const-string/jumbo v5, "%s[%d] must not be null"

    #@33
    const/4 v6, 0x2

    #@34
    new-array v6, v6, [Ljava/lang/Object;

    #@36
    const/4 v7, 0x0

    #@37
    aput-object p1, v6, v7

    #@39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3c
    move-result-object v7

    #@3d
    const/4 v8, 0x1

    #@3e
    aput-object v7, v6, v8

    #@40
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 391
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@47
    throw v4

    #@48
    .line 394
    :cond_1
    const-wide/16 v4, 0x1

    #@4a
    add-long/2addr v0, v4

    #@4b
    goto :goto_0

    #@4c
    .line 397
    .end local v2    # "elem":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object p0
.end method

.method public static checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    .local p0, "value":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 414
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " must not be null"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 416
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " is empty"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 419
    :cond_1
    return-object p0
.end method

.method public static checkFlagsArgument(II)I
    .locals 3
    .param p0, "requestedFlags"    # I
    .param p1, "allowedFlags"    # I

    #@0
    .prologue
    .line 148
    and-int v0, p0, p1

    #@2
    if-eq v0, p0, :cond_0

    #@4
    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Requested flags 0x"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 150
    const-string/jumbo v2, ", but only 0x"

    #@1d
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 151
    const-string/jumbo v2, " are allowed"

    #@2c
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 154
    :cond_0
    return p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 93
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 96
    :cond_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 113
    :cond_0
    return-object p0
.end method

.method public static checkState(Z)V
    .locals 1
    .param p0, "expression"    # Z

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@4
    .line 137
    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    if-nez p0, :cond_0

    #@2
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 124
    :cond_0
    return-void
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 63
    :cond_0
    return-object p0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 81
    :cond_0
    return-object p0
.end method
