.class public final Landroid/icu/impl/duration/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field final blacklist counts:[I

.field final blacklist inFuture:Z

.field final blacklist timeLimit:B


# direct methods
.method private constructor blacklist <init>(IZFLandroid/icu/impl/duration/TimeUnit;)V
    .registers 8
    .param p1, "limit"    # I
    .param p2, "future"    # Z
    .param p3, "count"    # F
    .param p4, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    .line 299
    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    .line 300
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    .line 301
    iget-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-byte v1, p4, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 302
    return-void
.end method

.method constructor blacklist <init>(IZ[I)V
    .registers 5
    .param p1, "timeLimit"    # I
    .param p2, "inFuture"    # Z
    .param p3, "counts"    # [I

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    .line 309
    iput-boolean p2, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    .line 310
    iput-object p3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    .line 311
    return-void
.end method

.method public static blacklist at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .registers 4
    .param p0, "count"    # F
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 44
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 45
    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method private static blacklist checkCount(F)V
    .registers 4
    .param p0, "count"    # F

    .line 374
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_6

    .line 378
    return-void

    .line 375
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .registers 5
    .param p0, "count"    # F
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 68
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 69
    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method public static blacklist moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .registers 5
    .param p0, "count"    # F
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 56
    invoke-static {p0}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 57
    new-instance v0, Landroid/icu/impl/duration/Period;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/icu/impl/duration/Period;-><init>(IZFLandroid/icu/impl/duration/TimeUnit;)V

    return-object v0
.end method

.method private blacklist setFuture(Z)Landroid/icu/impl/duration/Period;
    .registers 5
    .param p1, "future"    # Z

    .line 350
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-eq v0, p1, :cond_e

    .line 351
    new-instance v0, Landroid/icu/impl/duration/Period;

    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v0

    .line 353
    :cond_e
    return-object p0
.end method

.method private blacklist setTimeLimit(B)Landroid/icu/impl/duration/Period;
    .registers 5
    .param p1, "limit"    # B

    .line 363
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-eq v0, p1, :cond_e

    .line 364
    new-instance v0, Landroid/icu/impl/duration/Period;

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {v0, p1, v1, v2}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v0

    .line 367
    :cond_e
    return-object p0
.end method

.method private blacklist setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;
    .registers 8
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "value"    # I

    .line 332
    iget-byte v0, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 333
    .local v0, "ord":I
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    if-eq v1, p2, :cond_28

    .line 334
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 335
    .local v1, "newCounts":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 336
    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v2

    aput v3, v1, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 338
    .end local v2    # "i":I
    :cond_1c
    aput p2, v1, v0

    .line 339
    new-instance v2, Landroid/icu/impl/duration/Period;

    iget-byte v3, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-boolean v4, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    invoke-direct {v2, v3, v4, v1}, Landroid/icu/impl/duration/Period;-><init>(IZ[I)V

    return-object v2

    .line 341
    .end local v1    # "newCounts":[I
    :cond_28
    return-object p0
.end method

.method private blacklist setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;
    .registers 6
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "value"    # F

    .line 317
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_10

    .line 320
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0

    .line 318
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .registers 4
    .param p1, "count"    # F
    .param p2, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 84
    invoke-static {p1}, Landroid/icu/impl/duration/Period;->checkCount(F)V

    .line 85
    invoke-direct {p0, p2, p1}, Landroid/icu/impl/duration/Period;->setTimeUnitValue(Landroid/icu/impl/duration/TimeUnit;F)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist at()Landroid/icu/impl/duration/Period;
    .registers 2

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist equals(Landroid/icu/impl/duration/Period;)Z
    .registers 6
    .param p1, "rhs"    # Landroid/icu/impl/duration/Period;

    .line 268
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    iget-byte v1, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-byte v2, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    if-ne v1, v2, :cond_25

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-boolean v2, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    if-ne v1, v2, :cond_25

    .line 271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 272
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v2, v2, v1

    iget-object v3, p1, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_20

    .line 273
    return v0

    .line 271
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 276
    .end local v1    # "i":I
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 278
    :cond_25
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 250
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/duration/Period;

    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/Period;->equals(Landroid/icu/impl/duration/Period;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 252
    :catch_8
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getCount(Landroid/icu/impl/duration/TimeUnit;)F
    .registers 5
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 194
    iget-byte v0, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 195
    .local v0, "ord":I
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    if-nez v1, :cond_a

    .line 196
    const/4 v1, 0x0

    return v1

    .line 198
    :cond_a
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 287
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    or-int/2addr v0, v1

    .line 288
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 289
    shl-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v3, v3, v1

    xor-int v0, v2, v3

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 291
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public blacklist inFuture()Landroid/icu/impl/duration/Period;
    .registers 2

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist inFuture(Z)Landroid/icu/impl/duration/Period;
    .registers 3
    .param p1, "future"    # Z

    .line 151
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist inPast()Landroid/icu/impl/duration/Period;
    .registers 2

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist inPast(Z)Landroid/icu/impl/duration/Period;
    .registers 3
    .param p1, "past"    # Z

    .line 162
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setFuture(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isInFuture()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    return v0
.end method

.method public blacklist isInPast()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/icu/impl/duration/Period;->inFuture:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isLessThan()Z
    .registers 3

    .line 238
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist isMoreThan()Z
    .registers 3

    .line 228
    iget-byte v0, p0, Landroid/icu/impl/duration/Period;->timeLimit:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSet()Z
    .registers 3

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 171
    iget-object v1, p0, Landroid/icu/impl/duration/Period;->counts:[I

    aget v1, v1, v0

    if-eqz v1, :cond_e

    .line 172
    const/4 v1, 0x1

    return v1

    .line 170
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSet(Landroid/icu/impl/duration/TimeUnit;)Z
    .registers 4
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 184
    iget-object v0, p0, Landroid/icu/impl/duration/Period;->counts:[I

    iget-byte v1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    aget v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist lessThan()Landroid/icu/impl/duration/Period;
    .registers 2

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist moreThan()Landroid/icu/impl/duration/Period;
    .registers 2

    .line 113
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/Period;->setTimeLimit(B)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist omit(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;
    .registers 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/Period;->setTimeUnitInternalValue(Landroid/icu/impl/duration/TimeUnit;I)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method
