.class Landroid/icu/text/BreakIteratorFactory$BFService;
.super Landroid/icu/impl/ICULocaleService;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIteratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BFService"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 83
    const-string v0, "BreakIterator"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;-><init>(Landroid/icu/text/BreakIteratorFactory$BFService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIteratorFactory$BFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    .line 93
    invoke-virtual {p0}, Landroid/icu/text/BreakIteratorFactory$BFService;->markDefault()V

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist validateFallbackLocale()Ljava/lang/String;
    .registers 2

    .line 106
    const-string v0, ""

    return-object v0
.end method
