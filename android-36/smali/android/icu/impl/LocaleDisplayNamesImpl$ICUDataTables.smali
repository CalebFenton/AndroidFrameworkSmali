.class abstract Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICUDataTables"
.end annotation


# instance fields
.field private final blacklist path:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 716
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    .line 717
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    .line 718
    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nullIfNotFound"    # Z

    .line 722
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;Z)V

    return-object v0
.end method
