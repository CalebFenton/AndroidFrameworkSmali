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
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 75
    const-string/jumbo v0, "BreakIterator"

    #@3
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    #@6
    .line 82
    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;

    #@8
    invoke-direct {v0, p0}, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;-><init>(Landroid/icu/text/BreakIteratorFactory$BFService;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIteratorFactory$BFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@e
    .line 84
    invoke-virtual {p0}, Landroid/icu/text/BreakIteratorFactory$BFService;->markDefault()V

    #@11
    .line 74
    return-void
.end method


# virtual methods
.method public validateFallbackLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method
