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
.field public static final blacklist KIND_ANY:I = -0x1


# instance fields
.field private blacklist currentID:Ljava/lang/String;

.field private blacklist fallbackID:Ljava/lang/String;

.field private blacklist kind:I

.field private blacklist primaryID:Ljava/lang/String;

.field private blacklist varstart:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "primaryID"    # Ljava/lang/String;
    .param p2, "canonicalPrimaryID"    # Ljava/lang/String;
    .param p3, "canonicalFallbackID"    # Ljava/lang/String;
    .param p4, "kind"    # I

    .line 212
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    .line 213
    iput p4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p2, :cond_4c

    const-string v3, "root"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v5, p2

    goto :goto_4d

    .line 219
    :cond_15
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 220
    .local v3, "idx":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "root"

    move-object v5, p2

    .end local p2    # "canonicalPrimaryID":Ljava/lang/String;
    .local v5, "canonicalPrimaryID":Ljava/lang/String;
    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 221
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    .line 222
    iput v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    .line 223
    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_51

    .line 220
    .end local v5    # "canonicalPrimaryID":Ljava/lang/String;
    .restart local p2    # "canonicalPrimaryID":Ljava/lang/String;
    :cond_36
    move-object v5, p2

    .line 225
    .end local p2    # "canonicalPrimaryID":Ljava/lang/String;
    .restart local v5    # "canonicalPrimaryID":Ljava/lang/String;
    :cond_37
    iput-object v5, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    .line 226
    iput v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    .line 228
    if-eqz p3, :cond_49

    iget-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    goto :goto_49

    .line 231
    :cond_46
    iput-object p3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_51

    .line 229
    :cond_49
    :goto_49
    iput-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_51

    .line 215
    .end local v3    # "idx":I
    .end local v5    # "canonicalPrimaryID":Ljava/lang/String;
    .restart local p2    # "canonicalPrimaryID":Ljava/lang/String;
    :cond_4c
    move-object v5, p2

    .line 216
    .end local p2    # "canonicalPrimaryID":Ljava/lang/String;
    .restart local v5    # "canonicalPrimaryID":Ljava/lang/String;
    :goto_4d
    iput-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    .line 236
    :goto_51
    iget p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_59

    iget-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    goto :goto_61

    :cond_59
    iget-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_61
    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public static blacklist createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "canonicalFallbackID"    # Ljava/lang/String;
    .param p2, "kind"    # I

    .line 198
    if-nez p0, :cond_4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "canonicalPrimaryID":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    invoke-direct {v1, v0, v0, p1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static blacklist createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .registers 3
    .param p0, "primaryID"    # Ljava/lang/String;
    .param p1, "canonicalFallbackID"    # Ljava/lang/String;

    .line 180
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;
    .registers 5
    .param p0, "primaryID"    # Ljava/lang/String;
    .param p1, "canonicalFallbackID"    # Ljava/lang/String;
    .param p2, "kind"    # I

    .line 187
    if-nez p0, :cond_4

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_4
    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "canonicalPrimaryID":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public blacklist canonicalID()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist canonicalLocale()Landroid/icu/util/ULocale;
    .registers 3

    .line 295
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist currentDescriptor()Ljava/lang/String;
    .registers 6

    .line 275
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 279
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_17
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    if-eq v2, v3, :cond_34

    .line 284
    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    iget-object v4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_38
    return-object v0
.end method

.method public blacklist currentID()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist currentLocale()Landroid/icu/util/ULocale;
    .registers 5

    .line 302
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 303
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 305
    :cond_d
    new-instance v0, Landroid/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->varstart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist fallback()Z
    .registers 7

    .line 320
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 321
    .local v0, "x":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_24

    .line 322
    :goto_d
    add-int/2addr v0, v4

    if-ltz v0, :cond_19

    iget-object v5, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_19

    goto :goto_d

    .line 324
    :cond_19
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 325
    return v3

    .line 327
    :cond_24
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_3d

    .line 328
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_38

    .line 330
    iput-object v4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    goto :goto_3c

    .line 332
    :cond_38
    const-string v1, ""

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;

    .line 334
    :goto_3c
    return v3

    .line 336
    :cond_3d
    iput-object v4, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;

    .line 337
    return v2
.end method

.method public blacklist isFallbackOf(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist kind()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    return v0
.end method

.method public blacklist prefix()Ljava/lang/String;
    .registers 3

    .line 243
    iget v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method
