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
.method constructor blacklist <init>()V
    .registers 1

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .line 701
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    .line 702
    :catchall_b
    move-exception v0

    .line 703
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;

    invoke-direct {v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;-><init>()V

    return-object v1
.end method


# virtual methods
.method public abstract blacklist get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.end method
