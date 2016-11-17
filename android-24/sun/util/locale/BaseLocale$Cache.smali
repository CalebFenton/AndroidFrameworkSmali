.class Lsun/util/locale/BaseLocale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Lsun/util/locale/BaseLocale$Key;",
        "Lsun/util/locale/BaseLocale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 301
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;
    .locals 6
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    #@0
    .prologue
    .line 302
    new-instance v0, Lsun/util/locale/BaseLocale;

    #@2
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V

    #@16
    return-object v0
.end method

.method protected bridge synthetic normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 296
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .locals 1
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    #@0
    .prologue
    .line 297
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
