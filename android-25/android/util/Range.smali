.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const-string/jumbo v0, "lower must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Comparable;

    #@c
    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@e
    .line 56
    const-string/jumbo v0, "upper must not be null"

    #@11
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Comparable;

    #@17
    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@19
    .line 58
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    if-lez v0, :cond_0

    #@1f
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "lower must be less than or equal to upper"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 54
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p0, "lower":Ljava/lang/Comparable;, "TT;"
    .local p1, "upper":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Landroid/util/Range;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 176
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@8
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    if-gez v0, :cond_0

    #@e
    .line 177
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@10
    return-object v0

    #@11
    .line 178
    :cond_0
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@13
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    if-lez v0, :cond_1

    #@19
    .line 179
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@1b
    return-object v0

    #@1c
    .line 181
    :cond_1
    return-object p1
.end method

.method public contains(Landroid/util/Range;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 132
    const-string/jumbo v3, "value must not be null"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 134
    iget-object v3, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@9
    iget-object v4, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@b
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    move-result v3

    #@f
    if-ltz v3, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 135
    .local v0, "gteLower":Z
    :goto_0
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@14
    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@16
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@19
    move-result v3

    #@1a
    if-gtz v3, :cond_1

    #@1c
    const/4 v1, 0x1

    #@1d
    .line 137
    .local v1, "lteUpper":Z
    :goto_1
    if-eqz v0, :cond_2

    #@1f
    .end local v1    # "lteUpper":Z
    :goto_2
    return v1

    #@20
    .line 134
    .end local v0    # "gteLower":Z
    :cond_0
    const/4 v0, 0x0

    #@21
    .restart local v0    # "gteLower":Z
    goto :goto_0

    #@22
    .line 135
    :cond_1
    const/4 v1, 0x0

    #@23
    .restart local v1    # "lteUpper":Z
    goto :goto_1

    #@24
    :cond_2
    move v1, v2

    #@25
    .line 137
    goto :goto_2
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 112
    const-string/jumbo v3, "value must not be null"

    #@4
    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 114
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@9
    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@c
    move-result v3

    #@d
    if-ltz v3, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 115
    .local v0, "gteLower":Z
    :goto_0
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@12
    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@15
    move-result v3

    #@16
    if-gtz v3, :cond_1

    #@18
    const/4 v1, 0x1

    #@19
    .line 117
    .local v1, "lteUpper":Z
    :goto_1
    if-eqz v0, :cond_2

    #@1b
    .end local v1    # "lteUpper":Z
    :goto_2
    return v1

    #@1c
    .line 114
    .end local v0    # "gteLower":Z
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "gteLower":Z
    goto :goto_0

    #@1e
    .line 115
    :cond_1
    const/4 v1, 0x0

    #@1f
    .restart local v1    # "lteUpper":Z
    goto :goto_1

    #@20
    :cond_2
    move v1, v2

    #@21
    .line 117
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 150
    if-nez p1, :cond_0

    #@3
    .line 151
    return v1

    #@4
    .line 152
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 153
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 154
    :cond_1
    instance-of v2, p1, Landroid/util/Range;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 156
    check-cast v0, Landroid/util/Range;

    #@f
    .line 157
    .local v0, "other":Landroid/util/Range;
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@11
    iget-object v3, v0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@1b
    iget-object v2, v0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    :cond_2
    return v1

    #@22
    .line 159
    .end local v0    # "other":Landroid/util/Range;
    :cond_3
    return v1
.end method

.method public extend(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 273
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v2, "range must not be null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 275
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@8
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@a
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 276
    .local v0, "cmpLower":I
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@10
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@12
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@15
    move-result v1

    #@16
    .line 278
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 280
    return-object p1

    #@1b
    .line 281
    :cond_0
    if-ltz v0, :cond_1

    #@1d
    if-gtz v1, :cond_1

    #@1f
    .line 283
    return-object p0

    #@20
    .line 286
    :cond_1
    if-ltz v0, :cond_2

    #@22
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@24
    move-object v3, v2

    #@25
    .line 287
    :goto_0
    if-gtz v1, :cond_3

    #@27
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@29
    .line 285
    :goto_1
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .line 286
    :cond_2
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@30
    move-object v3, v2

    #@31
    goto :goto_0

    #@32
    .line 287
    :cond_3
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@34
    goto :goto_1
.end method

.method public extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 335
    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v2, "lower must not be null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 306
    const-string/jumbo v2, "upper must not be null"

    #@9
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 308
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@e
    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    .line 309
    .local v0, "cmpLower":I
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@14
    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    .line 311
    .local v1, "cmpUpper":I
    if-ltz v0, :cond_0

    #@1a
    if-gtz v1, :cond_0

    #@1c
    .line 313
    return-object p0

    #@1d
    .line 316
    :cond_0
    if-ltz v0, :cond_1

    #@1f
    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@21
    .line 317
    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    :cond_1
    if-gtz v1, :cond_2

    #@23
    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@25
    .line 315
    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public getLower()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@2
    return-object v0
.end method

.method public getUpper()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 96
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 353
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Comparable;

    #@3
    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public intersect(Landroid/util/Range;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v2, "range must not be null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 207
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@8
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@a
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 208
    .local v0, "cmpLower":I
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@10
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@12
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@15
    move-result v1

    #@16
    .line 210
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 212
    return-object p0

    #@1b
    .line 213
    :cond_0
    if-ltz v0, :cond_1

    #@1d
    if-gtz v1, :cond_1

    #@1f
    .line 215
    return-object p1

    #@20
    .line 218
    :cond_1
    if-gtz v0, :cond_2

    #@22
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@24
    move-object v3, v2

    #@25
    .line 219
    :goto_0
    if-ltz v1, :cond_3

    #@27
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@29
    .line 217
    :goto_1
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .line 218
    :cond_2
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@30
    move-object v3, v2

    #@31
    goto :goto_0

    #@32
    .line 219
    :cond_3
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@34
    goto :goto_1
.end method

.method public intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v2, "lower must not be null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 238
    const-string/jumbo v2, "upper must not be null"

    #@9
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 240
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@e
    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    .line 241
    .local v0, "cmpLower":I
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@14
    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    .line 243
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_0

    #@1a
    if-ltz v1, :cond_0

    #@1c
    .line 245
    return-object p0

    #@1d
    .line 248
    :cond_0
    if-gtz v0, :cond_1

    #@1f
    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@21
    .line 249
    .end local p1    # "lower":Ljava/lang/Comparable;, "TT;"
    :cond_1
    if-ltz v1, :cond_2

    #@23
    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@25
    .line 247
    .end local p2    # "upper":Ljava/lang/Comparable;, "TT;"
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 345
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "[%s, %s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method
