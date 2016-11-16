.class public final Landroid/util/SizeF;
.super Ljava/lang/Object;
.source "SizeF.java"


# instance fields
.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const-string/jumbo v0, "width"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/util/SizeF;->mWidth:F

    #@c
    .line 44
    const-string/jumbo v0, "height"

    #@f
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/util/SizeF;->mHeight:F

    #@15
    .line 42
    return-void
.end method

.method private static invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid SizeF: \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\""

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public static parseSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const-string/jumbo v3, "string must not be null"

    #@3
    invoke-static {p0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 137
    const/16 v3, 0x2a

    #@8
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v2

    #@c
    .line 138
    .local v2, "sep_ix":I
    if-gez v2, :cond_0

    #@e
    .line 139
    const/16 v3, 0x78

    #@10
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v2

    #@14
    .line 141
    :cond_0
    if-gez v2, :cond_1

    #@16
    .line 142
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@19
    move-result-object v3

    #@1a
    throw v3

    #@1b
    .line 145
    :cond_1
    :try_start_0
    new-instance v3, Landroid/util/SizeF;

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@25
    move-result v4

    #@26
    .line 146
    add-int/lit8 v5, v2, 0x1

    #@28
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@2f
    move-result v5

    #@30
    .line 145
    invoke-direct {v3, v4, v5}, Landroid/util/SizeF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    return-object v3

    #@34
    .line 149
    :catch_0
    move-exception v0

    #@35
    .line 150
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@38
    move-result-object v3

    #@39
    throw v3

    #@3a
    .line 147
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@3b
    .line 148
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/SizeF;->invalidSizeF(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@3e
    move-result-object v3

    #@3f
    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 76
    if-nez p1, :cond_0

    #@4
    .line 77
    return v2

    #@5
    .line 79
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 80
    return v1

    #@8
    .line 82
    :cond_1
    instance-of v3, p1, Landroid/util/SizeF;

    #@a
    if-eqz v3, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 83
    check-cast v0, Landroid/util/SizeF;

    #@f
    .line 84
    .local v0, "other":Landroid/util/SizeF;
    iget v3, p0, Landroid/util/SizeF;->mWidth:F

    #@11
    iget v4, v0, Landroid/util/SizeF;->mWidth:F

    #@13
    cmpl-float v3, v3, v4

    #@15
    if-nez v3, :cond_2

    #@17
    iget v3, p0, Landroid/util/SizeF;->mHeight:F

    #@19
    iget v4, v0, Landroid/util/SizeF;->mHeight:F

    #@1b
    cmpl-float v3, v3, v4

    #@1d
    if-nez v3, :cond_2

    #@1f
    :goto_0
    return v1

    #@20
    :cond_2
    move v1, v2

    #@21
    goto :goto_0

    #@22
    .line 86
    .end local v0    # "other":Landroid/util/SizeF;
    :cond_3
    return v2
.end method

.method public getHeight()F
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/util/SizeF;->mHeight:F

    #@2
    return v0
.end method

.method public getWidth()F
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 159
    iget v0, p0, Landroid/util/SizeF;->mWidth:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/util/SizeF;->mHeight:F

    #@8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Landroid/util/SizeF;->mWidth:F

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "x"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Landroid/util/SizeF;->mHeight:F

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
