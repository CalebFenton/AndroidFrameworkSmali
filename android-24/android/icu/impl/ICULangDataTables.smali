.class public Landroid/icu/impl/ICULangDataTables;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.source "ICULangDataTables.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 15
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/lang"

    #@3
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;-><init>(Ljava/lang/String;)V

    #@6
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
