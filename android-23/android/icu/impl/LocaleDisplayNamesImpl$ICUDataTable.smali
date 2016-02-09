.class Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUDataTable"
.end annotation


# instance fields
.field private final bundle:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>()V

    #@3
    .line 575
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 574
    invoke-static {p1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@d
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    #@f
    .line 573
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "subTableName"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    #@0
    .prologue
    .line 583
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 579
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
