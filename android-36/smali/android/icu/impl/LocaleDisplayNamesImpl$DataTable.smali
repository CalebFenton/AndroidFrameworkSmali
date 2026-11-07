.class public Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTable"
.end annotation


# instance fields
.field final blacklist nullIfNotFound:Z


# direct methods
.method constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "nullIfNotFound"    # Z

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-boolean p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->nullIfNotFound:Z

    .line 661
    return-void
.end method


# virtual methods
.method blacklist get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "subTableName"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .line 672
    iget-boolean v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->nullIfNotFound:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p3

    :goto_7
    return-object v0
.end method

.method blacklist getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 664
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v0
.end method
