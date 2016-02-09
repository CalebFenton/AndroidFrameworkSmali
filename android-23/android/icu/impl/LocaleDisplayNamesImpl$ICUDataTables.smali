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
.field private final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 607
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    #@3
    .line 608
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    #@5
    .line 607
    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 613
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;

    #@2
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@7
    return-object v0
.end method
