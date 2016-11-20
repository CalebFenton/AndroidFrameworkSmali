.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 6
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    #@3
    .line 238
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 239
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "There must be at least two control points and the arrays must be of equal length."

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 238
    :cond_1
    array-length v2, p1

    #@11
    array-length v3, p2

    #@12
    if-ne v2, v3, :cond_0

    #@14
    array-length v2, p1

    #@15
    const/4 v3, 0x2

    #@16
    if-lt v2, v3, :cond_0

    #@18
    .line 242
    array-length v0, p1

    #@19
    .line 243
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    #@1b
    new-array v2, v2, [F

    #@1d
    iput-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    #@1f
    .line 244
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    #@22
    if-ge v1, v2, :cond_2

    #@24
    .line 245
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    #@26
    add-int/lit8 v3, v1, 0x1

    #@28
    aget v3, p2, v3

    #@2a
    aget v4, p2, v1

    #@2c
    sub-float/2addr v3, v4

    #@2d
    add-int/lit8 v4, v1, 0x1

    #@2f
    aget v4, p1, v4

    #@31
    aget v5, p1, v1

    #@33
    sub-float/2addr v4, v5

    #@34
    div-float/2addr v3, v4

    #@35
    aput v3, v2, v1

    #@37
    .line 244
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 247
    :cond_2
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@3c
    .line 248
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    #@3e
    .line 237
    return-void
.end method


# virtual methods
.method public interpolate(F)F
    .locals 5
    .param p1, "x"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 254
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@3
    array-length v1, v2

    #@4
    .line 255
    .local v1, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 256
    return p1

    #@b
    .line 258
    :cond_0
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@d
    aget v2, v2, v3

    #@f
    cmpg-float v2, p1, v2

    #@11
    if-gtz v2, :cond_1

    #@13
    .line 259
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    #@15
    aget v2, v2, v3

    #@17
    return v2

    #@18
    .line 261
    :cond_1
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@1a
    add-int/lit8 v3, v1, -0x1

    #@1c
    aget v2, v2, v3

    #@1e
    cmpl-float v2, p1, v2

    #@20
    if-ltz v2, :cond_2

    #@22
    .line 262
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    #@24
    add-int/lit8 v3, v1, -0x1

    #@26
    aget v2, v2, v3

    #@28
    return v2

    #@29
    .line 267
    :cond_2
    const/4 v0, 0x0

    #@2a
    .line 268
    .local v0, "i":I
    :cond_3
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@2c
    add-int/lit8 v3, v0, 0x1

    #@2e
    aget v2, v2, v3

    #@30
    cmpl-float v2, p1, v2

    #@32
    if-ltz v2, :cond_4

    #@34
    .line 269
    add-int/lit8 v0, v0, 0x1

    #@36
    .line 270
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@38
    aget v2, v2, v0

    #@3a
    cmpl-float v2, p1, v2

    #@3c
    if-nez v2, :cond_3

    #@3e
    .line 271
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    #@40
    aget v2, v2, v0

    #@42
    return v2

    #@43
    .line 274
    :cond_4
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    #@45
    aget v2, v2, v0

    #@47
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    #@49
    aget v3, v3, v0

    #@4b
    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@4d
    aget v4, v4, v0

    #@4f
    sub-float v4, p1, v4

    #@51
    mul-float/2addr v3, v4

    #@52
    add-float/2addr v2, v3

    #@53
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 280
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@7
    array-length v1, v3

    #@8
    .line 281
    .local v1, "n":I
    const-string/jumbo v3, "LinearSpline{["

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 282
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@11
    .line 283
    if-eqz v0, :cond_0

    #@13
    .line 284
    const-string/jumbo v3, ", "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 286
    :cond_0
    const-string/jumbo v3, "("

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    #@22
    aget v4, v4, v0

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@27
    .line 287
    const-string/jumbo v3, ", "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    #@30
    aget v4, v4, v0

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@35
    .line 288
    add-int/lit8 v3, v1, -0x1

    #@37
    if-ge v0, v3, :cond_1

    #@39
    .line 289
    const-string/jumbo v3, ": "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    #@42
    aget v4, v4, v0

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@47
    .line 291
    :cond_1
    const-string/jumbo v3, ")"

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 282
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 293
    :cond_2
    const-string/jumbo v3, "]}"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    return-object v3
.end method
