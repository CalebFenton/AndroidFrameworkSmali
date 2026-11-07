.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 59
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 61
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    .line 64
    return-void

    .line 62
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "lower":Ljava/lang/Comparable;, "TT;"
    .local p1, "upper":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 177
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    .line 180
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0

    .line 181
    :cond_11
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 182
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0

    .line 184
    :cond_1c
    return-object p1
.end method

.method public whitelist contains(Landroid/util/Range;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)Z"
        }
    .end annotation

    .line 135
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 138
    .local v0, "gteLower":Z
    :goto_15
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    .line 140
    .local v3, "lteUpper":Z
    :goto_22
    if-eqz v0, :cond_27

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1
.end method

.method public whitelist contains(Ljava/lang/Comparable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 115
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 118
    .local v0, "gteLower":Z
    :goto_13
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 120
    .local v3, "lteUpper":Z
    :goto_1e
    if-eqz v0, :cond_23

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 153
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 154
    return v0

    .line 155
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 156
    return v1

    .line 157
    :cond_8
    instance-of v2, p1, Landroid/util/Range;

    if-eqz v2, :cond_25

    .line 159
    move-object v2, p1

    check-cast v2, Landroid/util/Range;

    .line 160
    .local v2, "other":Landroid/util/Range;
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v4, v2, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, v2, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v0, v1

    :cond_24
    return v0

    .line 162
    .end local v2    # "other":Landroid/util/Range;
    :cond_25
    return v0
.end method

.method public whitelist extend(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 276
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "range must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 279
    .local v0, "cmpLower":I
    iget-object v1, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 281
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    .line 283
    return-object p1

    .line 284
    :cond_1b
    if-ltz v0, :cond_20

    if-gtz v1, :cond_20

    .line 286
    return-object p0

    .line 289
    :cond_20
    if-ltz v0, :cond_25

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_27

    :cond_25
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 290
    :goto_27
    if-gtz v1, :cond_2c

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_2e

    :cond_2c
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 288
    :goto_2e
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 312
    .local v0, "cmpLower":I
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 314
    .local v1, "cmpUpper":I
    if-ltz v0, :cond_1c

    if-gtz v1, :cond_1c

    .line 316
    return-object p0

    .line 319
    :cond_1c
    if-ltz v0, :cond_21

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_22

    :cond_21
    move-object v2, p1

    .line 320
    :goto_22
    if-gtz v1, :cond_27

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_28

    :cond_27
    move-object v3, p2

    .line 318
    :goto_28
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getLower()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public whitelist getUpper()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 356
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist intersect(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "range must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, "cmpLower":I
    iget-object v1, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 213
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    .line 215
    return-object p0

    .line 216
    :cond_1b
    if-ltz v0, :cond_20

    if-gtz v1, :cond_20

    .line 218
    return-object p1

    .line 221
    :cond_20
    if-gtz v0, :cond_25

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_27

    :cond_25
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 222
    :goto_27
    if-ltz v1, :cond_2c

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_2e

    :cond_2c
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 220
    :goto_2e
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 244
    .local v0, "cmpLower":I
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 246
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1c

    if-ltz v1, :cond_1c

    .line 248
    return-object p0

    .line 251
    :cond_1c
    if-gtz v0, :cond_21

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_22

    :cond_21
    move-object v2, p1

    .line 252
    :goto_22
    if-ltz v1, :cond_27

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_28

    :cond_27
    move-object v3, p2

    .line 250
    :goto_28
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 348
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s, %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
