.class public final Landroid/icu/util/LocaleMatcher$Result;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final blacklist desiredIndex:I

.field private final blacklist desiredLocale:Ljava/util/Locale;

.field private final blacklist desiredULocale:Landroid/icu/util/ULocale;

.field private final blacklist supportedIndex:I

.field private final blacklist supportedLocale:Ljava/util/Locale;

.field private final blacklist supportedULocale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;II)V
    .registers 7
    .param p1, "udesired"    # Landroid/icu/util/ULocale;
    .param p2, "usupported"    # Landroid/icu/util/ULocale;
    .param p3, "desired"    # Ljava/util/Locale;
    .param p4, "supported"    # Ljava/util/Locale;
    .param p5, "desIndex"    # I
    .param p6, "suppIndex"    # I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredULocale:Landroid/icu/util/ULocale;

    .line 191
    iput-object p2, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedULocale:Landroid/icu/util/ULocale;

    .line 192
    iput-object p3, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    .line 193
    iput-object p4, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedLocale:Ljava/util/Locale;

    .line 194
    iput p5, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredIndex:I

    .line 195
    iput p6, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedIndex:I

    .line 196
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILandroid/icu/util/LocaleMatcher-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/icu/util/LocaleMatcher$Result;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;II)V

    return-void
.end method


# virtual methods
.method public blacklist getDesiredIndex()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredIndex:I

    return v0
.end method

.method public blacklist getDesiredLocale()Ljava/util/Locale;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredULocale:Landroid/icu/util/ULocale;

    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredULocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_11

    :cond_f
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    .line 215
    :goto_11
    return-object v0
.end method

.method public blacklist getDesiredULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredULocale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_11

    :cond_f
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->desiredULocale:Landroid/icu/util/ULocale;

    .line 205
    :goto_11
    return-object v0
.end method

.method public blacklist getSupportedIndex()I
    .registers 2

    .line 255
    iget v0, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedIndex:I

    return v0
.end method

.method public blacklist getSupportedLocale()Ljava/util/Locale;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getSupportedULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedULocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public blacklist makeResolvedLocale()Ljava/util/Locale;
    .registers 3

    .line 313
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$Result;->makeResolvedULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 314
    .local v0, "resolved":Landroid/icu/util/ULocale;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public blacklist makeResolvedULocale()Landroid/icu/util/ULocale;
    .registers 8

    .line 269
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$Result;->getDesiredULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 270
    .local v0, "bestDesired":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedULocale:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_5d

    if-eqz v0, :cond_5d

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedULocale:Landroid/icu/util/ULocale;

    .line 271
    invoke-virtual {v1, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_5d

    .line 274
    :cond_13
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedULocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    move-result-object v1

    .line 277
    .local v1, "b":Landroid/icu/util/ULocale$Builder;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "region":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 279
    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 285
    :cond_2b
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "variants":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    .line 287
    invoke-virtual {v1, v3}, Landroid/icu/util/ULocale$Builder;->setVariant(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 294
    :cond_38
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 295
    .local v5, "extensionKey":C
    invoke-virtual {v0, v5}, Landroid/icu/util/ULocale;->getExtension(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 296
    .end local v5    # "extensionKey":C
    goto :goto_40

    .line 297
    :cond_58
    invoke-virtual {v1}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v4

    return-object v4

    .line 272
    .end local v1    # "b":Landroid/icu/util/ULocale$Builder;
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "variants":Ljava/lang/String;
    :cond_5d
    :goto_5d
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Result;->supportedULocale:Landroid/icu/util/ULocale;

    return-object v1
.end method
