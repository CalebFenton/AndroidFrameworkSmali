.class public Landroid/icu/impl/ICULocaleService$LocaleKey;
.super Landroid/icu/impl/ICUService$Key;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleKey"
.end annotation


# static fields
.field public static final KIND_ANY:I = -0x1


# instance fields
.field private currentID:Ljava/lang/String;

.field private fallbackID:Ljava/lang/String;

.field private kind:I

.field private primaryID:Ljava/lang/String;

.field private varstart:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "primaryID"    # Ljava/lang/String;
    .param p2, "canonicalPrimaryID"    # Ljava/lang/String;
    .param p3, "canonicalFallbackID"    # Ljava/lang/String;
    .param p4, "kind"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 205
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    #@6
    .line 206
    iput p4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    #@8
    .line 208
    if-eqz p2, :cond_0

    #@a
    const-string/jumbo v0, "root"

    #@d
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 209
    :cond_0
    const-string/jumbo v0, ""

    #@16
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@18
    .line 210
    iput-object v7, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@1a
    .line 229
    :goto_0
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@1c
    const/4 v1, -0x1

    #@1d
    if-ne v0, v1, :cond_5

    #@1f
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@21
    :goto_1
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@23
    .line 204
    return-void

    #@24
    .line 212
    :cond_1
    const/16 v0, 0x40

    #@26
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@29
    move-result v6

    #@2a
    .line 213
    .local v6, "idx":I
    if-ne v6, v5, :cond_2

    #@2c
    const-string/jumbo v3, "root"

    #@2f
    const/4 v1, 0x1

    #@30
    move-object v0, p2

    #@31
    move v4, v2

    #@32
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 214
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@3e
    .line 215
    iput v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@40
    .line 216
    iput-object v7, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@42
    goto :goto_0

    #@43
    .line 218
    :cond_2
    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@45
    .line 219
    iput v6, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@47
    .line 221
    if-eqz p3, :cond_3

    #@49
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@4b
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 222
    :cond_3
    const-string/jumbo v0, ""

    #@54
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@56
    goto :goto_0

    #@57
    .line 224
    :cond_4
    iput-object p3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@59
    goto :goto_0

    #@5a
    .line 229
    .end local v6    # "idx":I
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@5c
    iget v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@5e
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    goto :goto_1
.end method

.method public static createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "canonicalFallbackID"    # Ljava/lang/String;
    .param p2, "kind"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    if-nez p0, :cond_0

    #@3
    .line 192
    return-object v1

    #@4
    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 195
    .local v0, "canonicalPrimaryID":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@a
    invoke-direct {v1, v0, v0, p1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@d
    return-object v1
.end method

.method public static createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .locals 1
    .param p0, "primaryID"    # Ljava/lang/String;
    .param p1, "canonicalFallbackID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .locals 2
    .param p0, "primaryID"    # Ljava/lang/String;
    .param p1, "canonicalFallbackID"    # Ljava/lang/String;
    .param p2, "kind"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 180
    if-nez p0, :cond_0

    #@3
    .line 181
    return-object v1

    #@4
    .line 183
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 184
    .local v0, "canonicalPrimaryID":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@a
    invoke-direct {v1, p0, v0, p1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@d
    return-object v1
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public canonicalLocale()Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    .line 285
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 265
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 266
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@7
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 268
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 269
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->prefix()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 271
    :cond_0
    const/16 v2, 0x2f

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 273
    iget v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@21
    if-eq v2, v3, :cond_1

    #@23
    .line 274
    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@25
    iget v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@27
    iget-object v4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 278
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1
.end method

.method public currentID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public currentLocale()Landroid/icu/util/ULocale;
    .locals 4

    #@0
    .prologue
    .line 292
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 293
    new-instance v0, Landroid/icu/util/ULocale;

    #@7
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@9
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@c
    return-object v0

    #@d
    .line 295
    :cond_0
    new-instance v0, Landroid/icu/util/ULocale;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    #@1c
    iget v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@2d
    return-object v0
.end method

.method public fallback()Z
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x5f

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 309
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@a
    move-result v0

    #@b
    .line 310
    .local v0, "x":I
    const/4 v1, -0x1

    #@c
    if-eq v0, v1, :cond_2

    #@e
    .line 311
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@10
    if-ltz v0, :cond_1

    #@12
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v1

    #@18
    if-eq v1, v5, :cond_0

    #@1a
    .line 313
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@1c
    add-int/lit8 v2, v0, 0x1

    #@1e
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@24
    .line 314
    return v4

    #@25
    .line 316
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 317
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@2b
    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@2d
    .line 318
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@2f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_3

    #@35
    .line 319
    iput-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@37
    .line 323
    :goto_0
    return v4

    #@38
    .line 321
    :cond_3
    const-string/jumbo v1, ""

    #@3b
    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    #@3d
    goto :goto_0

    #@3e
    .line 325
    :cond_4
    iput-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    #@40
    .line 326
    return v3
.end method

.method public isFallbackOf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public kind()I
    .locals 1

    #@0
    .prologue
    .line 243
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    #@2
    return v0
.end method

.method public prefix()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 236
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    #@a
    move-result v0

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method
