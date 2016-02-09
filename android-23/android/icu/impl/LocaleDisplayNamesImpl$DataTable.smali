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


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    #@0
    .prologue
    .line 562
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "subTableName"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    return-object p3
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 558
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method
