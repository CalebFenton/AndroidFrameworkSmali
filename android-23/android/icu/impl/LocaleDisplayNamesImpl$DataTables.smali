.class abstract Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DataTables"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 592
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-object v2

    #@b
    .line 593
    :catch_0
    move-exception v1

    #@c
    .line 594
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@e
    invoke-direct {v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>()V

    #@11
    .line 595
    .local v0, "NO_OP":Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    new-instance v2, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;

    #@13
    invoke-direct {v2, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;)V

    #@16
    return-object v2
.end method


# virtual methods
.method public abstract get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.end method
