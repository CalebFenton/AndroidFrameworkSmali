.class public Landroid/icu/text/PersonNameFormatter;
.super Ljava/lang/Object;
.source "PersonNameFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PersonNameFormatter$Builder;,
        Landroid/icu/text/PersonNameFormatter$Length;,
        Landroid/icu/text/PersonNameFormatter$Usage;,
        Landroid/icu/text/PersonNameFormatter$Formality;,
        Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    }
.end annotation


# instance fields
.field private final blacklist impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;Z)V
    .registers 14
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "length"    # Landroid/icu/text/PersonNameFormatter$Length;
    .param p3, "usage"    # Landroid/icu/text/PersonNameFormatter$Usage;
    .param p4, "formality"    # Landroid/icu/text/PersonNameFormatter$Formality;
    .param p5, "displayOrder"    # Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .param p6, "surnameAllCaps"    # Z

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Landroid/icu/impl/personname/PersonNameFormatterImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "locale":Ljava/util/Locale;
    .end local p2    # "length":Landroid/icu/text/PersonNameFormatter$Length;
    .end local p3    # "usage":Landroid/icu/text/PersonNameFormatter$Usage;
    .end local p4    # "formality":Landroid/icu/text/PersonNameFormatter$Formality;
    .end local p5    # "displayOrder":Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .end local p6    # "surnameAllCaps":Z
    .local v1, "locale":Ljava/util/Locale;
    .local v2, "length":Landroid/icu/text/PersonNameFormatter$Length;
    .local v3, "usage":Landroid/icu/text/PersonNameFormatter$Usage;
    .local v4, "formality":Landroid/icu/text/PersonNameFormatter$Formality;
    .local v5, "displayOrder":Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .local v6, "surnameAllCaps":Z
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/personname/PersonNameFormatterImpl;-><init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;Z)V

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    .line 319
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;ZLandroid/icu/text/PersonNameFormatter-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/icu/text/PersonNameFormatter;-><init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "gnFirstPatterns"    # [Ljava/lang/String;
    .param p3, "snFirstPatterns"    # [Ljava/lang/String;
    .param p4, "gnFirstLocales"    # [Ljava/lang/String;
    .param p5, "snFirstLocales"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Landroid/icu/impl/personname/PersonNameFormatterImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "locale":Ljava/util/Locale;
    .end local p2    # "gnFirstPatterns":[Ljava/lang/String;
    .end local p3    # "snFirstPatterns":[Ljava/lang/String;
    .end local p4    # "gnFirstLocales":[Ljava/lang/String;
    .end local p5    # "snFirstLocales":[Ljava/lang/String;
    .local v1, "locale":Ljava/util/Locale;
    .local v2, "gnFirstPatterns":[Ljava/lang/String;
    .local v3, "snFirstPatterns":[Ljava/lang/String;
    .local v4, "gnFirstLocales":[Ljava/lang/String;
    .local v5, "snFirstLocales":[Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/personname/PersonNameFormatterImpl;-><init>(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    .line 328
    return-void
.end method

.method public static blacklist builder()Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2

    .line 285
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;-><init>(Landroid/icu/text/PersonNameFormatter-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist formatToString(Landroid/icu/text/PersonName;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 312
    iget-object v0, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formatToString(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toBuilder()Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 3

    .line 294
    invoke-static {}, Landroid/icu/text/PersonNameFormatter;->builder()Landroid/icu/text/PersonNameFormatter$Builder;

    move-result-object v0

    .line 295
    .local v0, "builder":Landroid/icu/text/PersonNameFormatter$Builder;
    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;->setLocale(Ljava/util/Locale;)Landroid/icu/text/PersonNameFormatter$Builder;

    .line 296
    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getLength()Landroid/icu/text/PersonNameFormatter$Length;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;->setLength(Landroid/icu/text/PersonNameFormatter$Length;)Landroid/icu/text/PersonNameFormatter$Builder;

    .line 297
    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getUsage()Landroid/icu/text/PersonNameFormatter$Usage;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;->setUsage(Landroid/icu/text/PersonNameFormatter$Usage;)Landroid/icu/text/PersonNameFormatter$Builder;

    .line 298
    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getFormality()Landroid/icu/text/PersonNameFormatter$Formality;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;->setFormality(Landroid/icu/text/PersonNameFormatter$Formality;)Landroid/icu/text/PersonNameFormatter$Builder;

    .line 299
    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getDisplayOrder()Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;->setDisplayOrder(Landroid/icu/text/PersonNameFormatter$DisplayOrder;)Landroid/icu/text/PersonNameFormatter$Builder;

    .line 300
    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getSurnameAllCaps()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PersonNameFormatter$Builder;->setSurnameAllCaps(Z)Landroid/icu/text/PersonNameFormatter$Builder;

    .line 301
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    iget-object v0, p0, Landroid/icu/text/PersonNameFormatter;->impl:Landroid/icu/impl/personname/PersonNameFormatterImpl;

    invoke-virtual {v0}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
