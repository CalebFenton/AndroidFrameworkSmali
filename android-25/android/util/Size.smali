.class public final Landroid/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput p1, p0, Landroid/util/Size;->mWidth:I

    #@5
    .line 33
    iput p2, p0, Landroid/util/Size;->mHeight:I

    #@7
    .line 31
    return-void
.end method

.method private static invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid Size: \""

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

.method public static parseSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const-string/jumbo v2, "string must not be null"

    #@3
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 126
    const/16 v2, 0x2a

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v1

    #@c
    .line 127
    .local v1, "sep_ix":I
    if-gez v1, :cond_0

    #@e
    .line 128
    const/16 v2, 0x78

    #@10
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v1

    #@14
    .line 130
    :cond_0
    if-gez v1, :cond_1

    #@16
    .line 131
    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@19
    move-result-object v2

    #@1a
    throw v2

    #@1b
    .line 134
    :cond_1
    :try_start_0
    new-instance v2, Landroid/util/Size;

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25
    move-result v3

    #@26
    .line 135
    add-int/lit8 v4, v1, 0x1

    #@28
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v4

    #@30
    .line 134
    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    return-object v2

    #@34
    .line 136
    :catch_0
    move-exception v0

    #@35
    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@38
    move-result-object v2

    #@39
    throw v2
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
    .line 66
    if-nez p1, :cond_0

    #@4
    .line 67
    return v2

    #@5
    .line 69
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 70
    return v1

    #@8
    .line 72
    :cond_1
    instance-of v3, p1, Landroid/util/Size;

    #@a
    if-eqz v3, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 73
    check-cast v0, Landroid/util/Size;

    #@f
    .line 74
    .local v0, "other":Landroid/util/Size;
    iget v3, p0, Landroid/util/Size;->mWidth:I

    #@11
    iget v4, v0, Landroid/util/Size;->mWidth:I

    #@13
    if-ne v3, v4, :cond_2

    #@15
    iget v3, p0, Landroid/util/Size;->mHeight:I

    #@17
    iget v4, v0, Landroid/util/Size;->mHeight:I

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_2
    move v1, v2

    #@1d
    goto :goto_0

    #@1e
    .line 76
    .end local v0    # "other":Landroid/util/Size;
    :cond_3
    return v2
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 49
    iget v0, p0, Landroid/util/Size;->mHeight:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 41
    iget v0, p0, Landroid/util/Size;->mWidth:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 147
    iget v0, p0, Landroid/util/Size;->mHeight:I

    #@2
    iget v1, p0, Landroid/util/Size;->mWidth:I

    #@4
    shl-int/lit8 v1, v1, 0x10

    #@6
    iget v2, p0, Landroid/util/Size;->mWidth:I

    #@8
    ushr-int/lit8 v2, v2, 0x10

    #@a
    or-int/2addr v1, v2

    #@b
    xor-int/2addr v0, v1

    #@c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Landroid/util/Size;->mWidth:I

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "x"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Landroid/util/Size;->mHeight:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
