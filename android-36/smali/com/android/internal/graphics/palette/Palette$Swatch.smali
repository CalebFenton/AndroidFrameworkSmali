.class public Lcom/android/internal/graphics/palette/Palette$Swatch;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Swatch"
.end annotation


# instance fields
.field private final blacklist mColor:Landroid/graphics/Color;

.field private final blacklist mPopulation:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "colorInt"    # I
    .param p2, "population"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    .line 137
    iput p2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 166
    return v0

    .line 168
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 172
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 173
    .local v2, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    iget v4, v2, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v3

    iget-object v4, v2, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 169
    .end local v2    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getInt()I
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    return v0
.end method

.method public blacklist getPopulation()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string v2, " [Population: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method
