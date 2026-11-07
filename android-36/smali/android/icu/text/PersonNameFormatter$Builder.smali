.class public Landroid/icu/text/PersonNameFormatter$Builder;
.super Ljava/lang/Object;
.source "PersonNameFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonNameFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

.field private blacklist formality:Landroid/icu/text/PersonNameFormatter$Formality;

.field private blacklist length:Landroid/icu/text/PersonNameFormatter$Length;

.field private blacklist locale:Ljava/util/Locale;

.field private blacklist surnameAllCaps:Z

.field private blacklist usage:Landroid/icu/text/PersonNameFormatter$Usage;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter$Builder;->locale:Ljava/util/Locale;

    .line 270
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Length;->DEFAULT:Landroid/icu/text/PersonNameFormatter$Length;

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter$Builder;->length:Landroid/icu/text/PersonNameFormatter$Length;

    .line 271
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->REFERRING:Landroid/icu/text/PersonNameFormatter$Usage;

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter$Builder;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 272
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->DEFAULT:Landroid/icu/text/PersonNameFormatter$Formality;

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter$Builder;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 273
    sget-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->DEFAULT:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    iput-object v0, p0, Landroid/icu/text/PersonNameFormatter$Builder;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/PersonNameFormatter$Builder;->surnameAllCaps:Z

    .line 267
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/PersonNameFormatter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/PersonNameFormatter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/icu/text/PersonNameFormatter;
    .registers 9

    .line 263
    new-instance v0, Landroid/icu/text/PersonNameFormatter;

    iget-object v1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/icu/text/PersonNameFormatter$Builder;->length:Landroid/icu/text/PersonNameFormatter$Length;

    iget-object v3, p0, Landroid/icu/text/PersonNameFormatter$Builder;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    iget-object v4, p0, Landroid/icu/text/PersonNameFormatter$Builder;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    iget-object v5, p0, Landroid/icu/text/PersonNameFormatter$Builder;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    iget-boolean v6, p0, Landroid/icu/text/PersonNameFormatter$Builder;->surnameAllCaps:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/PersonNameFormatter;-><init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;ZLandroid/icu/text/PersonNameFormatter-IA;)V

    return-object v0
.end method

.method public blacklist setDisplayOrder(Landroid/icu/text/PersonNameFormatter$DisplayOrder;)Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2
    .param p1, "order"    # Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 240
    iput-object p1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 241
    return-object p0
.end method

.method public blacklist setFormality(Landroid/icu/text/PersonNameFormatter$Formality;)Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2
    .param p1, "formality"    # Landroid/icu/text/PersonNameFormatter$Formality;

    .line 227
    iput-object p1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 228
    return-object p0
.end method

.method public blacklist setLength(Landroid/icu/text/PersonNameFormatter$Length;)Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2
    .param p1, "length"    # Landroid/icu/text/PersonNameFormatter$Length;

    .line 207
    iput-object p1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->length:Landroid/icu/text/PersonNameFormatter$Length;

    .line 208
    return-object p0
.end method

.method public blacklist setLocale(Ljava/util/Locale;)Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 195
    if-eqz p1, :cond_4

    .line 196
    iput-object p1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->locale:Ljava/util/Locale;

    .line 198
    :cond_4
    return-object p0
.end method

.method public blacklist setSurnameAllCaps(Z)Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2
    .param p1, "allCaps"    # Z

    .line 251
    iput-boolean p1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->surnameAllCaps:Z

    .line 252
    return-object p0
.end method

.method public blacklist setUsage(Landroid/icu/text/PersonNameFormatter$Usage;)Landroid/icu/text/PersonNameFormatter$Builder;
    .registers 2
    .param p1, "usage"    # Landroid/icu/text/PersonNameFormatter$Usage;

    .line 217
    iput-object p1, p0, Landroid/icu/text/PersonNameFormatter$Builder;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 218
    return-object p0
.end method
