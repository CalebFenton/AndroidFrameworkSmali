.class public final Landroid/icu/impl/duration/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field final counts:[I

.field final inFuture:Z

.field final timeLimit:B


# direct methods
.method private constructor <init>(IZFLandroid/icu/impl/duration/TimeUnit;)V
    .locals 3
    .param p1, "limit"    # I
    .param p2, "future"    # Z
    .param p3, "count"    # F
    .param p4, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 292
    int-to-byte v0, p1

    #@4
    iput-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@6
    .line 293
    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@8
    .line 294
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@a
    array-length v0, v0

    #@b
    new-array v0, v0, [I

    #@d
    iput-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@f
    .line 295
    iget-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@11
    iget-byte v1, p4, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@13
    const/high16 v2, 0x447a0000    # 1000.0f

    #@15
    mul-float/2addr v2, p3

    #@16
    float-to-int v2, v2

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    aput v2, v0, v1

    #@1b
    .line 291
    return-void
.end method

.method constructor <init>(IZ[I)V
    .locals 1
    .param p1, "timeLimit"    # I
    .param p2, "inFuture"    # Z
    .param p3, "counts"    # [I

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 302
    int-to-byte v0, p1

    #@4
    iput-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@6
    .line 303
    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@8
    .line 304
    iput-object p3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@a
    .line 301
    return-void
.end method

.method public static at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 2
    .param p0, "count"    # F
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 40
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    #@4
    .line 41
    new-instance v0, Landroid/icu/impl/duration/Period;

    #@6
    invoke-direct {v0, v1, v1, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    #@9
    return-object v0
.end method

.method private static checkCount(F)V
    .locals 3
    .param p0, "count"    # F

    #@0
    .prologue
    .line 368
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "count ("

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 370
    const-string/jumbo v2, ") cannot be negative"

    #@1a
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 367
    :cond_0
    return-void
.end method

.method public static lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 3
    .param p0, "count"    # F
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 64
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    #@3
    .line 65
    new-instance v0, Landroid/icu/impl/duration/Period;

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    #@a
    return-object v0
.end method

.method public static moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 3
    .param p0, "count"    # F
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 52
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    #@3
    .line 53
    new-instance v0, Landroid/icu/impl/duration/Period;

    #@5
    const/4 v1, 0x2

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    #@a
    return-object v0
.end method

.method private setFuture(Z)Landroid/icu/impl/duration/Period;
    .locals 3
    .param p1, "future"    # Z

    #@0
    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 345
    new-instance v0, Landroid/icu/impl/duration/Period;

    #@6
    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@8
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@a
    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    #@d
    return-object v0

    #@e
    .line 347
    :cond_0
    return-object p0
.end method

.method private setTimeLimit(B)Landroid/icu/impl/duration/Period;
    .locals 3
    .param p1, "limit"    # B

    #@0
    .prologue
    .line 357
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 358
    new-instance v0, Landroid/icu/impl/duration/Period;

    #@6
    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@8
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@a
    invoke-direct {v0, p1, v1, v2}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    #@d
    return-object v0

    #@e
    .line 361
    :cond_0
    return-object p0
.end method

.method private setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;
    .locals 6
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 326
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@2
    .line 327
    .local v2, "ord":I
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@4
    aget v3, v3, v2

    #@6
    if-eq v3, p2, :cond_1

    #@8
    .line 328
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@a
    array-length v3, v3

    #@b
    new-array v1, v3, [I

    #@d
    .line 329
    .local v1, "newCounts":[I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@10
    array-length v3, v3

    #@11
    if-ge v0, v3, :cond_0

    #@13
    .line 330
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@15
    aget v3, v3, v0

    #@17
    aput v3, v1, v0

    #@19
    .line 329
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 332
    :cond_0
    aput p2, v1, v2

    #@1e
    .line 333
    new-instance v3, Landroid/icu/impl/duration/Period;

    #@20
    iget-byte v4, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@22
    iget-boolean v5, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@24
    invoke-direct {v3, v4, v5, v1}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    #@27
    return-object v3

    #@28
    .line 335
    .end local v0    # "i":I
    .end local v1    # "newCounts":[I
    :cond_1
    return-object p0
.end method

.method private setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;
    .locals 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 311
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p2, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "value: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 314
    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    #@21
    mul-float/2addr v0, p2

    #@22
    float-to-int v0, v0

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method


# virtual methods
.method public and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 1
    .param p1, "count"    # F
    .param p2, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 80
    invoke-static {p1}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    #@3
    .line 81
    invoke-direct {p0, p2, p1}, Landroid/icu/impl/duration/Period;->setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public at()Landroid/icu/impl/duration/Period;
    .locals 1

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public equals(Landroid/icu/impl/duration/Period;)Z
    .locals 4
    .param p1, "rhs"    # Landroid/icu/impl/duration/Period;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    if-eqz p1, :cond_2

    #@3
    .line 264
    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@5
    iget-byte v2, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@7
    if-ne v1, v2, :cond_2

    #@9
    .line 265
    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@b
    iget-boolean v2, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@d
    if-ne v1, v2, :cond_2

    #@f
    .line 266
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@12
    array-length v1, v1

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 267
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@17
    aget v1, v1, v0

    #@19
    iget-object v2, p1, Landroid/icu/impl/duration/Period;->counts:[I

    #@1b
    aget v2, v2, v0

    #@1d
    if-eq v1, v2, :cond_0

    #@1f
    .line 268
    return v3

    #@20
    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 271
    :cond_1
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 273
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 245
    :try_start_0
    check-cast p1, Landroid/icu/impl/duration/Period;

    #@2
    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/Period;->equals(Landroid/icu/impl/duration/Period;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 247
    :catch_0
    move-exception v0

    #@8
    .line 248
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getCount(Landroid/icu/impl/duration/TimeUnit;)F
    .locals 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 190
    iget-byte v0, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@2
    .line 191
    .local v0, "ord":I
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@4
    aget v1, v1, v0

    #@6
    if-nez v1, :cond_0

    #@8
    .line 192
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 194
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@c
    aget v1, v1, v0

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    int-to-float v1, v1

    #@11
    const/high16 v2, 0x447a0000    # 1000.0f

    #@13
    div-float/2addr v1, v2

    #@14
    return v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 281
    iget-byte v2, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@2
    shl-int/lit8 v3, v2, 0x1

    #@4
    iget-boolean v2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v2, 0x1

    #@9
    :goto_0
    or-int v0, v3, v2

    #@b
    .line 282
    .local v0, "hc":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@e
    array-length v2, v2

    #@f
    if-ge v1, v2, :cond_1

    #@11
    .line 283
    shl-int/lit8 v2, v0, 0x2

    #@13
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@15
    aget v3, v3, v1

    #@17
    xor-int v0, v2, v3

    #@19
    .line 282
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 281
    .end local v0    # "hc":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 285
    .restart local v0    # "hc":I
    .restart local v1    # "i":I
    :cond_1
    return v0
.end method

.method public inFuture()Landroid/icu/impl/duration/Period;
    .locals 1

    #@0
    .prologue
    .line 127
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public inFuture(Z)Landroid/icu/impl/duration/Period;
    .locals 1
    .param p1, "future"    # Z

    #@0
    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public inPast()Landroid/icu/impl/duration/Period;
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public inPast(Z)Landroid/icu/impl/duration/Period;
    .locals 1
    .param p1, "past"    # Z

    #@0
    .prologue
    .line 158
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public isInFuture()Z
    .locals 1

    #@0
    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@2
    return v0
.end method

.method public isInPast()Z
    .locals 1

    #@0
    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public isLessThan()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 234
    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isMoreThan()Z
    .locals 2

    #@0
    .prologue
    .line 224
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isSet()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 167
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@9
    aget v1, v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 168
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 171
    :cond_1
    return v2
.end method

.method public isSet(Landroid/icu/impl/duration/TimeUnit;)Z
    .locals 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 180
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    #@3
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@5
    aget v1, v1, v2

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public lessThan()Landroid/icu/impl/duration/Period;
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public moreThan()Landroid/icu/impl/duration/Period;
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public omit(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .locals 1
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
