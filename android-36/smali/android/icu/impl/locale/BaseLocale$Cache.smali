.class Landroid/icu/impl/locale/BaseLocale$Cache;
.super Landroid/icu/impl/locale/LocaleObjectCache;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/locale/LocaleObjectCache<",
        "Landroid/icu/impl/locale/BaseLocale$Key;",
        "Landroid/icu/impl/locale/BaseLocale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Landroid/icu/impl/locale/LocaleObjectCache;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method protected greylist-max-o createObject(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale;
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/locale/BaseLocale$Key;

    .line 267
    new-instance v0, Landroid/icu/impl/locale/BaseLocale;

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->-$$Nest$fget_lang(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->-$$Nest$fget_scrt(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->-$$Nest$fget_regn(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->-$$Nest$fget_vart(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/BaseLocale-IA;)V

    return-object v0
.end method

.method protected bridge synthetic greylist-max-o createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 255
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Cache;->createObject(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o normalizeKey(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;
    .registers 3
    .param p1, "key"    # Landroid/icu/impl/locale/BaseLocale$Key;

    .line 262
    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->normalize(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic greylist-max-o normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 255
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Cache;->normalizeKey(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;

    move-result-object p1

    return-object p1
.end method
