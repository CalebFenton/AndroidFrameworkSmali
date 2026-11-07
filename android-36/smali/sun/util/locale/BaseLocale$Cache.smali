.class public Lsun/util/locale/BaseLocale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache<",
        "Lsun/util/locale/BaseLocale$Key;",
        "Lsun/util/locale/BaseLocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist CACHE:Lsun/util/locale/BaseLocale$Cache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCACHE()Lsun/util/locale/BaseLocale$Cache;
    .registers 1

    sget-object v0, Lsun/util/locale/BaseLocale$Cache;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 414
    new-instance v0, Lsun/util/locale/BaseLocale$Cache;

    invoke-direct {v0}, Lsun/util/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Lsun/util/locale/BaseLocale$Cache;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 416
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    .line 417
    return-void
.end method


# virtual methods
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

    .line 412
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;
    .registers 3
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    .line 428
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object p1

    .line 435
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-$$Nest$mgetBaseLocale(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 436
    .local v0, "baseLocale":Lsun/util/locale/BaseLocale;
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-$$Nest$msoftenReferenceIfNormalized(Lsun/util/locale/BaseLocale$Key;)V

    .line 437
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

    .line 412
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .registers 3
    .param p1, "key"    # Lsun/util/locale/BaseLocale$Key;

    .line 421
    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method
