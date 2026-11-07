.class public Landroid/icu/impl/ICULangDataTables;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.source "ICULangDataTables.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    const-string v0, "android/icu/impl/data/icudata/lang"

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 15
    invoke-super {p0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object p1

    return-object p1
.end method
