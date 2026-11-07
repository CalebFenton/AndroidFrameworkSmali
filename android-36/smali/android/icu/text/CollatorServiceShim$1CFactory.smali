.class Landroid/icu/text/CollatorServiceShim$1CFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CollatorServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CFactory"
.end annotation


# instance fields
.field blacklist delegate:Landroid/icu/text/Collator$CollatorFactory;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V
    .registers 4
    .param p1, "this$0"    # Landroid/icu/text/CollatorServiceShim;
    .param p2, "fctry"    # Landroid/icu/text/Collator$CollatorFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p2}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 72
    iput-object p2, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 83
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "objectLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {v1, v0, p2}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getSupportedIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {v0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    .line 77
    iget-object v0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {v0, p1}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 78
    .local v0, "coll":Ljava/lang/Object;
    return-object v0
.end method
