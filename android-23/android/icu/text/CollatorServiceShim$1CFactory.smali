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
.field delegate:Landroid/icu/text/Collator$CollatorFactory;

.field final synthetic this$0:Landroid/icu/text/CollatorServiceShim;


# direct methods
.method constructor <init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V
    .locals 1
    .param p1, "this$0"    # Landroid/icu/text/CollatorServiceShim;
    .param p2, "fctry"    # Landroid/icu/text/Collator$CollatorFactory;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->this$0:Landroid/icu/text/CollatorServiceShim;

    #@2
    .line 64
    invoke-virtual {p2}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    #@9
    .line 65
    iput-object p2, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    #@b
    .line 63
    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    .line 75
    .local v0, "objectLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    #@7
    invoke-virtual {v1, v0, p2}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 2
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "srvc"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 69
    iget-object v1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@5
    move-result-object v0

    #@6
    .line 70
    .local v0, "coll":Ljava/lang/Object;
    return-object v0
.end method
